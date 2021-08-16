package com.sunk.demo.controller.wechat;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.constant.NumberConstants;
import com.sunk.demo.common.constant.WechatConsts;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.exception.AesException;
import com.sunk.demo.common.utils.security.Sha1Util;
import com.sunk.demo.model.wechat.message.response.TextResponseMessage;
import com.sunk.demo.model.wechat.param.CheckModel;
import com.sunk.demo.model.wechat.param.WechatXmlOper;
import com.sunk.demo.wechat.domain.WechatConfig;
import com.sunk.demo.wechat.service.IWechatConfigService;

/**
 * 公众号相关
 *
 * @author sunk
 * @date 2020/11/28
 */
@RestController
@RequestMapping("/api/wechat")
public class WechatServerController {

    @Autowired
    private IWechatConfigService wechatConfigService;

    /**
     * 开发者验证token校验
     *
     * @param tokenModel
     * @return
     */
    @Log(title = "微信验证token校验", businessType = BusinessType.INTERFACE)
    @RequestMapping(value = "/validate", method = RequestMethod.GET)
    public String validate(CheckModel tokenModel) {
        String signature = tokenModel.getSignature();
        List<WechatConfig> configList =  wechatConfigService.selectWechatConfigList(new WechatConfig());
        if (configList == null || configList.size() == NumberConstants.INT_0){
            return "error";
        }
        try {
            WechatConfig wechatConfig = configList.get(NumberConstants.INT_0);
            String sign = Sha1Util.getSha1(wechatConfig.getToken(), tokenModel.getTimestamp(), tokenModel.getNonce());
            if (sign.equalsIgnoreCase(signature)) {
                return tokenModel.getEchostr();
            }
            return "error";
        } catch (AesException e) {
            return e.getMessage();
        }
    }

    /**
     * 微信消息推送
     * @param request
     * @param response
     * @return
     */
    @Log(title = "微信消息推送", businessType = BusinessType.INTERFACE)
    @RequestMapping(value = "/validate", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    public @ResponseBody String mainMethod(HttpServletRequest request, HttpServletResponse response) {
        String respMessage = null;
        try {
            // xml请求解析
            Map<String, String> requestMap = WechatXmlOper.parseXml(request);
            // 发送方帐号（open_id）
            String fromUserName = requestMap.get(WechatConsts.FROM_USER_NAME);
            // 公众帐号
            String toUserName = requestMap.get(WechatConsts.TO_USER_NAME);
            // 消息类型
            String msgType = requestMap.get(WechatConsts.MSG_TYPE);

            TextResponseMessage textResponseMessage = new TextResponseMessage();
            textResponseMessage.setToUserName(fromUserName);
            textResponseMessage.setFromUserName(toUserName);
            textResponseMessage.setCreateTime(System.currentTimeMillis());
            textResponseMessage.setMsgType(WechatConsts.MESSAGE_TYPE_TEXT);

            if (msgType.equalsIgnoreCase(WechatConsts.MESSAGE_TYPE_TEXT)) {
                /* 文本消息 */
                textResponseMessage.setContent("你发了个啥东西？");
            } else if (msgType.equalsIgnoreCase(WechatConsts.MESSAGE_TYPE_EVENT)) {
                /* 事件推送 */
                // 事件类型，subscribe(订阅)、unsubscribe(取消订阅)
                String event = requestMap.get(WechatConsts.MESSAGE_TYPE_EVENT);
                if (event.equalsIgnoreCase(WechatConsts.EVENT_TYPE_SUBSCRIBE)){
                    /* 订阅 */
                    // 事件KEY值，qrscene_为前缀，后面为二维码的参数值
                    String eventKey = requestMap.get(WechatConsts.EVENT_KEY);
                    if (eventKey.startsWith("qrscene_")){
                        /* 扫描带参数二维码事件*/
                        /* 用户未关注时，进行关注后的事件推送 */
                        // 二维码的ticket，可用来换取二维码图片
                        String ticket = requestMap.get(WechatConsts.TICKET);
                    } else {
                        List<WechatConfig> configList =  wechatConfigService.selectWechatConfigList(new WechatConfig());
                        if (configList == null || configList.size() == NumberConstants.INT_0){
                            return "error";
                        }
                        WechatConfig wechatConfig = configList.get(NumberConstants.INT_0);
                        textResponseMessage.setContent(wechatConfig.getReplaycontent());
                    }
                } else if (event.equalsIgnoreCase(WechatConsts.EVENT_QRCODE_SCAN)){
                    /* 描带参数二维码事件 */
                    /* 用户已关注时的事件推送 */
                    // 事件KEY值，是一个32位无符号整数，即创建二维码时的二维码scene_id
                    String eventKey = requestMap.get(WechatConsts.EVENT_KEY);
                    // 二维码的ticket，可用来换取二维码图片
                    String ticket = requestMap.get(WechatConsts.TICKET);
                } else if (event.equalsIgnoreCase(WechatConsts.EVENT_LOCATION)){
                    /* 上报地理位置事件 */
                    // 地理位置纬度
                    String latitude = requestMap.get(WechatConsts.LATITUDE);
                    // 地理位置经度
                    String longitude = requestMap.get(WechatConsts.LONGITUDE);
                    // 地理位置精度
                    String precision = requestMap.get(WechatConsts.PRECISION);
                } else if (event.equalsIgnoreCase(WechatConsts.EVENT_TYPE_CLICK)){
                    /* 自定义菜单事件 */
                    String eventKey = requestMap.get(WechatConsts.EVENT_KEY);
                }
            }
            respMessage = WechatXmlOper.textMessageToXml(textResponseMessage);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return respMessage;
    }
}

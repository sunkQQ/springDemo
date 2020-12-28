package com.sunk.demo.api.wechat;

import com.alibaba.fastjson.JSONObject;
import com.sunk.demo.api.wechat.enums.WechatCodeEnum;
import com.sunk.demo.api.wechat.response.WechatMenuResponse;
import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.exception.BusinessException;
import com.sunk.demo.common.utils.http.HttpUtils;
import org.springframework.stereotype.Component;

/**
 * 公众号创建菜单
 *
 * @Author sunk
 * @Date 2020/12/28
 */
@Component
public class WechatMenuClientApiImpl implements WechatMenuClientApi {

    private final static String CREATE_MENU_URL = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=";

    @Override
    @Log(title = "创建微信订单接口", businessType = BusinessType.INTERFACE)
    public boolean createMenu(String appid, String secret, String menu) {
        String accessToken = WechatClientApi.getAccessToken(appid, secret);
        String url = CREATE_MENU_URL + accessToken;
        try {
            String result = HttpUtils.sendPost(url, menu);
            WechatMenuResponse response = JSONObject.parseObject(result, WechatMenuResponse.class);
            if (WechatCodeEnum.code_0.getCodeStr().equals(response.getErrcode())) {
                return true;
            } else {
                throw new BusinessException(response.getErrmsg() + ", "+ WechatCodeEnum.getMessange(Integer.valueOf(response.getErrcode())));
            }
        } catch (Exception e) {
            throw  new BusinessException(e.getMessage());
        }
    }
}

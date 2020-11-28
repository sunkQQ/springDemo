package com.sunk.demo.controller.wechat;

import com.sunk.demo.common.exception.AesException;
import com.sunk.demo.common.utils.redis.RedisUtil;
import com.sunk.demo.common.utils.security.SHA1Util;
import com.sunk.demo.model.param.wechat.CheckModel;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * 公众号相关
 *
 * @author sunk
 * @date 2020/11/28
 */
@RestController
@RequestMapping("/wechat")
public class WechatServerController {

    @Value(value = "wx.token")
    private String wxToken;

    @RequestMapping(value = "/api/validate", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
    public String validate(CheckModel tokenModel){
        String signature = tokenModel.getSignature();
        try {
            SHA1Util.getSHA1(wxToken, tokenModel.getTimestamp(), tokenModel.getNonce(), tokenModel.getEchostr());
        } catch (AesException e) {
            return e.getMessage();
        }
        return tokenModel.getEchostr();
    }
}

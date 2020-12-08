package com.sunk.demo.api.wechat;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.common.utils.http.HttpUtils;
import com.sunk.demo.common.utils.redis.RedisUtil;
import com.sunk.demo.model.wechat.param.AccessTokenModel;

/**
 * 微信公多号API
 *
 * @author sunk
 * @date 2020/12/8
 */
public class WechatClientApi {


    /** 获取基础access_token的接口地址（GET） 限200（次/天） */
    private final static String ACCESS_TOKEN_URL       = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=SECRET";


    /**
     * 获取基础access_token,次数有限，两小时有效
     * @param appid
     * @param secret
     * @return access_token
     */
    public static String getAccessToken(String appid, String secret) {
        String accessToken = RedisUtil.getStr(appid);
        if (StringUtils.isBlank(accessToken)){
            String requestUrl = ACCESS_TOKEN_URL.replace("APPID", appid).replace("SECRET", secret);
            String result = HttpUtils.sendGet(requestUrl, null);
            JSONObject jsonObject = JSONObject.parseObject(result);
            if (null != jsonObject && !jsonObject.containsKey("errcode")) {
                AccessTokenModel accessTokenModel = JSON.parseObject(jsonObject.toString(), AccessTokenModel.class);
                RedisUtil.set(appid, accessTokenModel.getAccess_token(), Integer.parseInt(accessTokenModel.getExpires_in()));
                accessToken = accessTokenModel.getAccess_token();
            }
        }
        return accessToken;
    }

}

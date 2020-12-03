package com.sunk.demo.model.param.wechat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 微信通用接口凭证
 *
 * @author sunk
 * @date 2020/12/3
 */
@Getter
@Setter
@ToString
public class AccessTokenModel {

    /**
     * 获取到的凭证
     */
    private String access_token;

    /**
     * 凭证有效时间，单位：秒
     */
    private String expires_in;
}

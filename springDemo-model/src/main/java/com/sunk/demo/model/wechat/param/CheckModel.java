package com.sunk.demo.model.wechat.param;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 微信签名校验
 *
 * @author sunk
 * @date 2020/11/28
 */
@Getter
@Setter
@ToString
public class CheckModel {

    /**
     * 微信加密签名
     */
    private String signature;

    /**
     * 时间戳
     */
    private String timestamp;

    /**
     * 随机数
     */
    private String nonce;

    /**
     * 随机字符串
     */
    private String echostr;
}

package com.sunk.demo.api.wechat.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 微信创建菜单返回
 *
 * @Author sunk
 * @Date 2020/12/28
 */
@Getter
@Setter
@ToString
public class WechatMenuResponse {

    /** 返回编码 */
    private String errcode;

    /** 返回结果 */
    private String errmsg;
}

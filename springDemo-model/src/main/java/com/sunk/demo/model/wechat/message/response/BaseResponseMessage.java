package com.sunk.demo.model.wechat.message.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 消息基类（公众帐号 -> 普通用户）
 *
 * @author sunk
 * @date 2020/12/2
 */
@Getter
@Setter
@ToString
public class BaseResponseMessage {

    /**
     * 接收方帐号（收到的OpenID）
     */
    private String ToUserName;

    /**
     * 开发者微信号
     */
    private String FromUserName;

    /**
     * 消息创建时间 （整型）
     */
    private long CreateTime;

    /**
     * 消息类型
     */
    private String MsgType;
}

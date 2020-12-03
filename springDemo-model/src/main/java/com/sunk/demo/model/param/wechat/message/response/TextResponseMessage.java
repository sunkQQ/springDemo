package com.sunk.demo.model.param.wechat.message.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 文本消息
 *
 * @author sunk
 * @date 2020/12/2
 */
@Getter
@Setter
@ToString
public class TextResponseMessage extends BaseResponseMessage {

    /**
     * 回复的消息内容（换行：在content中能够换行，微信客户端就支持换行显示）
     */
    private String Content;
}

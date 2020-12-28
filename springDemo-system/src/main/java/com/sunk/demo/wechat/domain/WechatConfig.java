package com.sunk.demo.wechat.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 公众号设置对象 wechat_config
 * 
 * @author sunk
 * @date 2020-12-03
 */
@Getter
@Setter
@ToString
@TableName(value = "wechat_config")
public class WechatConfig extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @TableField
    private Long id;

    /** 微信AppId */
    @Excel(name = "微信AppId")
    private String appId;

    /** 微信开发者密码 */
    private String appSecret;

    /** 公众号名称 */
    @Excel(name = "公众号名称")
    private String wxName;

    /** 公众号账号 */
    @Excel(name = "公众号账号")
    private String wxWechatCode;

    /** token */
    private String token;

    /** 状态 0、正常 1、停用 */
    @Excel(name = "状态 0、正常 1、停用")
    private Long status;

    /** 关注回复内容 */
    private String replaycontent;

    /** 菜单 */
    public String menus;

}

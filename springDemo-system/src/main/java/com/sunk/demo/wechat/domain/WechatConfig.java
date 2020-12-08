package com.sunk.demo.wechat.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;

/**
 * 公众号设置对象 wechat_config
 * 
 * @author sunk
 * @date 2020-12-03
 */
public class WechatConfig extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 主键 */
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

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getAppId() {
        return appId;
    }
    public void setAppSecret(String appSecret) {
        this.appSecret = appSecret;
    }

    public String getAppSecret() {
        return appSecret;
    }
    public void setWxName(String wxName) {
        this.wxName = wxName;
    }

    public String getWxName() {
        return wxName;
    }
    public void setWxWechatCode(String wxWechatCode) {
        this.wxWechatCode = wxWechatCode;
    }

    public String getWxWechatCode() {
        return wxWechatCode;
    }
    public void setToken(String token) {
        this.token = token;
    }

    public String getToken() {
        return token;
    }
    public void setStatus(Long status) {
        this.status = status;
    }

    public Long getStatus() {
        return status;
    }
    public void setReplaycontent(String replaycontent) {
        this.replaycontent = replaycontent;
    }

    public String getReplaycontent() {
        return replaycontent;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("appId", getAppId())
            .append("appSecret", getAppSecret())
            .append("wxName", getWxName())
            .append("wxWechatCode", getWxWechatCode())
            .append("token", getToken())
            .append("status", getStatus())
            .append("replaycontent", getReplaycontent())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}

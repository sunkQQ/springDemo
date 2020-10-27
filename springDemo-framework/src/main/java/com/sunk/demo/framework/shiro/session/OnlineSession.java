package com.sunk.demo.framework.shiro.session;

import org.apache.shiro.session.mgt.SimpleSession;

import com.sunk.demo.common.enums.OnlineStatus;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 在线用户会话属性
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Getter
@Setter
@ToString
public class OnlineSession extends SimpleSession {

	private static final long serialVersionUID = 1L;

	/** 用户ID */
	private Long userId;

	/** 用户名称 */
	private String loginName;

	/** 部门名称 */
	private String deptName;

	/** 用户头像 */
	private String avatar;

	/** 登录IP地址 */
	private String host;

	/** 浏览器类型 */
	private String browser;

	/** 操作系统 */
	private String os;

	/** 在线状态 */
	private OnlineStatus status = OnlineStatus.on_line;

	/** 属性是否改变 优化session数据同步 */
	private transient boolean attributeChanged = false;

	@Override
	public String getHost() {
		return host;
	}

	@Override
	public void setHost(String host) {
		this.host = host;
	}

	@Override
	public void setAttribute(Object key, Object value) {
		super.setAttribute(key, value);
	}

	@Override
	public Object removeAttribute(Object key) {
		return super.removeAttribute(key);
	}

	public void markAttributeChanged() {
		this.attributeChanged = true;
	}

	public void resetAttributeChanged() {
		this.attributeChanged = false;
	}

}

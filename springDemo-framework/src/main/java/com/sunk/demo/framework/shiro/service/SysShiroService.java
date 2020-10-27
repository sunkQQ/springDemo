package com.sunk.demo.framework.shiro.service;

import java.io.Serializable;

import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.framework.shiro.session.OnlineSession;
import com.sunk.demo.system.domain.SysUserOnline;
import com.sunk.demo.system.service.SysUserOnlineService;

/**
 * 会话db操作处理
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Component
public class SysShiroService {

	@Autowired
	private SysUserOnlineService onlineService;

	/**
	 * 删除会话
	 * 
	 * @param onlineSession 会话信息
	 */
	public void deleteSession(OnlineSession onlineSession) {
		onlineService.deleteOnlineById(String.valueOf(onlineSession.getId()));
	}

	/**
	 * 获取会话信息
	 * 
	 * @param sessionId
	 * @return
	 */
	public Session getSession(Serializable sessionId) {
		SysUserOnline userOnline = onlineService.selectOnlineById(String.valueOf(sessionId));
		return StringUtils.isNull(userOnline) ? null : createSession(userOnline);
	}

	public Session createSession(SysUserOnline userOnline) {
		OnlineSession onlineSession = new OnlineSession();
		if (StringUtils.isNotNull(userOnline)) {
			onlineSession.setId(userOnline.getSessionId());
			onlineSession.setHost(userOnline.getIpaddr());
			onlineSession.setBrowser(userOnline.getBrowser());
			onlineSession.setOs(userOnline.getOs());
			onlineSession.setDeptName(userOnline.getDeptName());
			onlineSession.setLoginName(userOnline.getLoginName());
			onlineSession.setStartTimestamp(userOnline.getStartTimestamp());
			onlineSession.setLastAccessTime(userOnline.getLastAccessTime());
			onlineSession.setTimeout(userOnline.getExpireTime());
		}
		return onlineSession;
	}
}

package com.sunk.demo.system.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.utils.DateUtils;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.system.domain.SysUserOnline;
import com.sunk.demo.system.mapper.SysUserOnlineMapper;
import com.sunk.demo.system.service.SysUserOnlineService;

/**
 * 在线用户 服务层处理
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Service
public class SysUserOnlineServiceImpl implements SysUserOnlineService {

	@Autowired
	private SysUserOnlineMapper sysUserOnlineMapper;

	/**
	 * 通过会话序号查询信息
	 * 
	 * @param sessionId 会话ID
	 * @return 在线用户信息
	 */
	@Override
	public SysUserOnline selectOnlineById(String sessionId) {
		return sysUserOnlineMapper.selectOnlineById(sessionId);
	}

	/**
	 * 通过会话序号删除信息
	 * 
	 * @param sessionId 会话ID
	 * @return 在线用户信息
	 */
	@Override
	public void deleteOnlineById(String sessionId) {
		SysUserOnline userOnline = selectOnlineById(sessionId);
		if (StringUtils.isNotNull(userOnline)) {
			sysUserOnlineMapper.deleteOnlineById(sessionId);
		}
	}

	/**
	 * 通过会话序号删除信息
	 * 
	 * @param sessions 会话ID集合
	 * @return 在线用户信息
	 */
	@Override
	public void batchDeleteOnline(List<String> sessions) {
		for (String sessionsId : sessions) {
			SysUserOnline userOnline = selectOnlineById(sessionsId);
			if (StringUtils.isNotNull(userOnline)) {
				sysUserOnlineMapper.deleteOnlineById(sessionsId);
			}
		}
	}

	/**
	 * 保存会话信息
	 * 
	 * @param online 会话信息
	 */
	@Override
	public void saveOnline(SysUserOnline online) {
		sysUserOnlineMapper.saveOnline(online);
	}

	/**
	 * 查询会话集合
	 * 
	 * @param userOnline 查询参数
	 * @return 会话集合
	 */
	@Override
	public List<SysUserOnline> selectUserOnlineList(SysUserOnline userOnline) {
		return sysUserOnlineMapper.selectUserOnlineList(userOnline);
	}

	/**
	 * 强退用户
	 * 
	 * @param sessionId 会话ID
	 */
	@Override
	public void forceLogout(String sessionId) {
		sysUserOnlineMapper.deleteOnlineById(sessionId);
	}

	/**
	 * 查询会话集合
	 * 
	 * @param expiredDate 有效期
	 * @return 会话集合
	 */
	@Override
	public List<SysUserOnline> selectOnlineByExpired(Date expiredDate) {
		String lastAccessTime = DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, expiredDate);
		return sysUserOnlineMapper.selectOnlineByExpired(lastAccessTime);
	}

}

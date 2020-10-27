package com.sunk.demo.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.system.domain.SysOperLog;
import com.sunk.demo.system.mapper.SysOperLogMapper;
import com.sunk.demo.system.service.SysOperLogService;

/**
 * 操作日志 服务层处理
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Service
public class SysOperLogServiceImpl implements SysOperLogService {

	@Autowired
	private SysOperLogMapper sysOperLogMapper;

	/**
	 * 新增操作日志
	 * 
	 * @param operLog 操作日志对象
	 */
	@Override
	public void insertOperlog(SysOperLog operLog) {
		sysOperLogMapper.insertOperlog(operLog);
	}

	/**
	 * 查询系统操作日志集合
	 * 
	 * @param operLog 操作日志对象
	 * @return 操作日志集合
	 */
	@Override
	public List<SysOperLog> selectOperLogList(SysOperLog operLog) {
		return sysOperLogMapper.selectOperLogList(operLog);
	}

	/**
	 * 批量删除系统操作日志
	 * 
	 * @param ids 需要删除的数据
	 * @return
	 */
	@Override
	public int deleteOperLogByIds(String ids) {
		return sysOperLogMapper.deleteOperLogByIds(Convert.toStrArray(ids));
	}

	/**
	 * 查询操作日志详细
	 * 
	 * @param operId 操作ID
	 * @return 操作日志对象
	 */
	@Override
	public SysOperLog selectOperLogById(Long operId) {
		return sysOperLogMapper.selectOperLogById(operId);
	}

	/**
	 * 清空操作日志
	 */
	@Override
	public void cleanOperLog() {
		sysOperLogMapper.cleanOperLog();
	}

}

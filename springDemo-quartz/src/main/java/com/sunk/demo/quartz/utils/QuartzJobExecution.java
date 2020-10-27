package com.sunk.demo.quartz.utils;

import org.quartz.JobExecutionContext;

import com.sunk.demo.quartz.domain.SysJob;

/**
 * 定时任务处理（允许并发执行）
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public class QuartzJobExecution extends AbstractQuartzJob {

	@Override
	protected void doExecute(JobExecutionContext context, SysJob sysJob) throws Exception {
		JobInvokeUtil.invokeMethod(sysJob);
	}

}

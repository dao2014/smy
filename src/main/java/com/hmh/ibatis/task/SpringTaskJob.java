package com.hmh.ibatis.task;

import org.quartz.JobExecutionContext;  
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

public class SpringTaskJob extends QuartzJobBean {
	@SuppressWarnings("unused")
	private int timeout;

	// 调度工厂实例化后，经过timeout时间开始执行调度
	public void setTimeout(int timeout) {
		this.timeout = timeout;
	}

	/**
	 * 要调度的具体任务
	 */
	@Override
	protected void executeInternal(JobExecutionContext context)
			throws JobExecutionException {
		System.out.println("定时任务执行中…");
	}

}

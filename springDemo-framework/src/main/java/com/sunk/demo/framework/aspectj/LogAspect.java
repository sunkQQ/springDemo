package com.sunk.demo.framework.aspectj;

import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.enums.BusinessStatus;
import com.sunk.demo.common.json.JSON;
import com.sunk.demo.common.utils.ServletUtils;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.framework.manager.AsyncManager;
import com.sunk.demo.framework.manager.factory.AsyncFactory;
import com.sunk.demo.framework.util.ShiroUtils;
import com.sunk.demo.system.domain.SysOperLog;
import com.sunk.demo.system.domain.SysUser;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;
import java.util.Map;

/**
 * 操作日志记录处理
 * 
 * @author sunk
 * @date 2020年10月26日
 */
@Aspect
@Component
public class LogAspect {

	private static final Logger log = LoggerFactory.getLogger(LogAspect.class);

	/** 配置织入点 */
	@Pointcut("@annotation(com.sunk.demo.common.annotation.Log)")
	public void logPointCut() {
	}

	/**
	 * 处理完请求后执行
	 *
	 * @param joinPoint 切点
	 */
	@AfterReturning(pointcut = "logPointCut()", returning = "jsonResult")
	public void doAfterReturning(JoinPoint joinPoint, Object jsonResult) {
		handleLog(joinPoint, null, jsonResult);
	}

	/**
	 * 拦截异常操作
	 * 
	 * @param joinPoint 切点
	 * @param e         异常
	 */
	@AfterThrowing(value = "logPointCut()", throwing = "e")
	public void doAfterThrowing(JoinPoint joinPoint, Exception e) {
		handleLog(joinPoint, e, null);
	}

	protected void handleLog(final JoinPoint joinPoint, final Exception e, Object jsonResult) {
		try {
			// 获得注解
			Log controllerLog = getAnnotationLog(joinPoint);
			if (controllerLog == null) {
				return;
			}

			// 获取当前的用户
			SysUser currentUser = ShiroUtils.getSysUser();

			// *========数据库日志=========*//
			SysOperLog operLog = new SysOperLog();
			operLog.setStatus(BusinessStatus.SUCCESS.ordinal());
			// 请求的地址
			String ip = ShiroUtils.getIp();
			operLog.setOperIp(ip);
			// 返回参数
			operLog.setJsonResult(JSON.marshal(jsonResult));

			operLog.setOperUrl(ServletUtils.getRequest().getRequestURI());
			if (currentUser != null) {
				operLog.setOperName(currentUser.getLoginName());
				if (StringUtils.isNotNull(currentUser.getDept())
						&& StringUtils.isNotEmpty(currentUser.getDept().getDeptName())) {
					operLog.setDeptName(currentUser.getDept().getDeptName());
				}
			}

			if (e != null) {
				operLog.setStatus(BusinessStatus.FAIL.ordinal());
				operLog.setErrorMsg(StringUtils.substring(e.getMessage(), 0, 2000));
			}
			// 设置方法名称
			String className = joinPoint.getTarget().getClass().getName();
			String methodName = joinPoint.getSignature().getName();
			operLog.setMethod(className + "." + methodName + "()");
			// 设置请求方式
			operLog.setRequestMethod(ServletUtils.getRequest().getMethod());
			// 处理设置注解上的参数
			getControllerMethodDescription(controllerLog, operLog);
			// 保存数据库
			AsyncManager.me().execute(AsyncFactory.recordOper(operLog));
		} catch (Exception exp) {
			// 记录本地异常日志
			log.error("==前置通知异常==");
			log.error("异常信息:{}", exp.getMessage());
			exp.printStackTrace();
		}
	}

	/**
	 * 获取注解中对方法的描述信息 用于Controller层注解
	 * 
	 * @param log     日志
	 * @param operLog 操作日志
	 * @throws Exception
	 */
	public void getControllerMethodDescription(Log log, SysOperLog operLog) throws Exception {
		// 设置action动作
		operLog.setBusinessType(log.businessType().ordinal());
		// 设置标题
		operLog.setTitle(log.title());
		// 设置操作人类别
		operLog.setOperatorType(log.operatorType().ordinal());
		// 是否需要保存request，参数和值
		if (log.isSaveRequestData()) {
			// 获取参数的信息，传入到数据库中。
			setRequestValue(operLog);
		}
	}

	/**
	 * 获取请求的参数，放到log中
	 * 
	 * @param operLog 操作日志
	 * @throws Exception 异常
	 */
	private void setRequestValue(SysOperLog operLog) throws Exception {
		Map<String, String[]> map = ServletUtils.getRequest().getParameterMap();
		String params = JSON.marshal(map);
		operLog.setOperParam(StringUtils.substring(params, 0, 2000));
	}

	/**
	 * 是否存在注解，如果存在就获取
	 */
	private Log getAnnotationLog(JoinPoint joinPoint) throws Exception {
		Signature signature = joinPoint.getSignature();
		MethodSignature methodSignature = (MethodSignature) signature;
		Method method = methodSignature.getMethod();

		if (method != null) {
			return method.getAnnotation(Log.class);
		}
		return null;
	}
}

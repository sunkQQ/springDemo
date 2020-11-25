package com.sunk.demo.aspectj;

import com.alibaba.fastjson.JSONObject;
import com.sunk.demo.common.utils.ServletUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


/**
 * 请求日志记录处理
 *
 * @author sunk
 * @date 2020/11/25
 */
@Aspect
@Component
public class LogAspect {

    private final static Logger LOGGER = LoggerFactory.getLogger(LogAspect.class);

    /**
     * 以controller包下定义所有请求为切入点
     */
    @Pointcut("execution(public * com.sunk.demo.controller..*.*(..))")
    public void webLog() {
    }

    /**
     * 在切入之前织入
     *
     * @throws Throwable
     */
    @Before("webLog()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
        // 开始打印请求日志
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        // 打印请求相关参数
        LOGGER.info("========================================== Start ==========================================");
        // 打印请求url
        LOGGER.info("URL              : {}", request.getRequestURL().toString());
        // 打印HTTP Method
        LOGGER.info("HTTP Method      : {}", request.getMethod());
        // 打印调用controller 的全路径以及执行方法
        LOGGER.info("Class Method     : {}.{}", joinPoint.getSignature().getDeclaringTypeName(), joinPoint.getSignature().getName());
        // 打印请求的IP
        LOGGER.info("IP               : {}", request.getRemoteAddr());
        // 打印请求入参
        Map<String, String[]> map = ServletUtils.getRequest().getParameterMap();
        String params = JSONObject.toJSONString(map);
        LOGGER.info("Request Args     : {}", params);
    }

    /**
     * 在切点之后织入
     *
     * @throws Throwable
     */
    @After("webLog()")
    public void doAfter() throws Throwable {
        LOGGER.info("========================================== End ==========================================");
        // 每个请求之前空一行
        LOGGER.info("");
    }

    public Object doAround(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        long startTime = System.currentTimeMillis();
        Object result = proceedingJoinPoint.proceed();
        // 打印出参
        LOGGER.info("Response Args    : {}", JSONObject.toJSONString(result));
        // 执行耗时
        LOGGER.info("Time-Consuming   : {}",System.currentTimeMillis() - startTime);
        return result;
    }

}

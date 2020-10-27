package com.sunk.demo.framework.datasource;

import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

import com.sunk.demo.common.config.datasource.DynamicDataSourceContextHolder;

/**
 * 动态数据源
 * 
 * @author sunk
 * @date 2020年10月16日
 */

public class DynamicDataSource extends AbstractRoutingDataSource {

	public DynamicDataSource(DataSource defaultTargetDataSource, Map<Object, Object> targetDataSources) {
		super.setDefaultTargetDataSource(defaultTargetDataSource);
		super.setTargetDataSources(targetDataSources);
		super.afterPropertiesSet();
	}

	@Override
	protected Object determineCurrentLookupKey() {
		return DynamicDataSourceContextHolder.getDataSourceType();
	}

}

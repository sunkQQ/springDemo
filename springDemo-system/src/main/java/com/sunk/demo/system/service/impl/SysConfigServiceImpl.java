package com.sunk.demo.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sunk.demo.common.constant.Constants;
import com.sunk.demo.common.constant.UserConstants;
import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.common.utils.CacheUtils;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.system.domain.SysConfig;
import com.sunk.demo.system.mapper.SysConfigMapper;
import com.sunk.demo.system.service.SysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.List;

/**
 * 参数配置 服务层实现
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Service
public class SysConfigServiceImpl extends ServiceImpl<SysConfigMapper, SysConfig> implements SysConfigService {

	@Autowired
	private SysConfigMapper sysConfigMapper;

	/**
	 * 项目启动时，初始化参数到缓存
	 */
	@PostConstruct
	public void init() {
		LambdaQueryWrapper<SysConfig> wrapper = new LambdaQueryWrapper<>();
		List<SysConfig> configsList = sysConfigMapper.selectList(wrapper);
		for (SysConfig config : configsList) {
			CacheUtils.put(getCacheName(), getCacheKey(config.getConfigKey()), config.getConfigValue());
		}
	}

	/**
	 * 查询参数配置信息
	 * 
	 * @param configId 参数配置ID
	 * @return 参数配置信息
	 */
	@Override
	public SysConfig selectConfigById(Long configId) {
		return sysConfigMapper.selectById(configId);
	}

	/**
	 * 根据键名查询参数配置信息
	 * 
	 * @param configKey 参数key
	 * @return 参数键值
	 */
	@Override
	public String selectConfigByKey(String configKey) {
		String configValue = Convert.toStr(CacheUtils.get(getCacheName(), getCacheKey(configKey)));
 		if (StringUtils.isNotEmpty(configValue)) {
			return configValue;
		}
		LambdaQueryWrapper<SysConfig> wrapper = new LambdaQueryWrapper<>();
		wrapper.eq(SysConfig::getConfigKey, configKey);
		SysConfig retConfig = sysConfigMapper.selectOne(wrapper);
		if (StringUtils.isNotNull(retConfig)) {
			CacheUtils.put(getCacheName(), getCacheKey(configKey), retConfig.getConfigValue());
			return retConfig.getConfigValue();
		}
		return StringUtils.EMPTY;
	}

	/**
	 * 查询参数配置列表
	 * 
	 * @param config 参数配置信息
	 * @return 参数配置集合
	 */
	@Override
	public List<SysConfig> selectConfigList(SysConfig config) {
		LambdaQueryWrapper<SysConfig> wrapper = new LambdaQueryWrapper<>();
		if(config != null){
			if(StringUtils.isNotEmpty(config.getConfigType())){
				wrapper.eq(SysConfig::getConfigType, config.getConfigType());
			}
			if(StringUtils.isNotEmpty(config.getConfigName())){
				wrapper.like(SysConfig::getConfigName, config.getConfigName());
			}
			if(StringUtils.isNotEmpty(config.getConfigKey())){
				wrapper.like(SysConfig::getConfigKey, config.getConfigKey());
			}

			if(StringUtils.isNotEmpty(config.getParams())){
				if(StringUtils.isNotEmpty(config.getParams().get(Constants.BEGIN_TIME))){
					wrapper.ge(SysConfig::getCreateTime, config.getParams().get(Constants.BEGIN_TIME));
				}
				if(StringUtils.isNotEmpty(config.getParams().get(Constants.END_TIME))){
					wrapper.le(SysConfig::getCreateTime, config.getParams().get(Constants.END_TIME));
				}
			}
		}
		return sysConfigMapper.selectList(wrapper);
	}

	/**
	 * 新增参数配置
	 * 
	 * @param config 参数配置信息
	 * @return 结果
	 */
	@Override
	public int insertConfig(SysConfig config) {
		int row = sysConfigMapper.insert(config);
		if (row > 0) {
			CacheUtils.put(getCacheName(), getCacheKey(config.getConfigKey()), config.getConfigValue());
		}
		return row;
	}

	/**
	 * 修改参数配置
	 * 
	 * @param config 参数配置信息
	 * @return 结果
	 */
	@Override
	public int updateConfig(SysConfig config) {
		int row = sysConfigMapper.updateById(config);
		if (row > 0) {
			CacheUtils.put(getCacheName(), getCacheKey(config.getConfigKey()), config.getConfigValue());
		}
		return row;
	}

	/**
	 * 批量删除参数配置对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteConfigByIds(String ids) {
		int count = sysConfigMapper.deleteBatchIds(Arrays.asList(ids));
		if (count > 0) {
			CacheUtils.removeAll(getCacheName());
		}
		return count;
	}

	/**
	 * 清空缓存数据
	 */
	@Override
	public void clearCache() {
		CacheUtils.removeAll(getCacheName());
	}

	/**
	 * 校验参数键名是否唯一
	 * 
	 * @param config 参数配置信息
	 * @return 结果
	 */
	@Override
	public String checkConfigKeyUnique(SysConfig config) {
		Long configId = StringUtils.isNull(config.getConfigId()) ? -1L : config.getConfigId();

		LambdaQueryWrapper<SysConfig> wrapper = new LambdaQueryWrapper<>();
		wrapper.eq(SysConfig::getConfigKey, config.getConfigKey());
		SysConfig info = sysConfigMapper.selectOne(wrapper);
		if (StringUtils.isNotNull(info) && info.getConfigId().longValue() != configId.longValue()) {
			return UserConstants.CONFIG_KEY_NOT_UNIQUE;
		}
		return UserConstants.CONFIG_KEY_UNIQUE;
	}

	/**
	 * 获取cache name
	 * 
	 * @return 缓存名
	 */
	private String getCacheName() {
		return Constants.SYS_CONFIG_CACHE;
	}

	/**
	 * 设置cache key
	 * 
	 * @param configKey 参数键
	 * @return 缓存键key
	 */
	private String getCacheKey(String configKey) {
		return Constants.SYS_CONFIG_KEY + configKey;
	}

}

package com.sunk.demo.wechat.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sunk.demo.api.wechat.WechatMenuClientApi;
import com.sunk.demo.common.enums.TableNameEnum;
import com.sunk.demo.common.exception.BusinessException;
import com.sunk.demo.common.utils.DateUtils;
import com.sunk.demo.common.utils.GenerateNoUtil;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.wechat.domain.WechatConfig;
import com.sunk.demo.wechat.mapper.WechatConfigMapper;
import com.sunk.demo.wechat.service.IWechatConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

/**
 * 公众号设置Service业务层处理
 * 
 * @author sunk
 * @date 2020-12-03
 */
@Service
public class WechatConfigServiceImpl extends ServiceImpl<WechatConfigMapper, WechatConfig> implements IWechatConfigService {

    @Autowired
    private WechatConfigMapper wechatConfigMapper;

    @Autowired
    private WechatMenuClientApi wechatMenuClientApi;

    /**
     * 查询公众号设置
     * 
     * @param id 公众号设置ID
     * @return 公众号设置
     */
    @Override
    public WechatConfig selectWechatConfigById(Long id) {
        return wechatConfigMapper.selectById(id);
    }

    /**
     * 查询公众号设置列表
     * 
     * @param wechatConfig 公众号设置
     * @return 公众号设置
     */
    @Override
    public List<WechatConfig> selectWechatConfigList(WechatConfig wechatConfig) {
        LambdaQueryWrapper<WechatConfig> wrapper = new LambdaQueryWrapper<>();
        if (wechatConfig != null){
            if (StringUtils.isNotEmpty(wechatConfig.getAppId())){
                wrapper.eq(WechatConfig::getAppId, wechatConfig.getAppId());
            }
            if (StringUtils.isNotEmpty(wechatConfig.getWxName())) {
                wrapper.like(WechatConfig::getWxName, wechatConfig.getWxName());
            }
            if (StringUtils.isNotEmpty(wechatConfig.getWxWechatCode())) {
                wrapper.eq(WechatConfig::getWxWechatCode, wechatConfig.getWxWechatCode());
            }
            if (wechatConfig.getStatus() != null) {
                wrapper.eq(WechatConfig::getStatus, wechatConfig.getStatus());
            }
        }
        return wechatConfigMapper.selectList(wrapper);
    }

    /**
     * 新增公众号设置
     * 
     * @param wechatConfig 公众号设置
     * @return 结果
     */
    @Override
    public int insertWechatConfig(WechatConfig wechatConfig) {
        wechatConfig.setId(GenerateNoUtil.getNextIDValue(TableNameEnum.WECHAT_CONFIG));
        wechatConfig.setCreateTime(DateUtils.getNowDate());
        return wechatConfigMapper.insert(wechatConfig);
    }

    /**
     * 修改公众号设置
     * 
     * @param wechatConfig 公众号设置
     * @return 结果
     */
    @Override
    public int updateWechatConfig(WechatConfig wechatConfig) {
        wechatConfig.setUpdateTime(DateUtils.getNowDate());
        return wechatConfigMapper.updateById(wechatConfig);
    }

    /**
     * 删除公众号设置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWechatConfigByIds(String ids) {
        return wechatConfigMapper.deleteBatchIds(Arrays.asList(ids.split(",")));
    }

    /**
     * 删除公众号设置信息
     * 
     * @param id 公众号设置ID
     * @return 结果
     */
    @Override
    public int deleteWechatConfigById(Long id) {
        return wechatConfigMapper.deleteById(id);
    }

    @Override
    public void createMenu(Long id) {
        WechatConfig wechatConfig = selectWechatConfigById(id);
        if (wechatConfig == null){
            throw new BusinessException("配置不存在");
        }
        JSONObject jsonObject = JSONObject.parseObject(wechatConfig.getMenus());
        wechatMenuClientApi.createMenu(wechatConfig.getAppId(), wechatConfig.getAppSecret(), jsonObject.getString("menu"));
    }
}

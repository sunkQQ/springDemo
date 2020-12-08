package com.sunk.demo.wechat.service.impl;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.common.enums.TableNameEnum;
import com.sunk.demo.common.utils.DateUtils;
import com.sunk.demo.common.utils.GenerateNoUtil;
import com.sunk.demo.wechat.domain.WechatConfig;
import com.sunk.demo.wechat.mapper.WechatConfigMapper;
import com.sunk.demo.wechat.service.IWechatConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 公众号设置Service业务层处理
 * 
 * @author sunk
 * @date 2020-12-03
 */
@Service
public class WechatConfigServiceImpl implements IWechatConfigService {
    @Autowired
    private WechatConfigMapper wechatConfigMapper;

    /**
     * 查询公众号设置
     * 
     * @param id 公众号设置ID
     * @return 公众号设置
     */
    @Override
    public WechatConfig selectWechatConfigById(Long id) {
        return wechatConfigMapper.selectWechatConfigById(id);
    }

    /**
     * 查询公众号设置列表
     * 
     * @param wechatConfig 公众号设置
     * @return 公众号设置
     */
    @Override
    public List<WechatConfig> selectWechatConfigList(WechatConfig wechatConfig) {
        return wechatConfigMapper.selectWechatConfigList(wechatConfig);
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
        return wechatConfigMapper.insertWechatConfig(wechatConfig);
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
        return wechatConfigMapper.updateWechatConfig(wechatConfig);
    }

    /**
     * 删除公众号设置对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWechatConfigByIds(String ids) {
        return wechatConfigMapper.deleteWechatConfigByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除公众号设置信息
     * 
     * @param id 公众号设置ID
     * @return 结果
     */
    @Override
    public int deleteWechatConfigById(Long id) {
        return wechatConfigMapper.deleteWechatConfigById(id);
    }
}

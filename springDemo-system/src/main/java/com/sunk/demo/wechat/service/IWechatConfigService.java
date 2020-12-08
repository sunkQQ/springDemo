package com.sunk.demo.wechat.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.sunk.demo.wechat.domain.WechatConfig;

import java.util.List;

/**
 * 公众号设置Service接口
 * 
 * @author sunk
 * @date 2020-12-03
 */
public interface IWechatConfigService extends IService<WechatConfig> {
    /**
     * 查询公众号设置
     * 
     * @param id 公众号设置ID
     * @return 公众号设置
     */
    public WechatConfig selectWechatConfigById(Long id);

    /**
     * 查询公众号设置列表
     * 
     * @param wechatConfig 公众号设置
     * @return 公众号设置集合
     */
    public List<WechatConfig> selectWechatConfigList(WechatConfig wechatConfig);

    /**
     * 新增公众号设置
     * 
     * @param wechatConfig 公众号设置
     * @return 结果
     */
    public int insertWechatConfig(WechatConfig wechatConfig);

    /**
     * 修改公众号设置
     * 
     * @param wechatConfig 公众号设置
     * @return 结果
     */
    public int updateWechatConfig(WechatConfig wechatConfig);

    /**
     * 批量删除公众号设置
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWechatConfigByIds(String ids);

    /**
     * 删除公众号设置信息
     * 
     * @param id 公众号设置ID
     * @return 结果
     */
    public int deleteWechatConfigById(Long id);
}

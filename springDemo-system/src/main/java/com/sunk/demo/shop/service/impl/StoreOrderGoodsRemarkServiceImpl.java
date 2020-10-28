package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreOrderGoodsRemark;
import com.sunk.demo.shop.mapper.StoreOrderGoodsRemarkMapper;
import com.sunk.demo.shop.service.StoreOrderGoodsRemarkService;

/**
 * 订单商品备注Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreOrderGoodsRemarkServiceImpl implements StoreOrderGoodsRemarkService {

	@Autowired
	private StoreOrderGoodsRemarkMapper storeOrderGoodsRemarkMapper;

	/**
	 * 查询订单商品备注
	 * 
	 * @param id 订单商品备注ID
	 * @return 订单商品备注
	 */
	@Override
	public StoreOrderGoodsRemark selectStoreOrderGoodsRemarkById(Integer id) {
		return storeOrderGoodsRemarkMapper.selectStoreOrderGoodsRemarkById(id);
	}

	/**
	 * 查询订单商品备注列表
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 订单商品备注
	 */
	@Override
	public List<StoreOrderGoodsRemark> selectStoreOrderGoodsRemarkList(StoreOrderGoodsRemark storeOrderGoodsRemark) {
		return storeOrderGoodsRemarkMapper.selectStoreOrderGoodsRemarkList(storeOrderGoodsRemark);
	}

	/**
	 * 新增订单商品备注
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 结果
	 */
	@Override
	public int insertStoreOrderGoodsRemark(StoreOrderGoodsRemark storeOrderGoodsRemark) {
		return storeOrderGoodsRemarkMapper.insertStoreOrderGoodsRemark(storeOrderGoodsRemark);
	}

	/**
	 * 修改订单商品备注
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 结果
	 */
	@Override
	public int updateStoreOrderGoodsRemark(StoreOrderGoodsRemark storeOrderGoodsRemark) {
		return storeOrderGoodsRemarkMapper.updateStoreOrderGoodsRemark(storeOrderGoodsRemark);
	}

	/**
	 * 删除订单商品备注对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreOrderGoodsRemarkByIds(String ids) {
		return storeOrderGoodsRemarkMapper.deleteStoreOrderGoodsRemarkByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除订单商品备注信息
	 * 
	 * @param id 订单商品备注ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsRemarkById(Integer id) {
		return storeOrderGoodsRemarkMapper.deleteStoreOrderGoodsRemarkById(id);
	}

}

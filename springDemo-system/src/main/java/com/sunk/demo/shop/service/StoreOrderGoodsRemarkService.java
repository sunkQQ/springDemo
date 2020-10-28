package com.sunk.demo.shop.service;

import java.util.List;

import com.sunk.demo.shop.domain.StoreOrderGoodsRemark;

/**
 * 订单商品备注Service接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreOrderGoodsRemarkService {
	/**
	 * 查询订单商品备注
	 * 
	 * @param id 订单商品备注ID
	 * @return 订单商品备注
	 */
	public StoreOrderGoodsRemark selectStoreOrderGoodsRemarkById(Integer id);

	/**
	 * 查询订单商品备注列表
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 订单商品备注集合
	 */
	public List<StoreOrderGoodsRemark> selectStoreOrderGoodsRemarkList(StoreOrderGoodsRemark storeOrderGoodsRemark);

	/**
	 * 新增订单商品备注
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 结果
	 */
	public int insertStoreOrderGoodsRemark(StoreOrderGoodsRemark storeOrderGoodsRemark);

	/**
	 * 修改订单商品备注
	 * 
	 * @param storeOrderGoodsRemark 订单商品备注
	 * @return 结果
	 */
	public int updateStoreOrderGoodsRemark(StoreOrderGoodsRemark storeOrderGoodsRemark);

	/**
	 * 批量删除订单商品备注
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsRemarkByIds(String ids);

	/**
	 * 删除订单商品备注信息
	 * 
	 * @param id 订单商品备注ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsRemarkById(Integer id);
}

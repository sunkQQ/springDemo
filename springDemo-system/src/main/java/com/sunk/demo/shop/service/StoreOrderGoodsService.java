package com.sunk.demo.shop.service;

import java.util.List;

import com.sunk.demo.shop.domain.StoreOrderGoods;

/**
 * 订单商品与订单主关联Service接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreOrderGoodsService {

	/**
	 * 查询订单商品与订单主关联
	 * 
	 * @param recId 订单商品与订单主关联ID
	 * @return 订单商品与订单主关联
	 */
	public StoreOrderGoods selectStoreOrderGoodsById(Integer recId);

	/**
	 * 查询订单商品与订单主关联列表
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 订单商品与订单主关联集合
	 */
	public List<StoreOrderGoods> selectStoreOrderGoodsList(StoreOrderGoods storeOrderGoods);

	/**
	 * 新增订单商品与订单主关联
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 结果
	 */
	public int insertStoreOrderGoods(StoreOrderGoods storeOrderGoods);

	/**
	 * 修改订单商品与订单主关联
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 结果
	 */
	public int updateStoreOrderGoods(StoreOrderGoods storeOrderGoods);

	/**
	 * 批量删除订单商品与订单主关联
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsByIds(String ids);

	/**
	 * 删除订单商品与订单主关联信息
	 * 
	 * @param recId 订单商品与订单主关联ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsById(Integer recId);
}

package com.sunk.demo.shop.service;

import java.util.List;

import com.sunk.demo.shop.domain.StoreOrder;

/**
 * 订单主Service接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreOrderService {

	/**
	 * 查询订单主
	 * 
	 * @param orderId 订单主ID
	 * @return 订单主
	 */
	public StoreOrder selectStoreOrderById(Integer orderId);

	/**
	 * 查询订单主列表
	 * 
	 * @param storeOrder 订单主
	 * @return 订单主集合
	 */
	public List<StoreOrder> selectStoreOrderList(StoreOrder storeOrder);

	/**
	 * 新增订单主
	 * 
	 * @param storeOrder 订单主
	 * @return 结果
	 */
	public int insertStoreOrder(StoreOrder storeOrder);

	/**
	 * 修改订单主
	 * 
	 * @param storeOrder 订单主
	 * @return 结果
	 */
	public int updateStoreOrder(StoreOrder storeOrder);

	/**
	 * 批量删除订单主
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreOrderByIds(String ids);

	/**
	 * 删除订单主信息
	 * 
	 * @param orderId 订单主ID
	 * @return 结果
	 */
	public int deleteStoreOrderById(Integer orderId);
}

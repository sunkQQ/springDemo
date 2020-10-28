package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreOrder;
import com.sunk.demo.shop.domain.StoreOrderGoods;
import com.sunk.demo.shop.mapper.StoreOrderMapper;
import com.sunk.demo.shop.service.StoreOrderGoodsService;
import com.sunk.demo.shop.service.StoreOrderService;

/**
 * 订单主Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreOrderServiceImpl implements StoreOrderService {

	@Autowired
	private StoreOrderMapper storeOrderMapper;

	@Autowired
	private StoreOrderGoodsService storeOrderGoodsService;

	/**
	 * 查询订单主
	 * 
	 * @param orderId 订单主ID
	 * @return 订单主
	 */
	@Override
	public StoreOrder selectStoreOrderById(Integer orderId) {
		return storeOrderMapper.selectStoreOrderById(orderId);
	}

	/**
	 * 查询订单主列表
	 * 
	 * @param storeOrder 订单主
	 * @return 订单主
	 */
	@Override
	public List<StoreOrder> selectStoreOrderList(StoreOrder storeOrder) {
		List<StoreOrder> list = storeOrderMapper.selectStoreOrderList(storeOrder);
		StoreOrderGoods orderGoods = new StoreOrderGoods();
		for (StoreOrder order : list) {
			orderGoods.setOrderId(order.getOrderId());
			List<StoreOrderGoods> orderGoodsList = storeOrderGoodsService.selectStoreOrderGoodsList(orderGoods);
			order.setStoreOrderGoods(orderGoodsList);
		}
		return list;
	}

	/**
	 * 新增订单主
	 * 
	 * @param storeOrder 订单主
	 * @return 结果
	 */
	@Override
	public int insertStoreOrder(StoreOrder storeOrder) {
		return storeOrderMapper.insertStoreOrder(storeOrder);
	}

	/**
	 * 修改订单主
	 * 
	 * @param storeOrder 订单主
	 * @return 结果
	 */
	@Override
	public int updateStoreOrder(StoreOrder storeOrder) {
		return storeOrderMapper.updateStoreOrder(storeOrder);
	}

	/**
	 * 删除订单主对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreOrderByIds(String ids) {
		return storeOrderMapper.deleteStoreOrderByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除订单主信息
	 * 
	 * @param orderId 订单主ID
	 * @return 结果
	 */
	public int deleteStoreOrderById(Integer orderId) {
		return storeOrderMapper.deleteStoreOrderById(orderId);
	}

}

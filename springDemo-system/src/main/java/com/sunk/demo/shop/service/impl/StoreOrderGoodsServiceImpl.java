package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreOrderGoods;
import com.sunk.demo.shop.mapper.StoreOrderGoodsMapper;
import com.sunk.demo.shop.service.StoreOrderGoodsService;

/**
 * 订单商品与订单主关联Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreOrderGoodsServiceImpl implements StoreOrderGoodsService {

	@Autowired
	private StoreOrderGoodsMapper storeOrderGoodsMapper;

	/**
	 * 查询订单商品与订单主关联
	 * 
	 * @param recId 订单商品与订单主关联ID
	 * @return 订单商品与订单主关联
	 */
	@Override
	public StoreOrderGoods selectStoreOrderGoodsById(Integer recId) {
		return storeOrderGoodsMapper.selectStoreOrderGoodsById(recId);
	}

	/**
	 * 查询订单商品与订单主关联列表
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 订单商品与订单主关联
	 */
	@Override
	public List<StoreOrderGoods> selectStoreOrderGoodsList(StoreOrderGoods storeOrderGoods) {
		return storeOrderGoodsMapper.selectStoreOrderGoodsList(storeOrderGoods);
	}

	/**
	 * 新增订单商品与订单主关联
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 结果
	 */
	@Override
	public int insertStoreOrderGoods(StoreOrderGoods storeOrderGoods) {
		return storeOrderGoodsMapper.insertStoreOrderGoods(storeOrderGoods);
	}

	/**
	 * 修改订单商品与订单主关联
	 * 
	 * @param storeOrderGoods 订单商品与订单主关联
	 * @return 结果
	 */
	@Override
	public int updateStoreOrderGoods(StoreOrderGoods storeOrderGoods) {
		return storeOrderGoodsMapper.updateStoreOrderGoods(storeOrderGoods);
	}

	/**
	 * 删除订单商品与订单主关联对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreOrderGoodsByIds(String ids) {
		return storeOrderGoodsMapper.deleteStoreOrderGoodsByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除订单商品与订单主关联信息
	 * 
	 * @param recId 订单商品与订单主关联ID
	 * @return 结果
	 */
	public int deleteStoreOrderGoodsById(Integer recId) {
		return storeOrderGoodsMapper.deleteStoreOrderGoodsById(recId);
	}

}

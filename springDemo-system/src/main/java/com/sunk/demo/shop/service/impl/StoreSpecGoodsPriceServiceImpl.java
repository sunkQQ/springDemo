package com.sunk.demo.shop.service.impl;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreSpecGoodsPrice;
import com.sunk.demo.shop.mapper.StoreSpecGoodsPriceMapper;
import com.sunk.demo.shop.service.StoreSpecGoodsPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品规格关联价格Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreSpecGoodsPriceServiceImpl implements StoreSpecGoodsPriceService {

	@Autowired
	private StoreSpecGoodsPriceMapper storeSpecGoodsPriceMapper;

	/**
	 * 查询商品规格关联价格
	 * 
	 * @param itemId 商品规格关联价格ID
	 * @return 商品规格关联价格
	 */
	@Override
	public StoreSpecGoodsPrice selectStoreSpecGoodsPriceById(Long itemId) {
		return storeSpecGoodsPriceMapper.selectStoreSpecGoodsPriceById(itemId);
	}

	/**
	 * 查询商品规格关联价格列表
	 * 
	 * @param storeSpecGoodsPrice 商品规格关联价格
	 * @return 商品规格关联价格
	 */
	@Override
	public List<StoreSpecGoodsPrice> selectStoreSpecGoodsPriceList(StoreSpecGoodsPrice storeSpecGoodsPrice) {
		return storeSpecGoodsPriceMapper.selectStoreSpecGoodsPriceList(storeSpecGoodsPrice);
	}

	/**
	 * 新增商品规格关联价格
	 * 
	 * @param storeSpecGoodsPrice 商品规格关联价格
	 * @return 结果
	 */
	@Override
	public int insertStoreSpecGoodsPrice(StoreSpecGoodsPrice storeSpecGoodsPrice) {
		return storeSpecGoodsPriceMapper.insertStoreSpecGoodsPrice(storeSpecGoodsPrice);
	}

	/**
	 * 修改商品规格关联价格
	 * 
	 * @param storeSpecGoodsPrice 商品规格关联价格
	 * @return 结果
	 */
	@Override
	public int updateStoreSpecGoodsPrice(StoreSpecGoodsPrice storeSpecGoodsPrice) {
		return storeSpecGoodsPriceMapper.updateStoreSpecGoodsPrice(storeSpecGoodsPrice);
	}

	/**
	 * 删除商品规格关联价格对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreSpecGoodsPriceByIds(String ids) {
		return storeSpecGoodsPriceMapper.deleteStoreSpecGoodsPriceByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除商品规格关联价格信息
	 * 
	 * @param itemId 商品规格关联价格ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreSpecGoodsPriceById(Long itemId) {
		return storeSpecGoodsPriceMapper.deleteStoreSpecGoodsPriceById(itemId);
	}

}

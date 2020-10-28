package com.sunk.demo.shop.service;

import java.util.List;

import com.sunk.demo.shop.domain.StoreSpecItem;

/**
 * 规格项Service接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreSpecItemService {

	/**
	 * 查询规格项
	 * 
	 * @param id 规格项ID
	 * @return 规格项
	 */
	public StoreSpecItem selectStoreSpecItemById(Long id);

	/**
	 * 查询规格项列表
	 * 
	 * @param storeSpecItem 规格项
	 * @return 规格项集合
	 */
	public List<StoreSpecItem> selectStoreSpecItemList(StoreSpecItem storeSpecItem);

	/**
	 * 新增规格项
	 * 
	 * @param storeSpecItem 规格项
	 * @return 结果
	 */
	public int insertStoreSpecItem(StoreSpecItem storeSpecItem);

	/**
	 * 修改规格项
	 * 
	 * @param storeSpecItem 规格项
	 * @return 结果
	 */
	public int updateStoreSpecItem(StoreSpecItem storeSpecItem);

	/**
	 * 批量删除规格项
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreSpecItemByIds(String ids);

	/**
	 * 删除规格项信息
	 * 
	 * @param id 规格项ID
	 * @return 结果
	 */
	public int deleteStoreSpecItemById(Long id);
}

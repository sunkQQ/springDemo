package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreSpecItem;
import com.sunk.demo.shop.mapper.StoreSpecItemMapper;
import com.sunk.demo.shop.service.StoreSpecItemService;

/**
 * 规格项Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreSpecItemServiceImpl implements StoreSpecItemService {

	@Autowired
	private StoreSpecItemMapper storeSpecItemMapper;

	/**
	 * 查询规格项
	 * 
	 * @param id 规格项ID
	 * @return 规格项
	 */
	@Override
	public StoreSpecItem selectStoreSpecItemById(Long id) {
		return storeSpecItemMapper.selectStoreSpecItemById(id);
	}

	/**
	 * 查询规格项列表
	 * 
	 * @param storeSpecItem 规格项
	 * @return 规格项
	 */
	@Override
	public List<StoreSpecItem> selectStoreSpecItemList(StoreSpecItem storeSpecItem) {
		return storeSpecItemMapper.selectStoreSpecItemList(storeSpecItem);
	}

	/**
	 * 新增规格项
	 * 
	 * @param storeSpecItem 规格项
	 * @return 结果
	 */
	@Override
	public int insertStoreSpecItem(StoreSpecItem storeSpecItem) {

		return storeSpecItemMapper.insertStoreSpecItem(storeSpecItem);
	}

	/**
	 * 修改规格项
	 * 
	 * @param storeSpecItem 规格项
	 * @return 结果
	 */
	@Override
	public int updateStoreSpecItem(StoreSpecItem storeSpecItem) {
		return storeSpecItemMapper.updateStoreSpecItem(storeSpecItem);
	}

	/**
	 * 删除规格项对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreSpecItemByIds(String ids) {
		return storeSpecItemMapper.deleteStoreSpecItemByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除规格项信息
	 * 
	 * @param id 规格项ID
	 * @return 结果
	 */
	public int deleteStoreSpecItemById(Long id) {
		return storeSpecItemMapper.deleteStoreSpecItemById(id);
	}

}

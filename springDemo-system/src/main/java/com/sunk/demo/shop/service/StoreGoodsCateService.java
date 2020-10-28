package com.sunk.demo.shop.service;

import java.util.List;

import com.sunk.demo.common.core.domain.Ztree;
import com.sunk.demo.shop.domain.StoreGoodsCate;

/**
 * 商城商品分类Service接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreGoodsCateService {

	/**
	 * 查询商城商品分类
	 * 
	 * @param id 商城商品分类ID
	 * @return 商城商品分类
	 */
	public StoreGoodsCate selectStoreGoodsCateById(Long id);

	/**
	 * 查询商城商品分类列表
	 * 
	 * @param storeGoodsCate 商城商品分类
	 * @return 商城商品分类集合
	 */
	public List<StoreGoodsCate> selectStoreGoodsCateList(StoreGoodsCate storeGoodsCate);

	/**
	 * 新增商城商品分类
	 * 
	 * @param storeGoodsCate 商城商品分类
	 * @return 结果
	 */
	public int insertStoreGoodsCate(StoreGoodsCate storeGoodsCate);

	/**
	 * 修改商城商品分类
	 * 
	 * @param storeGoodsCate 商城商品分类
	 * @return 结果
	 */
	public int updateStoreGoodsCate(StoreGoodsCate storeGoodsCate);

	/**
	 * 批量删除商城商品分类
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreGoodsCateByIds(String ids);

	/**
	 * 删除商城商品分类信息
	 * 
	 * @param id 商城商品分类ID
	 * @return 结果
	 */
	public int deleteStoreGoodsCateById(Long id);

	/**
	 * 查询商城商品分类树列表
	 * 
	 * @return 所有商城商品分类信息
	 */
	public List<Ztree> selectStoreGoodsCateTree();
}

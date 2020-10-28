package com.sunk.demo.shop.mapper;

import java.util.List;

import com.sunk.demo.shop.domain.StoreGoodsType;

/**
 * 商品类型(商品模型)Mapper接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreGoodsTypeMapper {

	/**
	 * 查询商品类型(商品模型)
	 * 
	 * @param id 商品类型(商品模型)ID
	 * @return 商品类型(商品模型)
	 */
	public StoreGoodsType selectStoreGoodsTypeById(Integer id);

	/**
	 * 查询商品类型(商品模型)列表
	 * 
	 * @param storeGoodsType 商品类型(商品模型)
	 * @return 商品类型(商品模型)集合
	 */
	public List<StoreGoodsType> selectStoreGoodsTypeList(StoreGoodsType storeGoodsType);

	/**
	 * 新增商品类型(商品模型)
	 * 
	 * @param storeGoodsType 商品类型(商品模型)
	 * @return 结果
	 */
	public int insertStoreGoodsType(StoreGoodsType storeGoodsType);

	/**
	 * 修改商品类型(商品模型)
	 * 
	 * @param storeGoodsType 商品类型(商品模型)
	 * @return 结果
	 */
	public int updateStoreGoodsType(StoreGoodsType storeGoodsType);

	/**
	 * 删除商品类型(商品模型)
	 * 
	 * @param id 商品类型(商品模型)ID
	 * @return 结果
	 */
	public int deleteStoreGoodsTypeById(Integer id);

	/**
	 * 批量删除商品类型(商品模型)
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreGoodsTypeByIds(String[] ids);
}

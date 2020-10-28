package com.sunk.demo.shop.mapper;

import java.util.List;

import com.sunk.demo.shop.domain.StoreGoodsAttr;

/**
 * 商品关联的属性(与商品相关)Mapper接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreGoodsAttrMapper {

	/**
	 * 查询商品关联的属性(与商品相关)
	 * 
	 * @param goodsAttrId 商品关联的属性(与商品相关)ID
	 * @return 商品关联的属性(与商品相关)
	 */
	public StoreGoodsAttr selectStoreGoodsAttrById(Integer goodsAttrId);

	/**
	 * 查询商品关联的属性(与商品相关)列表
	 * 
	 * @param storeGoodsAttr 商品关联的属性(与商品相关)
	 * @return 商品关联的属性(与商品相关)集合
	 */
	public List<StoreGoodsAttr> selectStoreGoodsAttrList(StoreGoodsAttr storeGoodsAttr);

	/**
	 * 新增商品关联的属性(与商品相关)
	 * 
	 * @param storeGoodsAttr 商品关联的属性(与商品相关)
	 * @return 结果
	 */
	public int insertStoreGoodsAttr(StoreGoodsAttr storeGoodsAttr);

	/**
	 * 修改商品关联的属性(与商品相关)
	 * 
	 * @param storeGoodsAttr 商品关联的属性(与商品相关)
	 * @return 结果
	 */
	public int updateStoreGoodsAttr(StoreGoodsAttr storeGoodsAttr);

	/**
	 * 删除商品关联的属性(与商品相关)
	 * 
	 * @param goodsAttrId 商品关联的属性(与商品相关)ID
	 * @return 结果
	 */
	public int deleteStoreGoodsAttrById(Integer goodsAttrId);

	/**
	 * 批量删除商品关联的属性(与商品相关)
	 * 
	 * @param goodsAttrIds 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreGoodsAttrByIds(String[] goodsAttrIds);
}

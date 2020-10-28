package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreGoodsAttribute;
import com.sunk.demo.shop.mapper.StoreGoodsAttributeMapper;
import com.sunk.demo.shop.service.StoreGoodsAttributeService;
import com.sunk.demo.shop.service.StoreGoodsTypeService;

/**
 * 商品的属性(独立)Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreGoodsAttributeServiceImpl implements StoreGoodsAttributeService {

	@Autowired
	private StoreGoodsAttributeMapper storeGoodsAttributeMapper;
	@Autowired
	private StoreGoodsTypeService storeGoodsTypeService;

	/**
	 * 查询商品的属性(独立)
	 * 
	 * @param attrId 商品的属性(独立)ID
	 * @return 商品的属性(独立)
	 */
	@Override
	public StoreGoodsAttribute selectStoreGoodsAttributeById(Long attrId) {
		return storeGoodsAttributeMapper.selectStoreGoodsAttributeById(attrId);
	}

	/**
	 * 查询商品的属性(独立)列表
	 * 
	 * @param storeGoodsAttribute 商品的属性(独立)
	 * @return 商品的属性(独立)
	 */
	@Override
	public List<StoreGoodsAttribute> selectStoreGoodsAttributeList(StoreGoodsAttribute storeGoodsAttribute) {
		List<StoreGoodsAttribute> list = storeGoodsAttributeMapper.selectStoreGoodsAttributeList(storeGoodsAttribute);
		for (StoreGoodsAttribute attr : list) {
			String typeName = storeGoodsTypeService.selectStoreGoodsTypeById(attr.getTypeId()).getName();
			attr.setTypeName(typeName);
		}

		return list;
	}

	/**
	 * 新增商品的属性(独立)
	 * 
	 * @param storeGoodsAttribute 商品的属性(独立)
	 * @return 结果
	 */
	@Override
	public int insertStoreGoodsAttribute(StoreGoodsAttribute storeGoodsAttribute) {
		return storeGoodsAttributeMapper.insertStoreGoodsAttribute(storeGoodsAttribute);
	}

	/**
	 * 修改商品的属性(独立)
	 * 
	 * @param storeGoodsAttribute 商品的属性(独立)
	 * @return 结果
	 */
	@Override
	public int updateStoreGoodsAttribute(StoreGoodsAttribute storeGoodsAttribute) {
		return storeGoodsAttributeMapper.updateStoreGoodsAttribute(storeGoodsAttribute);
	}

	/**
	 * 删除商品的属性(独立)对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreGoodsAttributeByIds(String ids) {
		return storeGoodsAttributeMapper.deleteStoreGoodsAttributeByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除商品的属性(独立)信息
	 * 
	 * @param attrId 商品的属性(独立)ID
	 * @return 结果
	 */
	public int deleteStoreGoodsAttributeById(Long attrId) {
		return storeGoodsAttributeMapper.deleteStoreGoodsAttributeById(attrId);
	}

}

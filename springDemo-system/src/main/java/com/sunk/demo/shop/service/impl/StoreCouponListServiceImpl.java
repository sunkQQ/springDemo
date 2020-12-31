package com.sunk.demo.shop.service.impl;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.shop.domain.StoreCouponList;
import com.sunk.demo.shop.mapper.StoreCouponListMapper;
import com.sunk.demo.shop.service.StoreCouponListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 优惠券记录Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreCouponListServiceImpl implements StoreCouponListService {

	@Autowired
	private StoreCouponListMapper storeCouponListMapper;

	/**
	 * 查询优惠券记录
	 * 
	 * @param id 优惠券记录ID
	 * @return 优惠券记录
	 */
	@Override
	public StoreCouponList selectStoreCouponListById(Integer id) {
		return storeCouponListMapper.selectStoreCouponListById(id);
	}

	/**
	 * 查询优惠券记录列表
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 优惠券记录
	 */
	@Override
	public List<StoreCouponList> selectStoreCouponListList(StoreCouponList storeCouponList) {
		return storeCouponListMapper.selectStoreCouponListList(storeCouponList);
	}

	/**
	 * 新增优惠券记录
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 结果
	 */
	@Override
	public int insertStoreCouponList(StoreCouponList storeCouponList) {
		return storeCouponListMapper.insertStoreCouponList(storeCouponList);
	}

	/**
	 * 修改优惠券记录
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 结果
	 */
	@Override
	public int updateStoreCouponList(StoreCouponList storeCouponList) {
		return storeCouponListMapper.updateStoreCouponList(storeCouponList);
	}

	/**
	 * 删除优惠券记录对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreCouponListByIds(String ids) {
		return storeCouponListMapper.deleteStoreCouponListByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除优惠券记录信息
	 * 
	 * @param id 优惠券记录ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreCouponListById(Integer id) {
		return storeCouponListMapper.deleteStoreCouponListById(id);
	}

}

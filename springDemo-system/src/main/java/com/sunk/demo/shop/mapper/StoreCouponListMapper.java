package com.sunk.demo.shop.mapper;

import java.util.List;

import com.sunk.demo.shop.domain.StoreCouponList;

/**
 * 优惠券记录Mapper接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreCouponListMapper {

	/**
	 * 查询优惠券记录
	 * 
	 * @param id 优惠券记录ID
	 * @return 优惠券记录
	 */
	public StoreCouponList selectStoreCouponListById(Integer id);

	/**
	 * 查询优惠券记录列表
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 优惠券记录集合
	 */
	public List<StoreCouponList> selectStoreCouponListList(StoreCouponList storeCouponList);

	/**
	 * 新增优惠券记录
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 结果
	 */
	public int insertStoreCouponList(StoreCouponList storeCouponList);

	/**
	 * 修改优惠券记录
	 * 
	 * @param storeCouponList 优惠券记录
	 * @return 结果
	 */
	public int updateStoreCouponList(StoreCouponList storeCouponList);

	/**
	 * 删除优惠券记录
	 * 
	 * @param id 优惠券记录ID
	 * @return 结果
	 */
	public int deleteStoreCouponListById(Integer id);

	/**
	 * 批量删除优惠券记录
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreCouponListByIds(String[] ids);
}

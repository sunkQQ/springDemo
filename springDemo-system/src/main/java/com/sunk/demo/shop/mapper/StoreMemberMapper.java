package com.sunk.demo.shop.mapper;

import java.util.List;

import com.sunk.demo.shop.domain.StoreMember;

/**
 * 商城会员信息Mapper接口
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface StoreMemberMapper {

	/**
	 * 查询商城会员信息
	 * 
	 * @param id 商城会员信息ID
	 * @return 商城会员信息
	 */
	public StoreMember selectStoreMemberById(Long id);

	/**
	 * 查询商城会员信息列表
	 * 
	 * @param storeMember 商城会员信息
	 * @return 商城会员信息集合
	 */
	public List<StoreMember> selectStoreMemberList(StoreMember storeMember);

	/**
	 * 新增商城会员信息
	 * 
	 * @param storeMember 商城会员信息
	 * @return 结果
	 */
	public int insertStoreMember(StoreMember storeMember);

	/**
	 * 修改商城会员信息
	 * 
	 * @param storeMember 商城会员信息
	 * @return 结果
	 */
	public int updateStoreMember(StoreMember storeMember);

	/**
	 * 删除商城会员信息
	 * 
	 * @param id 商城会员信息ID
	 * @return 结果
	 */
	public int deleteStoreMemberById(Long id);

	/**
	 * 批量删除商城会员信息
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteStoreMemberByIds(String[] ids);
}

package com.sunk.demo.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.common.utils.DateUtils;
import com.sunk.demo.shop.domain.StoreMember;
import com.sunk.demo.shop.mapper.StoreMemberMapper;
import com.sunk.demo.shop.service.StoreMemberService;

/**
 * 商城会员信息Service业务层处理
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Service
public class StoreMemberServiceImpl implements StoreMemberService {

	@Autowired
	private StoreMemberMapper storeMemberMapper;

	/**
	 * 查询商城会员信息
	 * 
	 * @param id 商城会员信息ID
	 * @return 商城会员信息
	 */
	@Override
	public StoreMember selectStoreMemberById(Long id) {
		return storeMemberMapper.selectStoreMemberById(id);
	}

	/**
	 * 查询商城会员信息列表
	 * 
	 * @param storeMember 商城会员信息
	 * @return 商城会员信息
	 */
	@Override
	public List<StoreMember> selectStoreMemberList(StoreMember storeMember) {
		return storeMemberMapper.selectStoreMemberList(storeMember);
	}

	/**
	 * 新增商城会员信息
	 * 
	 * @param storeMember 商城会员信息
	 * @return 结果
	 */
	@Override
	public int insertStoreMember(StoreMember storeMember) {
		storeMember.setCreateTime(DateUtils.getNowDate());
		return storeMemberMapper.insertStoreMember(storeMember);
	}

	/**
	 * 修改商城会员信息
	 * 
	 * @param storeMember 商城会员信息
	 * @return 结果
	 */
	@Override
	public int updateStoreMember(StoreMember storeMember) {
		storeMember.setUpdateTime(DateUtils.getNowDate());
		return storeMemberMapper.updateStoreMember(storeMember);
	}

	/**
	 * 删除商城会员信息对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteStoreMemberByIds(String ids) {
		return storeMemberMapper.deleteStoreMemberByIds(Convert.toStrArray(ids));
	}

	/**
	 * 删除商城会员信息信息
	 * 
	 * @param id 商城会员信息ID
	 * @return 结果
	 */
	public int deleteStoreMemberById(Long id) {
		return storeMemberMapper.deleteStoreMemberById(id);
	}

}

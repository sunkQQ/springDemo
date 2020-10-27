package com.sunk.demo.generator.service;

import java.util.List;

import com.sunk.demo.generator.domain.GenTableColumn;

/**
 * 业务字段 服务层
 * 
 * @author sunk
 * @date 2020年10月27日
 */

public interface GenTableColumnService {

	/**
	 * 查询业务字段列表
	 * 
	 * @param genTableColumn 业务字段信息
	 * @return 业务字段集合
	 */
	public List<GenTableColumn> selectGenTableColumnListByTableId(GenTableColumn genTableColumn);

	/**
	 * 新增业务字段
	 * 
	 * @param genTableColumn 业务字段信息
	 * @return 结果
	 */
	public int insertGenTableColumn(GenTableColumn genTableColumn);

	/**
	 * 修改业务字段
	 * 
	 * @param genTableColumn 业务字段信息
	 * @return 结果
	 */
	public int updateGenTableColumn(GenTableColumn genTableColumn);

	/**
	 * 删除业务字段信息
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteGenTableColumnByIds(String ids);
}

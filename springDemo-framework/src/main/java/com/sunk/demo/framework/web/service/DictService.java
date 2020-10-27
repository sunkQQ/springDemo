package com.sunk.demo.framework.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunk.demo.system.domain.SysDictData;
import com.sunk.demo.system.service.SysDictDataService;
import com.sunk.demo.system.service.SysDictTypeService;

/**
 * html调用 thymeleaf 实现字典读取
 * 
 * @author sunk
 * @date 2020年10月26日
 */
@Service("dict")
public class DictService {
	@Autowired
	private SysDictTypeService dictTypeService;

	@Autowired
	private SysDictDataService dictDataService;

	/**
	 * 根据字典类型查询字典数据信息
	 * 
	 * @param dictType 字典类型
	 * @return 参数键值
	 */
	public List<SysDictData> getType(String dictType) {
		return dictTypeService.selectDictDataByType(dictType);
	}

	/**
	 * 根据字典类型和字典键值查询字典数据信息
	 * 
	 * @param dictType  字典类型
	 * @param dictValue 字典键值
	 * @return 字典标签
	 */
	public String getLabel(String dictType, String dictValue) {
		return dictDataService.selectDictLabel(dictType, dictValue);
	}
}

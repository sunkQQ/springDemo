package com.sunk.demo.system.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.system.domain.SysDictData;
import com.sunk.demo.system.mapper.SysDictDataMapper;
import com.sunk.demo.system.service.SysDictDataService;
import com.sunk.demo.system.utils.DictUtils;

/**
 * 字典 业务层处理
 *
 * @author sunk
 * @date 2020年10月26日
 */
@Service
public class SysDictDataServiceImpl extends ServiceImpl<SysDictDataMapper, SysDictData> implements SysDictDataService {

    /**
     * 根据条件分页查询字典数据
     *
     * @param dictData 字典数据信息
     * @return 字典数据集合信息
     */
    @Override
    public List<SysDictData> selectDictDataList(SysDictData dictData) {
        LambdaQueryWrapper<SysDictData> queryWrapper = Wrappers.lambdaQuery();
        if (StringUtils.isNotBlank(dictData.getDictType())) {
            queryWrapper.eq(SysDictData::getDictType, dictData.getDictType());
        }
        if (StringUtils.isNotBlank(dictData.getDictLabel())) {
            queryWrapper.like(SysDictData::getDictLabel, dictData.getDictLabel());
        }
        if (StringUtils.isNotBlank(dictData.getStatus())) {
            queryWrapper.eq(SysDictData::getStatus, dictData.getStatus());
        }
        return list(queryWrapper);
    }

    /**
     * 根据字典类型和字典键值查询字典数据信息
     *
     * @param dictType  字典类型
     * @param dictValue 字典键值
     * @return 字典标签
     */
    @Override
    public String selectDictLabel(String dictType, String dictValue) {
        LambdaQueryWrapper<SysDictData> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SysDictData::getDictType, dictType);
        queryWrapper.eq(SysDictData::getDictValue, dictValue);
        SysDictData sysDictData = baseMapper.selectOne(queryWrapper);
        return sysDictData.getDictLabel();
//		return dictDataMapper.selectDictLabel(dictType, dictValue);
    }

    /**
     * 根据字典数据ID查询信息
     *
     * @param dictCode 字典数据ID
     * @return 字典数据
     */
    @Override
    public SysDictData selectDictDataById(Long dictCode) {
        return getById(dictCode);
//        return dictDataMapper.selectDictDataById(dictCode);
    }

    /**
     * 批量删除字典数据
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    @Override
    public int deleteDictDataByIds(String ids) {

        int row = baseMapper.deleteBatchIds(Arrays.asList(ids.trim().split(",")));

//        int row = dictDataMapper.deleteDictDataByIds(Convert.toStrArray(ids));
        if (row > 0) {
            DictUtils.clearDictCache();
        }
        return row;
    }

    /**
     * 新增保存字典数据信息
     *
     * @param dictData 字典数据信息
     * @return 结果
     */
    @Override
    public boolean insertDictData(SysDictData dictData) {
//        int row = dictDataMapper.insertDictData(dictData);
        boolean flag = save(dictData);
        if (flag) {
            DictUtils.clearDictCache();
        }
        return flag;
    }

    /**
     * 修改保存字典数据信息
     *
     * @param dictData 字典数据信息
     * @return 结果
     */
    @Override
    public boolean updateDictData(SysDictData dictData) {
        boolean flag = updateById(dictData);
//        int row = dictDataMapper.updateDictData(dictData);
        if (flag) {
            DictUtils.clearDictCache();
        }
        return flag;
    }

    @Override
    public List<SysDictData> selectDictDataByType(String dictType) {
        LambdaQueryWrapper<SysDictData> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SysDictData::getDictType, dictType);
        return list(queryWrapper);
    }

    @Override
    public int countDictDataByType(String dictType) {
        LambdaQueryWrapper<SysDictData> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SysDictData::getDictType, dictType);
        return list(queryWrapper).size();
    }

    @Override
    public int updateDictDataType(String oldDictType, String newDictType) {
        return baseMapper.updateDictDataType(oldDictType, newDictType);
    }

}

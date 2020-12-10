package com.sunk.demo.system.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.annotation.Excel.ColumnType;
import com.sunk.demo.common.core.domain.BaseEntity;
import lombok.*;

/**
 * 参数配置表 sys_config
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@EqualsAndHashCode(callSuper = true)
@ToString
@Data
@TableName(value = "sys_config")
public class SysConfig extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 参数主键 */
    @TableField
    @TableId("config_id")
    @Excel(name = "参数主键", cellType = ColumnType.NUMERIC)
    private Long configId;

    /** 参数名称 */
    @Excel(name = "参数名称")
    private String configName;

    /** 参数键名 */
    @Excel(name = "参数键名")
    private String configKey;

    /** 参数键值 */
    @Excel(name = "参数键值")
    private String configValue;

    /** 系统内置（Y是 N否） */
    @Excel(name = "系统内置", readConverterExp = "Y=是,N=否")
    private String configType;

    /** 备注 */
    private String remark;

}

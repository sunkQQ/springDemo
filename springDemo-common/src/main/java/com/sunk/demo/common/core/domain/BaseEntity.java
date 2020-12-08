package com.sunk.demo.common.core.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Entity基类
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@Data
@ToString
@Accessors(chain = true)
public class BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	public static final String CREATE_BY = "createBy";
	public static final String CREATE_TIME = "createTime";
	public static final String UPDATE_BY = "updateBy";
	public static final String UPDATE_TIME = "updateTime";

	/** 搜索值 */
	@TableField(exist = false)
	private String searchValue;

	/** 创建者 */
	@TableField(value = "create_by", fill = FieldFill.INSERT)
	private String createBy;

	/** 创建时间 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@TableField(value = "create_time",fill = FieldFill.INSERT)
	private Date createTime;

	/** 更新者 */
	@TableField(value = "update_by",fill = FieldFill.UPDATE)
	private String updateBy;

	/** 更新时间 */
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@TableField(value = "update_time",fill = FieldFill.UPDATE)
	private Date updateTime;

	/** 请求参数 */
	@TableField(exist=false)
	private Map<String, Object> params;

	public Map<String, Object> getParams() {
		if (params == null) {
			params = new HashMap<>(5);
		}
		return params;
	}

}

package com.sunk.demo.system.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.sunk.demo.common.core.domain.BaseEntity;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

/**
 * 部门表 sys_dept
 * 
 * @author sunk
 * @date 2020年10月22日
 */
@TableName(value = "sys_dept")
public class SysDept extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 部门ID */
    @TableId("dept_id")
    private Long deptId;

    /** 父部门ID */
    private Long parentId;

    /** 祖级列表 */
    private String ancestors;

    /** 部门名称 */
    private String deptName;

    /** 显示顺序 */
    private String orderNum;

    /** 负责人 */
    private String leader;

    /** 联系电话 */
    private String phone;

    /** 邮箱 */
    private String email;

    /** 部门状态:0正常,1停用 */
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 父部门名称 */
    private String parentName;

	public Long getDeptId() {
        return deptId;
    }

	public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

	public Long getParentId() {
        return parentId;
    }

	public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

	public String getAncestors() {
        return ancestors;
    }

	public void setAncestors(String ancestors) {
        this.ancestors = ancestors;
    }

    @NotBlank(message = "部门名称不能为空")
    @Size(min = 0, max = 30, message = "部门名称长度不能超过30个字符")
	public String getDeptName() {
        return deptName;
    }

	public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    @NotBlank(message = "显示顺序不能为空")
	public String getOrderNum() {
        return orderNum;
    }

	public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

	public String getLeader() {
        return leader;
    }

	public void setLeader(String leader) {
        this.leader = leader;
    }

    @Size(min = 0, max = 11, message = "联系电话长度不能超过11个字符")
	public String getPhone() {
        return phone;
    }

	public void setPhone(String phone) {
        this.phone = phone;
    }

    @Email(message = "邮箱格式不正确")
    @Size(min = 0, max = 50, message = "邮箱长度不能超过50个字符")
	public String getEmail() {
        return email;
    }

	public void setEmail(String email) {
        this.email = email;
    }

	public String getStatus() {
        return status;
    }

	public void setStatus(String status) {
        this.status = status;
    }

	public String getDelFlag() {
        return delFlag;
    }

	public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

	public String getParentName() {
        return parentName;
    }

	public void setParentName(String parentName) {
        this.parentName = parentName;
    }

}

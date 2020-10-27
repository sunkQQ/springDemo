package com.sunk.demo.system.domain;

/**
 * 角色和部门关联 sys_role_dept
 * 
 * @author sunk
 * @date 2020年10月22日
 */
public class SysRoleDept {
    /** 角色ID */
    private Long roleId;
    
    /** 部门ID */
    private Long deptId;

	public Long getRoleId() {
        return roleId;
    }

	public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

	public Long getDeptId() {
        return deptId;
    }

	public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

}

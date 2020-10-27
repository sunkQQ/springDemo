package com.sunk.demo.system.domain;

/**
 * 用户和岗位关联 sys_user_post
 * 
 * @author sunk
 * @date 2020年10月22日
 */
public class SysUserPost {
    /** 用户ID */
    private Long userId;
    
    /** 岗位ID */
    private Long postId;

	public Long getUserId() {
        return userId;
    }

	public void setUserId(Long userId) {
        this.userId = userId;
    }

	public Long getPostId() {
        return postId;
    }

	public void setPostId(Long postId) {
        this.postId = postId;
    }

}

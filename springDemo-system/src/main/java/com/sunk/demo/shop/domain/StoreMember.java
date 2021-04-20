package com.sunk.demo.shop.domain;

import java.util.Date;

import com.sunk.demo.common.annotation.Excel;
import com.sunk.demo.common.core.domain.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 商城会员信息对象 store_member
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Getter
@Setter
@ToString
public class StoreMember extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** null */
	private Long id;

	/** vip编号 */
	private String vipNo;

	/** 会员微信OPENID */
	private String openid;

	/** 会员手机号 */
	@Excel(name = "会员手机号")
	private String phone;

	/** 登录密码 */
	private String password;

	/** 会员昵称 */
	@Excel(name = "会员昵称")
	private String nickname;

	/** 会员头像 */
	@Excel(name = "会员头像")
	private String headimg;

	/** 性别 */
	private String sex;

	/** 会员级别 */
	@Excel(name = "会员级别")
	private Integer level;

	/** 消费累计额度 用于用户等级 */
	private Double totalAmount;

	/** 用户金额 */
	@Excel(name = "用户金额")
	private Double userMoney;

	/** 累积分佣金额 */
	private Double distributMoney;

	/** 冻结金额 */
	private Double frozenMoney;

	/** 用户下线总数 */
	private Integer underlingNumber;

	/** 消费积分 */
	@Excel(name = "消费积分")
	private Integer payPoints;

	/** 默认收货地址 */
	private Integer addressId;

	/** 会员个性签名 */
	private String remark;

	/** 会员状态0待审核 1-已审核 2-已拒绝 */
	private Integer status;

	/** 创建时间 */
	@Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
	private Date createAt;

	/** 审核时间 */
	private Long statusTime;

}

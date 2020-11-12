package com.sunk.demo.web.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.system.domain.SysUser;
import com.sunk.demo.system.service.SysConfigService;

/**
 * 注册验证
 * 
 * @author sunk
 * @date 2020年10月26日
 */
@Controller
public class SysRegisterController extends BaseController {

//	@Autowired
//	private SysRegisterService registerService;

	@Autowired
	private SysConfigService configService;

	@GetMapping("/register")
	public String register() {
		return "register";
	}

	/*@PostMapping("/register")
	@ResponseBody
	public AjaxResult ajaxRegister(SysUser user) {
		if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser")))) {
			return error("当前系统没有开启注册功能！");
		}
		String msg = registerService.register(user);
		return StringUtils.isEmpty(msg) ? success() : error(msg);
	}*/
}

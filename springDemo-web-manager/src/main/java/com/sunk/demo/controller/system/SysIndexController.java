package com.sunk.demo.controller.system;

import com.sunk.demo.common.config.Global;
import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.framework.util.ShiroUtils;
import com.sunk.demo.system.domain.SysMenu;
import com.sunk.demo.system.domain.SysUser;
import com.sunk.demo.system.service.SysConfigService;
import com.sunk.demo.system.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * 首页 业务处理
 * 
 * @author sunk
 * @date 2020年10月26日
 */
@Controller
public class SysIndexController extends BaseController {

	@Autowired
	private SysMenuService menuService;

	@Autowired
	private SysConfigService configService;

	/** 系统首页 */
	@GetMapping("/index")
	public String index(ModelMap mmap) {
		// 取身份信息
		SysUser user = ShiroUtils.getSysUser();
		// 根据用户id取出菜单
		List<SysMenu> menus = menuService.selectMenusByUser(user);
		mmap.put("menus", menus);
		mmap.put("user", user);
		mmap.put("sideTheme", configService.selectConfigByKey("sys.index.sideTheme"));
		mmap.put("skinName", configService.selectConfigByKey("sys.index.skinName"));
		mmap.put("copyrightYear", Global.getCopyrightYear());
		mmap.put("demoEnabled", Global.isDemoEnabled());
		return "index";
	}

	/** 切换主题 */
	@GetMapping("/system/switchSkin")
	public String switchSkin(ModelMap mmap) {
		return "skin";
	}

	/** 系统介绍 */
	@GetMapping("/system/main")
	public String main(ModelMap mmap) {
		mmap.put("version", Global.getVersion());
		return "main_v1";
	}
}

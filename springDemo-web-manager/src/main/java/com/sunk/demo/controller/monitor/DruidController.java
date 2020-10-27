package com.sunk.demo.controller.monitor;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sunk.demo.common.core.controller.BaseController;

/**
 * druid 监控
 * 
 * @author sunk
 * @date 2020年10月14日
 */
@Controller
@RequestMapping("/monitor/data")
public class DruidController extends BaseController {

	private String prefix = "/druid";

	@RequiresPermissions("monitor:data:view")
	@GetMapping()
	private String index() {
		return redirect(prefix + "/index");
	}
}

package com.sunk.demo.web.controller.tool;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sunk.demo.common.core.controller.BaseController;

/**
 * swagger 接口
 * 
 * @author sunk
 * @date 2020年10月26日
 */
@Controller
@RequestMapping("/tool/swagger")
public class SwaggerController extends BaseController {

	@RequiresPermissions("tool:swagger:view")
	@GetMapping()
	public String index() {
		return redirect("/swagger-ui.html");
	}
}

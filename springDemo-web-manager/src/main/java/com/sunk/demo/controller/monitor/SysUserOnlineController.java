package com.sunk.demo.controller.monitor;

import java.util.List;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.core.page.TableDataInfo;
import com.sunk.demo.common.core.text.Convert;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.enums.OnlineStatus;
import com.sunk.demo.framework.shiro.session.OnlineSession;
import com.sunk.demo.framework.shiro.session.OnlineSessionDAO;
import com.sunk.demo.framework.util.ShiroUtils;
import com.sunk.demo.system.domain.SysUserOnline;
import com.sunk.demo.system.service.SysUserOnlineService;

/**
 * 在线用户监控
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Controller
@RequestMapping("/monitor/online")
public class SysUserOnlineController extends BaseController {

	private String prefix = "monitor/online";

	@Autowired
	private SysUserOnlineService userOnlineService;

	@Autowired
	private OnlineSessionDAO onlineSessionDAO;

	@RequiresPermissions("monitor:online:view")
	@GetMapping()
	public String online() {
		return prefix + "/online";
	}

	@RequiresPermissions("monitor:online:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(SysUserOnline userOnline) {
		startPage();
		List<SysUserOnline> list = userOnlineService.selectUserOnlineList(userOnline);
		return getDataTable(list);
	}

	@RequiresPermissions(value = { "monitor:online:batchForceLogout",
			"monitor:online:forceLogout" }, logical = Logical.OR)
	@Log(title = "在线用户", businessType = BusinessType.FORCE)
	@PostMapping("/batchForceLogout")
	@ResponseBody
	public AjaxResult batchForceLogout(String ids) {
		for (String sessionId : Convert.toStrArray(ids)) {
			SysUserOnline online = userOnlineService.selectOnlineById(sessionId);
			if (online == null) {
				return error("用户已下线");
			}
			OnlineSession onlineSession = (OnlineSession) onlineSessionDAO.readSession(online.getSessionId());
			if (onlineSession == null) {
				return error("用户已下线");
			}
			if (sessionId.equals(ShiroUtils.getSessionId())) {
				return error("当前登陆用户无法强退");
			}
			onlineSession.setStatus(OnlineStatus.off_line);
			onlineSessionDAO.update(onlineSession);
			online.setStatus(OnlineStatus.off_line);
			userOnlineService.saveOnline(online);
		}
		return success();
	}
}

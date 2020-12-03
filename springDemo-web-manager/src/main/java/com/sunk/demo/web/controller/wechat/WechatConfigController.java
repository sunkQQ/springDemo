package com.sunk.demo.web.controller.wechat;

import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.core.page.TableDataInfo;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.utils.poi.ExcelUtil;
import com.sunk.demo.wechat.domain.WechatConfig;
import com.sunk.demo.wechat.service.IWechatConfigService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 公众号设置Controller
 * 
 * @author sunk
 * @date 2020-12-03
 */
@Controller
@RequestMapping("/wechat/config")
public class WechatConfigController extends BaseController {
    private String prefix = "wechat/config";

    @Autowired
    private IWechatConfigService wechatConfigService;

    @RequiresPermissions("wechat:config:view")
    @GetMapping()
    public String config()
    {
        return prefix + "/config";
    }

    /**
     * 查询公众号设置列表
     */
    @RequiresPermissions("wechat:config:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WechatConfig wechatConfig) {
        startPage();
        List<WechatConfig> list = wechatConfigService.selectWechatConfigList(wechatConfig);
        return getDataTable(list);
    }

    /**
     * 导出公众号设置列表
     */
    @RequiresPermissions("wechat:config:export")
    @Log(title = "公众号设置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(WechatConfig wechatConfig) {
        List<WechatConfig> list = wechatConfigService.selectWechatConfigList(wechatConfig);
        ExcelUtil<WechatConfig> util = new ExcelUtil<WechatConfig>(WechatConfig.class);
        return util.exportExcel(list, "config");
    }

    /**
     * 新增公众号设置
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存公众号设置
     */
    @RequiresPermissions("wechat:config:add")
    @Log(title = "公众号设置", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WechatConfig wechatConfig) {
//        AjaxResult.err
//        if ()
        return toAjax(wechatConfigService.insertWechatConfig(wechatConfig));
    }

    /**
     * 修改公众号设置
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        WechatConfig wechatConfig = wechatConfigService.selectWechatConfigById(id);
        mmap.put("wechatConfig", wechatConfig);
        return prefix + "/edit";
    }

    /**
     * 修改保存公众号设置
     */
    @RequiresPermissions("wechat:config:edit")
    @Log(title = "公众号设置", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WechatConfig wechatConfig) {
        return toAjax(wechatConfigService.updateWechatConfig(wechatConfig));
    }

    /**
     * 删除公众号设置
     */
    @RequiresPermissions("wechat:config:remove")
    @Log(title = "公众号设置", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(wechatConfigService.deleteWechatConfigByIds(ids));
    }
}

package com.sunk.demo.controller.wechat;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.core.page.TableDataInfo;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.common.utils.poi.ExcelUtil;
import com.sunk.demo.wechat.domain.WechatConfig;
import com.sunk.demo.wechat.service.IWechatConfigService;
import org.apache.commons.collections.CollectionUtils;
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
    public String config() {
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
    public String add() {
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
        WechatConfig query = new WechatConfig();
        query.setAppId(wechatConfig.getAppId());
        List<WechatConfig> configList = wechatConfigService.selectWechatConfigList(query);
        if (CollectionUtils.isNotEmpty(configList)) {
            return AjaxResult.error("appId已经存在");
        }
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
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(wechatConfigService.deleteWechatConfigByIds(ids));
    }

    @GetMapping("/menu/{id}")
    public String setMenu(@PathVariable("id") Long id, ModelMap mmap) {
        WechatConfig wechatConfig = wechatConfigService.selectWechatConfigById(id);

//        String button = "{\"menu\":{\"button\":[{\"name\":\"百度\",\"sub_button\":[],\"type\":\"view\",\"url\":\"http://www.baidu.com\"},{\"name\":\"菜单\",\"sub_button\":[{\"name\":\"菜单\",\"key\":\"col_1\",\"type\":\"click\"}]}]}}";
        JSONObject jsonObject = new JSONObject();
        if (wechatConfig != null && StringUtils.isBlank(wechatConfig.getMenus())) {
            JSONObject json = new JSONObject();
            json.put("button", new JSONArray());
            jsonObject.put("menu", json);
        } else {
            jsonObject = JSONObject.parseObject(wechatConfig.getMenus());
        }
        mmap.put("config", wechatConfig);
        mmap.put("button", jsonObject);
        return prefix + "/menu";
    }

    @RequiresPermissions("wechat:config:button")
    @Log(title = "公众号菜单设置", businessType = BusinessType.UPDATE)
    @PostMapping("/saveButton")
    @ResponseBody
    public AjaxResult saveButton(Long id, String menu) {
        System.out.println(menu);
        System.out.println(id);
        WechatConfig wechatConfig = wechatConfigService.selectWechatConfigById(id);
        if (wechatConfig == null) {
            return error("配置信息不存在");
        }
        wechatConfig.setMenus(menu);
        return toAjax(wechatConfigService.updateWechatConfig(wechatConfig));
    }

    @RequiresPermissions("wechat:config:menu")
    @Log(title = "生成菜单", businessType = BusinessType.INTERFACE)
    @PostMapping("/generateMenu")
    @ResponseBody
    public AjaxResult generateMenu(Long id){
        wechatConfigService.createMenu(id);
        return toAjax(true);
    }
}

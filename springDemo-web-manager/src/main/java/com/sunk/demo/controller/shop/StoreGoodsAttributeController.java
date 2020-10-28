package com.sunk.demo.controller.shop;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sunk.demo.common.annotation.Log;
import com.sunk.demo.common.core.controller.BaseController;
import com.sunk.demo.common.core.domain.AjaxResult;
import com.sunk.demo.common.core.page.TableDataInfo;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.utils.poi.ExcelUtil;
import com.sunk.demo.shop.domain.StoreGoodsAttribute;
import com.sunk.demo.shop.service.StoreGoodsAttributeService;

/**
 * 商品的属性(独立)Controller
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Controller
@RequestMapping("/shop/attribute")
public class StoreGoodsAttributeController extends BaseController {

	private String prefix = "shop/attribute";

	@Autowired
	private StoreGoodsAttributeService storeGoodsAttributeService;

	@RequiresPermissions("shop:attribute:view")
	@GetMapping()
	public String attribute() {
		return prefix + "/attribute";
	}

	/**
	 * 查询商品的属性(独立)列表
	 */
	@RequiresPermissions("shop:attribute:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(StoreGoodsAttribute storeGoodsAttribute) {
		startPage();
		List<StoreGoodsAttribute> list = storeGoodsAttributeService.selectStoreGoodsAttributeList(storeGoodsAttribute);
		return getDataTable(list);
	}

	/**
	 * 导出商品的属性(独立)列表
	 */
	@RequiresPermissions("shop:attribute:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(StoreGoodsAttribute storeGoodsAttribute) {
		List<StoreGoodsAttribute> list = storeGoodsAttributeService.selectStoreGoodsAttributeList(storeGoodsAttribute);
		ExcelUtil<StoreGoodsAttribute> util = new ExcelUtil<StoreGoodsAttribute>(StoreGoodsAttribute.class);
		return util.exportExcel(list, "attribute");
	}

	/**
	 * 新增商品的属性(独立)
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存商品的属性(独立)
	 */
	@RequiresPermissions("shop:attribute:add")
	@Log(title = "商品的属性(独立)", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(StoreGoodsAttribute storeGoodsAttribute) {
		return toAjax(storeGoodsAttributeService.insertStoreGoodsAttribute(storeGoodsAttribute));
	}

	/**
	 * 修改商品的属性(独立)
	 */
	@GetMapping("/edit/{attrId}")
	public String edit(@PathVariable("attrId") Long attrId, ModelMap mmap) {
		StoreGoodsAttribute storeGoodsAttribute = storeGoodsAttributeService.selectStoreGoodsAttributeById(attrId);
		mmap.put("storeGoodsAttribute", storeGoodsAttribute);
		return prefix + "/edit";
	}

	/**
	 * 修改保存商品的属性(独立)
	 */
	@RequiresPermissions("shop:attribute:edit")
	@Log(title = "商品的属性(独立)", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(StoreGoodsAttribute storeGoodsAttribute) {
		return toAjax(storeGoodsAttributeService.updateStoreGoodsAttribute(storeGoodsAttribute));
	}

	/**
	 * 删除商品的属性(独立)
	 */
	@RequiresPermissions("shop:attribute:remove")
	@Log(title = "商品的属性(独立)", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		return toAjax(storeGoodsAttributeService.deleteStoreGoodsAttributeByIds(ids));
	}
}

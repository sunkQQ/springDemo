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
import com.sunk.demo.shop.domain.StoreGoodsBrand;
import com.sunk.demo.shop.service.StoreGoodsBrandService;

/**
 * 产品品牌Controller
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Controller
@RequestMapping("/shop/brand")
public class StoreGoodsBrandController extends BaseController {

	private String prefix = "shop/brand";

	@Autowired
	private StoreGoodsBrandService storeGoodsBrandService;

	@RequiresPermissions("shop:brand:view")
	@GetMapping()
	public String brand() {
		return prefix + "/brand";
	}

	/**
	 * 查询产品品牌列表
	 */
	@RequiresPermissions("shop:brand:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(StoreGoodsBrand storeGoodsBrand) {
		startPage();
		List<StoreGoodsBrand> list = storeGoodsBrandService.selectStoreGoodsBrandList(storeGoodsBrand);
		return getDataTable(list);
	}

	/**
	 * 导出产品品牌列表
	 */
	@RequiresPermissions("shop:brand:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(StoreGoodsBrand storeGoodsBrand) {
		List<StoreGoodsBrand> list = storeGoodsBrandService.selectStoreGoodsBrandList(storeGoodsBrand);
		ExcelUtil<StoreGoodsBrand> util = new ExcelUtil<StoreGoodsBrand>(StoreGoodsBrand.class);
		return util.exportExcel(list, "brand");
	}

	/**
	 * 新增产品品牌
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存产品品牌
	 */
	@RequiresPermissions("shop:brand:add")
	@Log(title = "产品品牌", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(StoreGoodsBrand storeGoodsBrand) {
		return toAjax(storeGoodsBrandService.insertStoreGoodsBrand(storeGoodsBrand));
	}

	/**
	 * 修改产品品牌
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, ModelMap mmap) {
		StoreGoodsBrand storeGoodsBrand = storeGoodsBrandService.selectStoreGoodsBrandById(id);
		mmap.put("storeGoodsBrand", storeGoodsBrand);
		return prefix + "/edit";
	}

	/**
	 * 修改保存产品品牌
	 */
	@RequiresPermissions("shop:brand:edit")
	@Log(title = "产品品牌", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(StoreGoodsBrand storeGoodsBrand) {
		return toAjax(storeGoodsBrandService.updateStoreGoodsBrand(storeGoodsBrand));
	}

	/**
	 * 删除产品品牌
	 */
	@RequiresPermissions("shop:brand:remove")
	@Log(title = "产品品牌", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		return toAjax(storeGoodsBrandService.deleteStoreGoodsBrandByIds(ids));
	}
}

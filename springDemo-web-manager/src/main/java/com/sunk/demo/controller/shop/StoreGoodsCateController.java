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
import com.sunk.demo.common.core.domain.Ztree;
import com.sunk.demo.common.enums.BusinessType;
import com.sunk.demo.common.utils.StringUtils;
import com.sunk.demo.common.utils.poi.ExcelUtil;
import com.sunk.demo.shop.domain.StoreGoodsCate;
import com.sunk.demo.shop.service.StoreGoodsCateService;

/**
 * 商城商品分类Controller
 * 
 * @author sunk
 * @date 2020年10月27日
 */
@Controller
@RequestMapping("/shop/cate")
public class StoreGoodsCateController extends BaseController {

	private String prefix = "shop/cate";

	@Autowired
	private StoreGoodsCateService storeGoodsCateService;

	@RequiresPermissions("shop:cate:view")
	@GetMapping()
	public String cate() {
		return prefix + "/cate";
	}

	/**
	 * 查询商城商品分类树列表
	 */
	@RequiresPermissions("shop:cate:list")
	@PostMapping("/list")
	@ResponseBody
	public List<StoreGoodsCate> list(StoreGoodsCate storeGoodsCate) {
		List<StoreGoodsCate> list = storeGoodsCateService.selectStoreGoodsCateList(storeGoodsCate);
		return list;
	}

	/**
	 * 导出商城商品分类列表
	 */
	@RequiresPermissions("shop:cate:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(StoreGoodsCate storeGoodsCate) {
		List<StoreGoodsCate> list = storeGoodsCateService.selectStoreGoodsCateList(storeGoodsCate);
		ExcelUtil<StoreGoodsCate> util = new ExcelUtil<StoreGoodsCate>(StoreGoodsCate.class);
		return util.exportExcel(list, "cate");
	}

	/**
	 * 新增商城商品分类
	 */
	@GetMapping(value = { "/add/{id}", "/add/" })
	public String add(@PathVariable(value = "id", required = false) Long id, ModelMap mmap) {
		if (StringUtils.isNotNull(id)) {
			mmap.put("storeGoodsCate", storeGoodsCateService.selectStoreGoodsCateById(id));
		}
		return prefix + "/add";
	}

	/**
	 * 新增保存商城商品分类
	 */
	@RequiresPermissions("shop:cate:add")
	@Log(title = "商城商品分类", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(StoreGoodsCate storeGoodsCate) {
		return toAjax(storeGoodsCateService.insertStoreGoodsCate(storeGoodsCate));
	}

	/**
	 * 修改商城商品分类
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, ModelMap mmap) {
		StoreGoodsCate storeGoodsCate = storeGoodsCateService.selectStoreGoodsCateById(id);
		mmap.put("storeGoodsCate", storeGoodsCate);
		return prefix + "/edit";
	}

	/**
	 * 修改保存商城商品分类
	 */
	@RequiresPermissions("shop:cate:edit")
	@Log(title = "商城商品分类", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(StoreGoodsCate storeGoodsCate) {
		return toAjax(storeGoodsCateService.updateStoreGoodsCate(storeGoodsCate));
	}

	/**
	 * 删除
	 */
	@RequiresPermissions("shop:cate:remove")
	@Log(title = "商城商品分类", businessType = BusinessType.DELETE)
	@GetMapping("/remove/{id}")
	@ResponseBody
	public AjaxResult remove(@PathVariable("id") Long id) {
		return toAjax(storeGoodsCateService.deleteStoreGoodsCateById(id));
	}

	/**
	 * 选择商城商品分类树
	 */
	@GetMapping(value = { "/selectCateTree/{id}", "/selectCateTree/" })
	public String selectCateTree(@PathVariable(value = "id", required = false) Long id, ModelMap mmap) {
		if (StringUtils.isNotNull(id)) {
			mmap.put("storeGoodsCate", storeGoodsCateService.selectStoreGoodsCateById(id));
		}
		return prefix + "/tree";
	}

	/**
	 * 加载商城商品分类树列表
	 */
	@GetMapping("/treeData")
	@ResponseBody
	public List<Ztree> treeData() {
		List<Ztree> ztrees = storeGoodsCateService.selectStoreGoodsCateTree();
		return ztrees;
	}
}

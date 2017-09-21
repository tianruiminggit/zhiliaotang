package com.d.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;
import com.d.entity.RegionTreeNode;
import com.d.service.RegionManagerService;

/**
 * 单位设置
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/region")
public class RegionManagerController {

	@Autowired
	private RegionManagerService regionService;
	private int pnum;
	private int cnum;
	private int ccnum;

	/**
	 * 根据参数来获取所有省
	 * 当参数为null时，获取所有省
	 * @param p
	 * @return
	 */
	@RequestMapping("/getProvince")
	@ResponseBody
	public List<Province> getListProvince(Province p){
		List<Province> list = regionService.getListProvince(p);
		pnum = list.size();
		return list;
		
	}
	
	/**
	 * 根据参数来获取所有市
	 * 当参数为null时，获取所有市
	 * @param c
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/getCity")
	public List<City> getListCity(City c){
		List<City> list = regionService.getListCity(c);
		cnum=list.size();
		return list;
		
	}
	/**
	 * 根据参数来回去县，当参数为Null时 获取所有县
	 * @param c
	 * @return
	 */
	@RequestMapping("/getCityByProvince")
	@ResponseBody
	public List<City> getCityByProvince(County c){
		List<City> list = regionService.getCityByProvince(c);
		ccnum=list.size();
		return list;
	}
	/**
	 * 根据选择添加单位类型来添加数据
	 * @param table
	 * @param province_id
	 * @param province_name
	 * @param city_id
	 * @param city_name
	 * @param county_id
	 * @param county_name
	 * @return
	 */
	@RequestMapping("/insertRegion")
	public String insertRegion(String table,String province_id,String province_name,String city_id,String city_name,String county_id,String county_name){
		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		if(province_id==null){
			province_id = "sheng"+pnum;
		}
		map.put("province_id", province_id);
		map.put("province_name", province_name);
		if(city_id==null){
			city_id = "shi"+cnum;
		}
		map.put("city_id", city_id);
		map.put("city_name", city_name);
		if(county_id==null){
			county_id = "xian"+ccnum;
		}
		map.put("county_id", county_id);
		map.put("county_name", county_name);
		int i = regionService.insertRegion(map);
//		int i = regionService.insertRegion(table,province_id,province_name,city_id,city_name,county_id,county_name);
//		System.out.println(i);
		return "XTguanli/leibieshezhi";
		
	}
	
	@RequestMapping("/regionTree")
	@ResponseBody
	public List<RegionTreeNode> tree(String table,String id){
		Map<String, Object> map = new HashMap<>();
		if(table==null)
			map.put("tablename", "tb_province");
		else map.put("tablename", table);
		map.put("id", id);
		List<RegionTreeNode> list = regionService.tree(map);
		if(table==null){
			for(RegionTreeNode r :list){
				r.setChildren(tree("tb_city",r.getId()));
			}
		}
		if("tb_city".equals(table)){
			for(RegionTreeNode r :list){
				r.setChildren(tree("tb_county",r.getId()));
			}
		}
		if("tb_county".equals(table)){
			return list;
		}
		return list;
		
	}
}

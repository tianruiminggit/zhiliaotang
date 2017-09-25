package com.d.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
 * ��λ����
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
	 * ���ݲ�������ȡ����ʡ
	 * ������Ϊnullʱ����ȡ����ʡ
	 * @param p
	 * @return
	 */
	@RequestMapping("/getProvince")
	@ResponseBody
	public List<Province> getListProvince(Province p){
		pnum = regionService.getListProvince(new Province()).size();
		cnum = regionService.getListCity(new City()).size();
		ccnum = regionService.getListCounty(new County()).size();
		List<Province> list = regionService.getListProvince(p);
		return list;
		
	}
	
	/**
	 * ���ݲ�������ȡ������
	 * ������Ϊnullʱ����ȡ������
	 * @param c
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/getCity")
	public List<City> getListCity(City c){
		List<City> list = regionService.getListCity(c);
		return list;
		
	}
	/**
	 * ���ݲ�������ȥ�أ�������ΪNullʱ ��ȡ������
	 * @param c
	 * @return
	 */
	@RequestMapping("/getCounty")
	@ResponseBody
	public List<City> getCityByProvince(County c){
		List<City> list = regionService.getListCounty(c);
		return list;
	}
	/**
	 * ����ѡ����ӵ�λ�������������
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
		if(province_id==null||province_id==""){
			province_id = "sheng"+(pnum+1);
		}
		map.put("province_id", province_id);
		map.put("province_name", province_name);
		if(city_id==null||city_id==""){
			city_id = "shi"+(cnum+1);
		}
		map.put("city_id", city_id);
		map.put("city_name", city_name);
		if(county_id==null||county_id==""){
			county_id = "xian"+(ccnum+1);
		}
		map.put("county_id", county_id);
		map.put("county_name", county_name);
		int i = regionService.insertRegion(map);
//		int i = regionService.insertRegion(table,province_id,province_name,city_id,city_name,county_id,county_name);
//		System.out.println(i);
		return "XTguanli/unitsSetup";
		
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
	/**
	 * ��������
	 * @param table
	 * @param province_name
	 * @param city_name
	 * @param county_name
	 * @param hideId
	 * @return
	 */
	@RequestMapping("/update")
	public String updateRegion(String table,String province_name,String city_name,String county_name,String hideId){
		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		map.put("id", hideId);
		map.put("province_name", province_name);
		map.put("city_name", city_name);
		map.put("county_name", county_name);
		regionService.updateRegion(map);
		return "XTguanli/unitsSetup";
		
	}
	@RequestMapping("/delete")
	public String deleteRegion(String table,String hideId){
		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		map.put("id", hideId);
		regionService.deleteRegion(map);
		return "XTguanli/unitsSetup";
		
	}
}

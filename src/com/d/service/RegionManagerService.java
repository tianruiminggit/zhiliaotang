package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;
import com.d.entity.RegionTreeNode;

/**
 * 
 * @author Administrator
 *
 */
public interface RegionManagerService {

	/**
	 * 根据参数来获取所有省
	 * 当参数为null时，获取所有省
	 * @param p
	 * @return
	 */
	List<Province> getListProvince(Province p);
	/**
	 * 根据参数来获取所有市
	 * 当参数为null时，获取所有市
	 * @param c
	 * @return
	 */
	List<City> getListCity(City c);
	/**
	 * 根据参数来回去县，当参数为Null时 获取所有县
	 * @param c
	 * @return
	 */
	List<City> getListCounty(County c);
	/**
	 * 根据选择添加单位类型来添加数据
	 * @param map
	 * @return
	 */
	int insertRegion(Map<String, Object> map);
	List<RegionTreeNode> tree(Map<String, Object> map);
}

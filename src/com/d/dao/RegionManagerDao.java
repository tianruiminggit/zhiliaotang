package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;

public interface RegionManagerDao {

	/**
	 * 根据参数来获取所有省
	 * 当参数为null时，获取所有
	 * @param p
	 * @return
	 */
	public List<Province> getListProvince(Province p);
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
	public List<City> getCityByprovince(County c);
	public int insertRegion(Map<String, Object> map);
}

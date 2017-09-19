package com.d.service;

import java.util.List;

import com.d.entity.Province;

/**
 * 
 * @author Administrator
 *
 */
public interface RegionManagerService {

	/**
	 * 获取所有省份
	 * @return
	 */
	List<Province> getListProvince();
}

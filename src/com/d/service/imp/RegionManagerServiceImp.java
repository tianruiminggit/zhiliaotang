package com.d.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.RegionManagerDao;
import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;
import com.d.service.RegionManagerService;

@Service
public class RegionManagerServiceImp implements RegionManagerService {

	@Autowired
	private RegionManagerDao regionDao;
	@Override
	/**
	 * 根据参数来获取所有省
	 * 当参数为null时，获取所有
	 * @param p
	 * @return
	 */
	public List<Province> getListProvince(Province p) {
		return regionDao.getListProvince(p);
	}
	/**
	 * 根据参数来获取所有市
	 */
	@Override
	public List<City> getListCity(City c) {
		return regionDao.getListCity(c);
	}
	/**
	 * 根据参数来获取所有县
	 */
	@Override
	public List<City> getCityByProvince(County c) {
		return regionDao.getCityByprovince(c);
	}
	/**
	 * 添加单位
	 */
	@Override
	public int insertRegion(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return regionDao.insertRegion(map);
	}

}

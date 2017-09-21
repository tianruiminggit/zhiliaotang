package com.d.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.RegionManagerDao;
import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;
import com.d.entity.RegionTreeNode;
import com.d.service.RegionManagerService;

@Service
public class RegionManagerServiceImp implements RegionManagerService {

	@Autowired
	private RegionManagerDao regionDao;
	@Override
	public List<Province> getListProvince(Province p) {
		return regionDao.getListProvince(p);
	}
	@Override
	public List<City> getListCity(City c) {
		return regionDao.getListCity(c);
	}
	@Override
	public List<City> getCityByProvince(County c) {
		return regionDao.getCityByprovince(c);
	}
	@Override
	public int insertRegion(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return regionDao.insertRegion(map);
	}
	@Override
	public List<RegionTreeNode> tree(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return regionDao.tree(map);
	}

}

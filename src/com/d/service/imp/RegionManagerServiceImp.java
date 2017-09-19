package com.d.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.RegionManagerDao;
import com.d.entity.Province;
import com.d.service.RegionManagerService;

@Service
public class RegionManagerServiceImp implements RegionManagerService {

	@Autowired
	private RegionManagerDao regionDao;
	@Override
	public List<Province> getListProvince() {
		return regionDao.getListProvince();
	}

}

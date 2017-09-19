package com.d.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.entity.Province;
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

	/**
	 * ��ȡ����ʡ��
	 * @return
	 */
	@RequestMapping("/getProvince")
	@ResponseBody
	public List<Province> getListProvince(){
		List<Province> list = regionService.getListProvince();
		return list;
		
	}
}

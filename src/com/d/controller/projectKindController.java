package com.d.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d.entity.Projectkind;
import com.d.service.leibeishezhiService;

@Controller
@RequestMapping("/projectKindController")
public class projectKindController {
	/**
	 * 
	 * �����������service����
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	/**
	 * ��ѯ���е������Ϣ ����JSON����
	 * @return
	 */
	@RequestMapping("/getProjectKidJson")
	public Projectkind getlistProjectKid(){
		Projectkind projectkind = new Projectkind();
		return projectkind;
	}
	
}

package com.d.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.entity.Declar;
import com.d.entity.DeclarNode;
import com.d.service.DeclarService;
import com.d.util.UserCard;
import com.sun.org.apache.regexp.internal.recompile;

@Controller
@RequestMapping("/declar")
public class DeclarController {
	@Autowired
	private DeclarService declarService;
	
	/**
	 * 添加申报项目
	 * @param d
	 * @return
	 */
	@RequestMapping("/insert")
	public String insertDeclar(Declar d){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYYMMddHHmmss");
		d.setDeclar_id(simpleDateFormat.format(new Date()));
		declarService.insertDeclar(d);
		return "ads";
	}
	/**
	 * 
	 * @param description
	 * @return
	 */
	@RequestMapping("/find")
	@ResponseBody
	public List<Declar> findDeclar(){
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("level", UserCard.LEVEL);
		m.put("region", UserCard.REGION);
		return declarService.findDeclar(m);
	}
	
	@RequestMapping("/node")
	@ResponseBody
	public List<DeclarNode> findNode(String tableName,String id){
		Map<String, Object> m = new HashMap<String, Object>();
		List<DeclarNode> list = new ArrayList<DeclarNode>();
		if(tableName!=null){
			m.put("name", tableName);
		}
		m.put("id", id);
		list = declarService.findNode(m);
		if(tableName==null) {
			for(DeclarNode d : list){
				d.setChildren(findNode("child",d.getId()));
			}
		}
		if("child".equals(tableName)){
			for(DeclarNode d : list){
				d.setChildren(findNode("declar",d.getId()));
			}
			return list;
		}
		
		return list;
	}
}

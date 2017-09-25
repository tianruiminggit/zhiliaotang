package com.d.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d.Tree.TreeNode;
import com.d.entity.Kindchild;
import com.d.entity.Projectkind;
import com.d.service.leibeishezhiService;
import com.d.util.TreeNodeUtil;
import com.google.gson.Gson;

@Controller
@RequestMapping("/projectKindController")

public class projectKindController {
	
	/**
	 * 
	 * 创建类别设置的service对象
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	private static int shangjinum;//用于统计上级表中的数据条数，用于插入语句时的id
	private static int xiajinum;
	/**
	 * 查询所有的类别信息 返回JSON数据
	 * @return
	 */
	/*@RequestMapping("/getProjectKidJson")
	@ResponseBody
	public List<TreeNode> getlistProjectKid(){
		List<TreeNode> list = leibeishezhi.getlistProjectkind();
		List<TreeNode> newList = TreeNodeUtil.getFatherTreeNode(list);//调用生成树关系的工具类
		Gson gson = new Gson();//Gson需要到Gson包 用于生产json数据
		System.out.println(gson.toJson(newList));		
		return newList;
	}
	*/
	/**
	 * 生成左边树方法二  
	 * @param table
	 * @param id
	 * @return
	 */
	@RequestMapping("/tree")
	@ResponseBody
	public List<TreeNode>   tree(String table,String id){
		Map<String, Object> map = new HashMap<>();
		if(table==null){//如果页面没有传表名过来 就自己给他添加一个表
			map.put("tablename", "tb_projectkind");
		}else{
			map.put("tablename", table);
		}
		map.put("id",id);//第一次调用不起作用，没有传值，为下面用递归是起作用
		
		List<TreeNode> list = leibeishezhi.tree(map);//调用service中的生成树方法，并把map参数传进去
		if(table==null){
			for(TreeNode a:list){
				//添加子节点 并递归
				a.setChildren(tree("tb_kindchild", a.getId()));
			}			
		}
		//如果表为子表 
		if("tb_kindchild".equals(table)){
			return list;
		}
		//查询父表中有多少条数据
				shangjinum = leibeishezhi.getlistProjectkind(new Projectkind()).size();
				
		return list;
	}
	//调用service中的查询父类方法
	@RequestMapping("/selectprojectkind")
	@ResponseBody
	public List<Projectkind> getlistProjectkind( Projectkind p){		
		System.out.println(shangjinum);
		System.out.println(xiajinum);
			List<Projectkind> list = leibeishezhi.getlistProjectkind(p);
		return list;
	}
	/*查询子表数据*/
	@RequestMapping("/selectchild")
	@ResponseBody
	public List<Kindchild> getkindchild(Kindchild kind_id) {
		System.out.println("页面穿过来的kind——id"+kind_id.getKind_id());
		List<Kindchild> list = leibeishezhi.getkindchild(kind_id);
		
		return list;
	}
	
	/**
	 * 
	 * @param table
	 * @param kind_id
	 * @param kind_name
	 * @param child_id
	 * @param child_name
	 * @return
	 */
	@RequestMapping("/insert")

	public String insert(String table,Integer kind_id,String kind_name,Integer child_id,String child_name	,String XGA ){
	System.out.println("进入到controller");
	
		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		//当插入一级目录时
		if(kind_id==null || kind_id==0){
			System.out.println("上级表的条数："+shangjinum);
			kind_id= shangjinum+1;
			System.out.println("加后的上级表条数："+kind_id);
		}
		
		Kindchild kind= new Kindchild();
		kind.setKind_id(kind_id.toString());
		
		//当插入二级目录时 把父类的id传到数据库中 查询出该父类下的子类条数
		xiajinum =  leibeishezhi.getkindchild(kind).size();
		map.put("kind_id", kind_id);
		map.put("kind_name", kind_name);
		if(child_id==null || child_id==0){
			System.out.println("下级表条数："+xiajinum);			
				child_id=kind_id*10+xiajinum+1;
		}
		map.put("child_id",child_id);
		map.put("child_name", child_name);
		int i = leibeishezhi.insertprojectkind(map);
		System.out.println("返回的插入成功是否的返回值："+i);
		return "XTguanli/leibieshezhi";
	}
/**
 * 修改表格数据
 * @param table
 * @param kind_id
 * @param kind_name
 * @param child_id
 * @param child_name
 * @param XGA
 * @return
 */
	@RequestMapping("updatetable")
	public String update(String table,Integer kind_id,String kind_name,Integer child_id,String child_name	,String XGA ){

		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		map.put("kind_id", kind_id);
		map.put("kind_name", kind_name);
		map.put("child_id", child_id);
		map.put("child_name", child_name);
		int aa = leibeishezhi.updatetable(map);
		
		return "XTguanli/leibieshezhi";
	}
	
}

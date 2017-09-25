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
	 * ����������õ�service����
	 * 
	 */
	@Autowired
	private leibeishezhiService leibeishezhi;
	private static int shangjinum;//����ͳ���ϼ����е��������������ڲ������ʱ��id
	private static int xiajinum;
	/**
	 * ��ѯ���е������Ϣ ����JSON����
	 * @return
	 */
	/*@RequestMapping("/getProjectKidJson")
	@ResponseBody
	public List<TreeNode> getlistProjectKid(){
		List<TreeNode> list = leibeishezhi.getlistProjectkind();
		List<TreeNode> newList = TreeNodeUtil.getFatherTreeNode(list);//������������ϵ�Ĺ�����
		Gson gson = new Gson();//Gson��Ҫ��Gson�� ��������json����
		System.out.println(gson.toJson(newList));		
		return newList;
	}
	*/
	/**
	 * ���������������  
	 * @param table
	 * @param id
	 * @return
	 */
	@RequestMapping("/tree")
	@ResponseBody
	public List<TreeNode>   tree(String table,String id){
		Map<String, Object> map = new HashMap<>();
		if(table==null){//���ҳ��û�д��������� ���Լ��������һ����
			map.put("tablename", "tb_projectkind");
		}else{
			map.put("tablename", table);
		}
		map.put("id",id);//��һ�ε��ò������ã�û�д�ֵ��Ϊ�����õݹ���������
		
		List<TreeNode> list = leibeishezhi.tree(map);//����service�е�����������������map��������ȥ
		if(table==null){
			for(TreeNode a:list){
				//����ӽڵ� ���ݹ�
				a.setChildren(tree("tb_kindchild", a.getId()));
			}			
		}
		//�����Ϊ�ӱ� 
		if("tb_kindchild".equals(table)){
			return list;
		}
		//��ѯ�������ж���������
				shangjinum = leibeishezhi.getlistProjectkind(new Projectkind()).size();
				
		return list;
	}
	//����service�еĲ�ѯ���෽��
	@RequestMapping("/selectprojectkind")
	@ResponseBody
	public List<Projectkind> getlistProjectkind( Projectkind p){		
		System.out.println(shangjinum);
		System.out.println(xiajinum);
			List<Projectkind> list = leibeishezhi.getlistProjectkind(p);
		return list;
	}
	/*��ѯ�ӱ�����*/
	@RequestMapping("/selectchild")
	@ResponseBody
	public List<Kindchild> getkindchild(Kindchild kind_id) {
		System.out.println("ҳ�洩������kind����id"+kind_id.getKind_id());
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
	System.out.println("���뵽controller");
	
		Map<String, Object> map = new HashMap<>();
		map.put("tablename", table);
		//������һ��Ŀ¼ʱ
		if(kind_id==null || kind_id==0){
			System.out.println("�ϼ����������"+shangjinum);
			kind_id= shangjinum+1;
			System.out.println("�Ӻ���ϼ���������"+kind_id);
		}
		
		Kindchild kind= new Kindchild();
		kind.setKind_id(kind_id.toString());
		
		//���������Ŀ¼ʱ �Ѹ����id�������ݿ��� ��ѯ���ø����µ���������
		xiajinum =  leibeishezhi.getkindchild(kind).size();
		map.put("kind_id", kind_id);
		map.put("kind_name", kind_name);
		if(child_id==null || child_id==0){
			System.out.println("�¼���������"+xiajinum);			
				child_id=kind_id*10+xiajinum+1;
		}
		map.put("child_id",child_id);
		map.put("child_name", child_name);
		int i = leibeishezhi.insertprojectkind(map);
		System.out.println("���صĲ���ɹ��Ƿ�ķ���ֵ��"+i);
		return "XTguanli/leibieshezhi";
	}
/**
 * �޸ı������
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

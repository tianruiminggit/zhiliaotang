package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.Tree.TreeNode;
import com.d.entity.Kindchild;
import com.d.entity.Projectkind;

public interface leibeishezhiService {
/**
 * ��ѯ���и�����𷽷� service�ӿ�
 * ������Ĳ���Ϊ��ʱ����ѯ���еĸ���
 */
	public List<Projectkind> getlistProjectkind(Projectkind p);
	
	/**
	 * ��ѯ���� ������Ĳ���Ϊ��ʱ ��ѯ��������
	 * @param K
	 * @return
	 */
	public List<Kindchild> getkindchild(Kindchild K);
	/**
	 * ����������  service�ӿ�
	 */	
	public  List<TreeNode> tree(Map<String, Object> map);
	
	/**
	 *�������� 
	 * @param map
	 * @return
	 */	
	public int insertprojectkind(Map<String,Object> map); 
	/**
	 * �޸�����
	 * @param map
	 * @return
	 */
	
	public int updatetable(Map<String,Object> map);
	/**
	 * ɾ������
	 * @param map
	 * @return
	 */
	public int delete1(Map<String,Object> map);
}

package com.d.service.imp;

import java.util.List;

import org.springframework.stereotype.Service;

import com.d.DaoImpl.leibieshezhiDaoImpl;
import com.d.Tree.TreeNode;
import com.d.dao.leibieshezhiDao;
import com.d.service.leibeishezhiService;

/**
 * 
 * @author Administrator
 *
 */
@Service
public class leibeishezhiServiceImpl implements leibeishezhiService{
	//�����������dao���ʵ�ֶ���
	private leibieshezhiDao leibieshezhi = new leibieshezhiDaoImpl();
	/**
 * ��ȡ�����������Ϣ
 * 
 */
	@Override
	public List<TreeNode> getlistProjectkind() {
		// TODO Auto-generated method stub
		return null;
	}

}

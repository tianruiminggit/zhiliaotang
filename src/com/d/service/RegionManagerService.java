package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;
import com.d.entity.RegionTreeNode;

/**
 * 
 * @author Administrator
 *
 */
public interface RegionManagerService {

	/**
	 * ���ݲ�������ȡ����ʡ
	 * ������Ϊnullʱ����ȡ����ʡ
	 * @param p
	 * @return
	 */
	List<Province> getListProvince(Province p);
	/**
	 * ���ݲ�������ȡ������
	 * ������Ϊnullʱ����ȡ������
	 * @param c
	 * @return
	 */
	List<City> getListCity(City c);
	/**
	 * ���ݲ�������ȥ�أ�������ΪNullʱ ��ȡ������
	 * @param c
	 * @return
	 */
	List<City> getListCounty(County c);
	/**
	 * ����ѡ����ӵ�λ�������������
	 * @param map
	 * @return
	 */
	int insertRegion(Map<String, Object> map);
	List<RegionTreeNode> tree(Map<String, Object> map);
}

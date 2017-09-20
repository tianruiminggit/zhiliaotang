package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.entity.City;
import com.d.entity.County;
import com.d.entity.Province;

public interface RegionManagerDao {

	/**
	 * ���ݲ�������ȡ����ʡ
	 * ������Ϊnullʱ����ȡ����
	 * @param p
	 * @return
	 */
	public List<Province> getListProvince(Province p);
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
	public List<City> getCityByprovince(County c);
	public int insertRegion(Map<String, Object> map);
}

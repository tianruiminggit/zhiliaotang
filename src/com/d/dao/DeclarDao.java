package com.d.dao;

import java.util.List;
import java.util.Map;

import com.d.entity.Declar;
import com.d.entity.DeclarNode;

public interface DeclarDao {
	/**
	 * ����
	 * @param d
	 */
	void insertDeclar(Declar d);

	List<Declar> findDeclar(Map<String, Object> m);

	List<DeclarNode> findNode(Map<String, Object> m);

}

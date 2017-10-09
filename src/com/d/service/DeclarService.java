package com.d.service;

import java.util.List;
import java.util.Map;

import com.d.entity.Declar;
import com.d.entity.DeclarNode;

public interface DeclarService {

	/**
	 * ≤Â»Î
	 * @param d
	 */
	void insertDeclar(Declar d);

	List<Declar> findDeclar(Map<String, Object> m);

	List<DeclarNode> findNode(Map<String, Object> m);
}

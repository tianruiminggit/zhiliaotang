package com.d.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d.dao.DeclarDao;
import com.d.entity.Declar;
import com.d.entity.DeclarNode;
import com.d.service.DeclarService;

@Service
public class DeclarServiceImpl implements DeclarService {

	@Autowired
	private DeclarDao declarDao;
	@Override
	public void insertDeclar(Declar d) {
		declarDao.insertDeclar(d);
	}
	@Override
	public List<Declar> findDeclar(Map<String, Object> m) {
		return declarDao.findDeclar(m);
	}
	@Override
	public List<DeclarNode> findNode(Map<String, Object> m) {
		return declarDao.findNode(m);
	}

}

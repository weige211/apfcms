package com.hic.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hic.mapper.Sys_menuMapper;
import com.hic.model.Sys_menu;
import com.hic.service.ISys_menuService;

@SuppressWarnings("hiding")
@Service
public class Sys_menuServiceImpl<Sys_menu, Inter> implements ISys_menuService {

	@Resource
	private Sys_menuMapper dao;

	public com.hic.model.Sys_menu getByID(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}

	public List<com.hic.model.Sys_menu> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAllList();
	}

	public int add(com.hic.model.Sys_menu record) {
		// TODO Auto-generated method stub
		return dao.insertSelective(record);
	}

	public int modifyByKey(com.hic.model.Sys_menu record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKeySelective(record);
	}

	public int delByKey(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

	
}

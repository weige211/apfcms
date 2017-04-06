package com.hic.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hic.mapper.Sys_RoleMapper;
import com.hic.model.Sys_Role;
import com.hic.service.ISys_RoleService;

@Service
public class Sys_RoleServiceImpl implements ISys_RoleService {

	@Resource
	private Sys_RoleMapper dao;

	public Sys_Role getByID(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}

	public List<Sys_Role> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAllList();
	}

	public int add(Sys_Role record) {
		// TODO Auto-generated method stub
		return dao.insertSelective(record);
	}

	public int modifyByKey(Sys_Role record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKeySelective(record);
	}

	public int delByKey(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

}

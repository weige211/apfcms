package com.hic.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hic.mapper.Sys_UserMapper;
import com.hic.model.Sys_User;
import com.hic.service.ISys_UserService;

@SuppressWarnings("hiding")
@Service
public class Sys_UserServiceImpl<Sys_User, String> implements ISys_UserService {

	@Resource
	private Sys_UserMapper dao;

	public com.hic.model.Sys_User getByID(java.lang.String id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}

	public List<com.hic.model.Sys_User> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAllList();
	}

	public int add(com.hic.model.Sys_User record) {
		// TODO Auto-generated method stub
		return dao.insertSelective(record);
	}

	public int modifyByKey(com.hic.model.Sys_User record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKeySelective(record);
	}

	public int delByKey(java.lang.String id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

	public com.hic.model.Sys_User queryByName(java.lang.String name) {
		// TODO Auto-generated method stub
		return dao.selectByName(name);
	}

	
}

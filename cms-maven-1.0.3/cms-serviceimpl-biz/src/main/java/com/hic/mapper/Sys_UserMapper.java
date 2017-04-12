package com.hic.mapper;

import java.util.List;

import com.hic.model.Sys_User;

public interface Sys_UserMapper {
	int deleteByPrimaryKey(String uid);

	int insert(Sys_User record);

	int insertSelective(Sys_User record);

	Sys_User selectByPrimaryKey(String uid);

	int updateByPrimaryKeySelective(Sys_User record);

	int updateByPrimaryKey(Sys_User record);

	List<Sys_User> selectAllList();

	Sys_User selectByName(String username);
}
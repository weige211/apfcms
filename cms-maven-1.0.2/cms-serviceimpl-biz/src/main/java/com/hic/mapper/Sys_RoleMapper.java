package com.hic.mapper;

import java.util.List;

import com.hic.model.Sys_Role;

public interface Sys_RoleMapper {
	int deleteByPrimaryKey(Integer rid);

	int insert(Sys_Role record);

	int insertSelective(Sys_Role record);

	Sys_Role selectByPrimaryKey(Integer rid);

	int updateByPrimaryKeySelective(Sys_Role record);

	int updateByPrimaryKey(Sys_Role record);

	List<Sys_Role> selectAllList();
}
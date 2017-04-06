package com.hic.mapper;

import java.util.List;

import com.hic.model.Sys_menu;

public interface Sys_menuMapper {
	int deleteByPrimaryKey(Integer mid);

	int insert(Sys_menu record);

	int insertSelective(Sys_menu record);

	Sys_menu selectByPrimaryKey(Integer mid);

	int updateByPrimaryKeySelective(Sys_menu record);

	int updateByPrimaryKey(Sys_menu record);

	List<Sys_menu> selectAllList();
}
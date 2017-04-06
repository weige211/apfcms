package com.hic.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hic.mapper.Cms_CategoryMapper;
import com.hic.model.Cms_Category;
import com.hic.service.ICms_CategoryService;
@Service
public class Cms_CategoryServiceImpl implements ICms_CategoryService {

	@Resource
	private Cms_CategoryMapper dao;

	public Cms_Category getByID(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}

	public List<Cms_Category> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAllList();
	}

	public int add(Cms_Category record) {
		// TODO Auto-generated method stub
		return dao.insertSelective(record);
	}

	public int modifyByKey(Cms_Category record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKeySelective(record);
	}

	public int delByKey(Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

	public List<Cms_Category> getPage(String catename, int start, int pagesize) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getCount() {
		// TODO Auto-generated method stub
		return 0;
	}


	

}

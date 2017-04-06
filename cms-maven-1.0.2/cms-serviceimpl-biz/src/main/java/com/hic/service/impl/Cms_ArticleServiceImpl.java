package com.hic.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hic.mapper.Cms_ArticleMapper;

import com.hic.model.Cms_Article;
import com.hic.service.ICms_ArticleService;

@SuppressWarnings("hiding")
@Service
public class Cms_ArticleServiceImpl<Cms_Article, Integer> implements
		ICms_ArticleService {

	@Resource
	private Cms_ArticleMapper dao = null;

	public com.hic.model.Cms_Article getByID(java.lang.Integer id) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(id);
	}

	public List<com.hic.model.Cms_Article> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAllList();
	}

	public int add(com.hic.model.Cms_Article record) {
		// TODO Auto-generated method stub
		return dao.insertSelective(record);
	}

	public int modifyByKey(com.hic.model.Cms_Article record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKeySelective(record);
	}

	public int delByKey(java.lang.Integer id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

	public List<com.hic.model.Cms_Article> getPage(String title, int start,
			int pagesize) {
		// TODO Auto-generated method stub
		return dao.selectPage(title, start, pagesize);
	}

	public int getCount() {
		// TODO Auto-generated method stub
		return dao.getCount();
	}

	public List<com.hic.model.Cms_Article> getPageByCid(int cid, int start,
			int pagesize) {
		// TODO Auto-generated method stub
		return dao.selectPageByCid(cid, start, pagesize);
	}

	public int getCountBycid(int cid) {
		// TODO Auto-generated method stub
		return dao.getCountBycid(cid);
	}

	

}

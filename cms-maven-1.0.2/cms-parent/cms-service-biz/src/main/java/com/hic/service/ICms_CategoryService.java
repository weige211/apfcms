package com.hic.service;

import java.util.List;

import com.hic.model.Cms_Category;

public interface ICms_CategoryService extends IBaseService<Cms_Category,Integer> {
	List<Cms_Category> getPage(String catename, int start, int pagesize);

	//
	int getCount();
}

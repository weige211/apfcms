package com.hic.service;

import java.util.List;


import com.hic.model.Cms_Article;

public interface ICms_ArticleService extends IBaseService<Cms_Article, Integer> {

	List<Cms_Article> getPage(String title, int start, int pagesize);

	int getCount();
	
	List<Cms_Article> getPageByCid(int cid,int start,int pagesize);
	
	int getCountBycid(int cid);

}

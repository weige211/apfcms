package com.hic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hic.model.Cms_Article;

public interface Cms_ArticleMapper {
	int deleteByPrimaryKey(Integer aid);

	int insert(Cms_Article record);

	int insertSelective(Cms_Article record);

	Cms_Article selectByPrimaryKey(Integer aid);

	int updateByPrimaryKeySelective(Cms_Article record);

	int updateByPrimaryKeyWithBLOBs(Cms_Article record);

	int updateByPrimaryKey(Cms_Article record);

	List<Cms_Article> selectAllList();

	List<Cms_Article> selectPage(@Param("title") String title,
			@Param("start") int start, @Param("pagesize") int pagesize);
	
	int getCount();
	
	List<Cms_Article> selectPageByCid(@Param("cid") Integer cid,
			@Param("start") int start, @Param("pagesize") int pagesize);
	
	int getCountBycid(Integer cid);
};
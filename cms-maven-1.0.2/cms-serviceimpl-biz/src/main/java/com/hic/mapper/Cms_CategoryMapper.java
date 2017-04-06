package com.hic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hic.model.Cms_Category;

public interface Cms_CategoryMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Cms_Category record);

    int insertSelective(Cms_Category record);

    Cms_Category selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Cms_Category record);

    int updateByPrimaryKey(Cms_Category record);
    
    List<Cms_Category>selectAllList();
    
    int getCount();
    
   List<Cms_Category> selectPage(@Param("catename") String catename,
			@Param("start") int start, @Param("pagesize") int pagesize);
}
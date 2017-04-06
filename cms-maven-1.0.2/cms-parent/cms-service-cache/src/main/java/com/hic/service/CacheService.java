package com.hic.service;

public interface CacheService<T> {
	
	
	// 刷新缓存数据 
	void refresh(String key, T target);  
	//获取缓存 
	T getCache(String key);  
	//判断缓存是否过期 
	Boolean isExpired(String key);
	
	//void setExpired(Long millsec); 
	void setExpired(Long millsec);  
	//是否存在缓存对象 
	  Boolean exist(String key); 
}

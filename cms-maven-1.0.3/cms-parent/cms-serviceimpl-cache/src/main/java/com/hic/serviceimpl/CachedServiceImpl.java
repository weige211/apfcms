package com.hic.serviceimpl;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.hic.service.CacheService;


public class CachedServiceImpl<T> implements CacheService<T> {

	// 缓存数据索引
	private Map<String, LastCache<T>> cache = new ConcurrentHashMap<String, LastCache<T>>();
	// 缓存超时时间，单位：毫秒
	private Long expired = 0L;

	public CachedServiceImpl() {
		this(5 * 1000 * 60L);
	}

	public CachedServiceImpl(Long expired) {
		this.expired = expired;
	}

	public void refresh(String key, T target) {
		// TODO Auto-generated method stub

		if (cache.containsKey(key)) {
			cache.remove(key);
		}
		cache.put(key, new LastCache<T>(target));

	}

	public T getCache(String key) {
		if (!this.exist(key)) {
			return null;
		}

		return cache.get(key).getData();

	}

	public Boolean isExpired(String key) {
		if (!this.exist(key)) {
			return null;
		}

		long currtime = new Date().getTime();
		long lasttime = cache.get(key).getRefreshtime();

		return (currtime - lasttime) > expired;

	}

	public void setExpired(Long millsec) {
		// TODO Auto-generated method stub

		this.expired = millsec;

	}

	public Boolean exist(String key) {
		// TODO Auto-generated method stub
		return cache.containsKey(key);
	}

}

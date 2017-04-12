package com.hic.service;

import java.util.List;

public interface IBaseService<T, paraT> {
	public T getByID(paraT id);

	public List<T> getAll();

	public int add(T record);

	public int modifyByKey(T record);

	public int delByKey(paraT id);
}

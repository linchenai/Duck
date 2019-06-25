package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.vo.wishProduct;

public interface wishMapper {

	public List<wishProduct> selectAll();
	public void AddToWish(String name);	
	public void wishDelete(String name);
}

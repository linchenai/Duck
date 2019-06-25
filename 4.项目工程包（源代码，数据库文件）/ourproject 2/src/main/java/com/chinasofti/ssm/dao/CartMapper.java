package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.vo.CartProduct;

public interface CartMapper {

	public List<CartProduct> selectAll();
	public void cartDelete(String name);
	public void AddToCart(String name);
	
}

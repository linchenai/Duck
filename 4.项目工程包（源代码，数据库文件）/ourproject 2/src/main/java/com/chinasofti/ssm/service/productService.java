package com.chinasofti.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.dao.productMapper;
import com.chinasofti.ssm.vo.product;

@Service
public class productService {
	@Autowired
	productMapper productMapper;
    
	public List<product> selectAllproduct(){
		return productMapper.selectAllproduct();
	}
	
	public List<product> forAllproduct(){
		return productMapper.forAllproduct();
	}
	
	public List<product> searchproduct(String keyword){
		
		return productMapper.searchproduct(keyword);
	}
}

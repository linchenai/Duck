package com.chinasofti.ssm.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chinasofti.ssm.dao.wishMapper;
import com.chinasofti.ssm.vo.wishProduct;


@Service
public class wishService {

	@Autowired
	wishMapper wishMapper;
	private static Logger log = Logger.getLogger(CartService.class);
	public List<wishProduct> wishselectAll() {
		log.error("//Wish selectAll:");
		return wishMapper.selectAll();
	}
	
	public void AddToWish(String name){
		log.error("//Wish AddToWish:");
		wishMapper.AddToWish(name);
	}
	
	public void WishDelete(String name){
		log.error("//Cart CartDelete:");
	    wishMapper.wishDelete(name);
	}
}

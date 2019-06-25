package com.chinasofti.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.productService;
import com.chinasofti.ssm.vo.product;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class productController {
	
	@Autowired
	productService productService;
    
	@RequestMapping(value="shop",method=RequestMethod.GET)
	public ModelAndView selectAllproduct() {
		ModelAndView mv = new ModelAndView();
		List<product> productList=productService.selectAllproduct();
		mv.setViewName("shop");
		mv.addObject("productList",productList);
		for(product c:productList)
		{
			System.out.println(c.toString());
		}
		return mv;
	}
	
	@RequestMapping(value="shop-detail",method=RequestMethod.GET)
	public ModelAndView forAllproduct() {
		ModelAndView mv = new ModelAndView();
		List<product> productList=productService.forAllproduct();
		mv.setViewName("shop-detail");
		mv.addObject("productList",productList);
		return mv;
	}
}

package com.chinasofti.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.productService;
import com.chinasofti.ssm.vo.product;

@Controller
public class searchController {
	
	@Autowired
	productService productService;
    
	@RequestMapping(value="searchresult",method=RequestMethod.POST)
	public ModelAndView searchproduct(@RequestParam("keyword") String keyword,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<product> productList=productService.searchproduct(keyword);
		mv.addObject("productList",productList);
		for(product c:productList)
		{
			System.out.println(c.toString());
		}
		session.setAttribute("productList", productList);
		mv.setViewName("searchresult");
		return mv;
	}

}

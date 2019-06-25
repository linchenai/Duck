package com.chinasofti.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.wishService;
import com.chinasofti.ssm.vo.wishProduct;

@Controller
public class wishController {
	@Autowired
	wishService wishService;
	
	@RequestMapping("/wish-list")
	 public ModelAndView shopcart(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		List<wishProduct> wishProductList=wishService.wishselectAll();
		for(wishProduct p:wishProductList)
			System.out.println(p.toString());
		mv.addObject("wishProductList",wishProductList);
		mv.setViewName("wish-list");
		return mv;
   }
	
	@RequestMapping(value="AddToWish",method=RequestMethod.GET)
	@ResponseBody
	public void AddToWish(@RequestParam("name") String name,HttpSession session) {
		wishService.AddToWish(name);
        System.out.println(name);
	}
	
	@RequestMapping(value="WishDelete",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView WishDelete(@RequestParam("name") String name,HttpSession session) {
		wishService.WishDelete(name);
		ModelAndView mv = new ModelAndView();
		System.out.println("sssss"+name);
		mv.setViewName("wish-list");
		return mv;
		
	}
}

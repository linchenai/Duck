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

import com.chinasofti.ssm.service.CartService;
import com.chinasofti.ssm.vo.CartProduct;

@Controller
public class CartController {
	@Autowired
	CartService cartService;
	
	@RequestMapping("/shop-cart")
	 public ModelAndView shopcart(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		List<CartProduct> CartProductList=cartService.CartselectAll();
		for(CartProduct p:CartProductList)
			System.out.println(p.toString());
		mv.addObject("CartProductList",CartProductList);
		mv.setViewName("shop-cart");
		return mv;
   }
	
	@RequestMapping(value="AddToCart",method=RequestMethod.GET)
	@ResponseBody
	public void AddToCart(@RequestParam("name") String name,HttpSession session) {
		cartService.AddToCart(name);
		System.out.println(name);
	}
	
	@RequestMapping(value="CartDelete",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView CartDelete(@RequestParam("name") String name,HttpSession session) {
		cartService.CartDelete(name);
		ModelAndView mv = new ModelAndView();
		System.out.println(name);
		mv.setViewName("shop-cart");
		return mv;
		
	}
	
}

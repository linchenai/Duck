package com.chinasofti.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
public class searchDetailController {
       
	@Autowired
	productService productService;
	
	@RequestMapping(value="searchDetail",method=RequestMethod.GET)
	public ModelAndView searchDetail(@RequestParam("pro_image") String image,@RequestParam("pro_info") String info, @RequestParam("pro_price")  double price) throws IOException
	{		
        ModelAndView mv = new ModelAndView();
        mv.addObject("pro_image", image);
        mv.addObject("pro_info", info);
        mv.addObject("pro_price", price);
       
		mv.setViewName("searchDetail");
        return mv;	
	}
}

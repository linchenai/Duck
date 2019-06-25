package com.chinasofti.ssm.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class jumpController {
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView index() throws IOException
	{		
        ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
        return mv;	
	}
	
	@RequestMapping(value="detail",method=RequestMethod.GET)
	public ModelAndView detail() throws IOException
	{		
        ModelAndView mv = new ModelAndView();
		mv.setViewName("shop-detail");
        return mv;	
	}

	
	@RequestMapping(value="check-out",method=RequestMethod.GET)
	public ModelAndView check() throws IOException
	{		
        ModelAndView mv = new ModelAndView();
		mv.setViewName("check-out");
        return mv;	
	}
	
	@RequestMapping(value="per_index",method=RequestMethod.GET)
	public ModelAndView perindex() throws IOException
	{		
        ModelAndView mv = new ModelAndView();
		mv.setViewName("per_index");
        return mv;	
	}

	
	
}

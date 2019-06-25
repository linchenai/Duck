package com.chinasofti.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.reviewService;
import com.chinasofti.ssm.vo.review;

@Controller
public class reviewController {
	@Autowired
	reviewService reviewService;
	
	@RequestMapping(value="commitreview",method=RequestMethod.POST)
	public void commitreview(@RequestParam("review") String review,HttpSession session) {
		reviewService.commitreview(review);
	}
	
}

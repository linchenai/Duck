package com.chinasofti.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.UserService;
import com.chinasofti.ssm.vo.User;

@Controller
@SessionAttributes("user")
public class pagesController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "To_per_index", method = RequestMethod.GET)
	public String to_per_index(User user, Model model) {

		return "per_index";

	}

	@RequestMapping(value = "To_information", method = RequestMethod.GET)
	public String to_information(User user,HttpServletRequest req, Model model) throws IOException {
		// 首先要对数据库做一次查询 才跳转到info
		//User user = userService.selectInfoByUser((User) req.getSession().getAttribute("user"));
		System.out.println("user_account:"+user.getAccount());
		
		//model.addAttribute("user", user);
		return "information";

	}

	@RequestMapping(value = "To_safety", method = RequestMethod.GET)
	public String to_safety(User user, Model model) {

		return "safety";

	}

	@RequestMapping(value = "To_password", method = RequestMethod.GET)
	public String to_password(User user, Model model) {

		return "password";

	}

	@RequestMapping(value = "To_question", method = RequestMethod.GET)
	public String to_question(User user, Model model) {

		return "question";

	}

	@RequestMapping(value = "To_address", method = RequestMethod.GET)
	public String to_address(User user, Model model) {

		return "address";

	}
	
	@RequestMapping(value = "comment", method = RequestMethod.GET)
	public String to_comment(User user, Model model) {

		return "comment";

	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String to_order(User user, Model model) {

		return "order";

	}

}

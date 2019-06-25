package com.chinasofti.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.UserService;
//import com.chinasofti.ssm.util.Encrypt;
import com.chinasofti.ssm.vo.User;

@Controller
@SessionAttributes("user")
public class RegisterController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String gotoRegister() {
		return "register";		
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public ModelAndView register(
			@RequestParam("username") String username,
			@RequestParam("password") String pwd,
			@RequestParam("passwordRepeat") String pwdr,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		//user.setEmail(email);
		if(!pwd.equals(pwdr)) {
			System.out.println("两次密码输入不一致");
			mv.setViewName("register");
		}
		else {
			user.setAccount(username);
			user.setPassword(pwd);
			if(userService.register(user)) 
			{
				mv.addObject("user",user);
				mv.setViewName("per_index");
			}
			else {
				System.out.println("注册失败");
				mv.setViewName("register");
			}
		}
		return mv;
	}
}


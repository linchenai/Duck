package com.chinasofti.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import java.io.File;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.ssm.service.UserService;
import com.chinasofti.ssm.vo.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import org.springframework.validation.Errors;

@Controller
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	UserService userService;
	//public static String usrname;
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String gotoLogin(Model model) {
		//创建User对象
		User user = new User();
		
		model.addAttribute(user);
		
		return "login";		
	}

	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(@Valid User user,Errors errors,HttpServletRequest req) 
			throws IOException
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		if(errors.hasErrors()) {
			mv.setViewName("login");
		}else {
			
			String username=user.getAccount();
			String password=user.getPassword();
		
		
			System.out.println("username:"+user.getAccount());
			System.out.println("psd:"+user.getPassword());
			//ModelAndView mv = new ModelAndView();
			//调用Service层处理
			int check =userService.login(username,password);
		
			if(check==1){
				System.out.println("连接数据库登录成功");
       	
				mv.setViewName("per_index");
            
			}else{
				System.out.println("连接数据库登录失败");
				mv.setViewName("login");
			}
		}
		return mv;	
	}
	
	@RequestMapping(value="info",method=RequestMethod.POST)
	public ModelAndView info(@Valid User user,Errors errors,HttpServletRequest request,MultipartFile photo) 
			throws IOException
	{	
		
		String username=user.getAccount();
		String password=user.getPassword();
		System.out.println("username:"+user.getAccount());
		System.out.println("psd:"+user.getPassword());
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		if(errors.hasErrors()) {
			mv.setViewName("information");
			System.out.println("数据检验错误");
		}else
		{
			//调用Service层处理
			String Y=user.getBirthday_Y();
			String M=user.getBirthday_M();
			String D=user.getBirthday_D();
			user.setBirthday_Y(Y+M+D);
			
			
			//1.创建上传文件路径
			String uploadPath = request.getServletContext().getRealPath("upload");
			System.out.println("uploadPath:" + uploadPath);
			// 如果目录不存在则创建
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			//2.创建保存上传内容的文件
			//a.获取文件扩展名 例：.jpg
			String realFileName = photo.getOriginalFilename();
			String[] tmp = realFileName.split("\\.");
			String type =tmp[tmp.length-1];
			//b.定义唯一的文件名 例：当前时间的毫秒值+a.获取的扩展名
			String fileName = ""+System.currentTimeMillis()+"."+type;
			//c.创建新文件
			String filePath = uploadPath + File.separator + fileName;
			System.out.println("filepath:"+filePath);
			//3.把文件内容写入文件
			photo.transferTo(new File(filePath));
			//4.设置表示文件的src
			String displayFileName=request.getContextPath()+File.separator + "upload"+File.separator +fileName;
			System.out.println("displayFileName:"+displayFileName);
			
			
			userService.info(user);
			user.setUrl(displayFileName);
			System.out.println("user_info 更新成功");
			mv.setViewName("information");
		}
	return mv;
	}
	
	
	@RequestMapping(value="changePSD",method=RequestMethod.POST)
	public ModelAndView changePSD(@Valid User user,Errors errors,@RequestParam("new_password")String new_password,
			@RequestParam("conf_password")String conf_password) 
			throws IOException
	{	
		
		String username=user.getAccount();
		String password=user.getPassword();
		System.out.println("username:"+user.getAccount());
		System.out.println("psd:"+user.getPassword());
		System.out.println("newpsd:"+new_password);
		System.out.println("confpsd:"+conf_password);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		if(errors.hasErrors()) {
			mv.setViewName("password");
			System.out.println("密码检验错误");
		}else
		{
			if (!new_password.equals(conf_password))
			{
				mv.setViewName("password");
				System.out.println("密码前后不符合");
			}
			else 
			{
				//检查是否允许修改
				int check =userService.login(username,password);
				
				if(check==1){
					System.out.println("密码正确，允许修改");
					user.setPassword(new_password);
					userService.updatePSDByUser(user);
					System.out.println("密码修改成功");
					
					mv.setViewName("per_index");
	            
				}else{
					System.out.println("确认密码错误，不允许修改");
	
					mv.setViewName("password");
				}
			}
			
			
		}
		return mv;
	}
	
	

	@RequestMapping(value="setQuestion",method=RequestMethod.POST)
	public ModelAndView setQuestion(User user) 
			throws IOException
	{	
		
		String username=user.getAccount();
		String password=user.getPassword();
		System.out.println("username:"+user.getAccount());
		System.out.println("psd:"+user.getPassword());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		//连库查询  id 插入另外一个表！
		
		userService.setQuestion(user);
		System.out.println("密保问题设置成功");
		mv.setViewName("per_index");
		return mv;
	}
	
	
	@RequestMapping(value="setAddress",method=RequestMethod.POST)
	public ModelAndView setAddress(User user) 
			throws IOException
	{	
		
		String username=user.getAccount();
		//String password=user.getPassword();
		System.out.println("username:"+user.getAccount());
		//System.out.println("psd:"+user.getPassword());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		//连库查询  id 插入另外一个表！
		
		userService.setAddress(user);
		
		System.out.println("地址设置成功");
		mv.setViewName("per_index");
		return mv;
	}
	
}

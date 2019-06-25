package com.chinasofti.ssm.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.dao.UserMapper;

import com.chinasofti.ssm.vo.User;


@Service
public class UserService {
	@Autowired
	UserMapper userMapper;

	public int login(String user_account,String password) throws IOException{
	

		//UserMapper um = session.getMapper(UserMapper.class);
	
		String db_pwd=userMapper.selectPWD(user_account);
		
	
		
		if (password.equals(db_pwd))
		{
			System.out.println("equals");
			return 1;
		}
		else 
		{

			System.out.println("Not equals");
			return 0;
		}
		
	}
	
	
	public void info(User user) throws IOException{
		

		//UserMapper um = session.getMapper(UserMapper.class);
	
		userMapper.updateUserInfoByName(user);
		return ;
		
		
	}
	public User selectInfoByUser(User user) throws IOException{
		

		//UserMapper um = session.getMapper(UserMapper.class);
	
		user=userMapper.selectInfoByUser(user);
		return user;
		
		
	}
	
	public void updatePSDByUser(User user) throws IOException{
		

		//UserMapper um = session.getMapper(UserMapper.class);
	
		userMapper.updatePSDByUser(user);
		
		return ;
		
		
	}
	
	public void setQuestion(User user) throws IOException{
		

		//UserMapper um = session.getMapper(UserMapper.class);
	
		int id=userMapper.setQuestion_selectid(user);
		System.out.println("id:"+id);
		user.setId(id);
		System.out.println("user_id:"+user.getId());
		userMapper.setQuestion_insertQuestion(user);
		
		return ;
		
		
	}
	
	
	public void setAddress(User user) throws IOException{
		

		//UserMapper um = session.getMapper(UserMapper.class);
	
		int id=userMapper.setQuestion_selectid(user);
		System.out.println("id:"+id);
		user.setId(id);
		System.out.println("user_id:"+user.getId());
		String add_com=user.getAdd_P()+user.getAdd_C()+user.getAdd_Z()+user.getAss_detail();
		user.setAdd_Com(add_com);
		System.out.println("user_address:"+user.getAdd_Com());
		userMapper.setAddress_insertAddress(user);
		
		return ;
		
		
	}
	
	
	public boolean register(User user) {
		User usr=userMapper.getRecordByEmail(user.getAccount());
		if(usr==null) {
			System.out.println("不存在重复，允许注册");
			System.out.println("account:"+user.getAccount());
			System.out.println("psd:"+user.getPassword());
			userMapper.save(user);
			return true;
		}
		else
		{
			System.out.println("存在重复，不允许注册");
			return false;
		}
	}
}
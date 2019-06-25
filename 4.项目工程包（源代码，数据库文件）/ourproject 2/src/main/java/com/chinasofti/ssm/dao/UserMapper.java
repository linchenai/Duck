package com.chinasofti.ssm.dao;

import java.util.List;

import com.chinasofti.ssm.vo.User;

public interface UserMapper {
	
	public String selectPWD(String user_account);
	public void  updateUserInfoByName(User user);
	public User selectInfoByUser(User user);
	public void updatePSDByUser(User user);
	public int setQuestion_selectid(User user);
	public void setQuestion_insertQuestion(User user);
	public void setAddress_insertAddress(User user);
	public User getRecordByEmail(String user_account);
	public boolean save(User user);
}


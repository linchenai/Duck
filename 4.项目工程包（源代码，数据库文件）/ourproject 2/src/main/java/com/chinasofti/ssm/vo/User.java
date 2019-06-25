package com.chinasofti.ssm.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

/*
 * 用户表对应实体类
 */
public class User implements Serializable {
	
	private static final long serialVersionUID = -603439325380668432L;
	private int id=0;
	@NotBlank(message="登录名不能为空")
	private String account;
	@Size(min=3,max=8,message="密码必须在3~8位")
	private String password;
	private String gender="NULL";
	private String phone="NULL";
	private String address="NULL";
	private String name="NULL";
	private String birthday_Y="NULL";
	private String birthday_M="NULL";
	private String birthday_D="NULL";
	private String url="NULL";
	@NotBlank(message="登录名不能为空")
	private String nickname="NULL";
	private String email="NULL";
	private String question1="NULL";
	private String answer1="NULL";
	private String question2="NULL";
	private String answer2="NULL";
	private String add_P="";
	private String add_C="";
	private String add_Z="";
	private String add_Com="";
	private String ass_detail="";
	private String add_name="";
	private String add_phone="";
	
	public String getAdd_name() {
		return add_name;
	}
	public void setAdd_name(String add_name) {
		this.add_name = add_name;
	}
	public String getAdd_phone() {
		return add_phone;
	}
	public void setAdd_phone(String add_phone) {
		this.add_phone = add_phone;
	}
	public String getAdd_Com() {
		return add_Com;
	}
	public void setAdd_Com(String add_Com) {
		this.add_Com = add_Com;
	}	
	public String getAdd_P() {
		return add_P;
	}
	public void setAdd_P(String add_P) {
		this.add_P = add_P;
	}
	public String getAdd_C() {
		return add_C;
	}
	public void setAdd_C(String add_C) {
		this.add_C = add_C;
	}
	public String getAdd_Z() {
		return add_Z;
	}
	public void setAdd_Z(String add_Z) {
		this.add_Z = add_Z;
	}
	public String getAss_detail() {
		return ass_detail;
	}
	public void setAss_detail(String ass_detail) {
		this.ass_detail = ass_detail;
	}
	public String getQuestion1() {
		return question1;
	}
	public void setQuestion1(String question1) {
		this.question1 = question1;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getQuestion2() {
		return question2;
	}
	public void setQuestion2(String question2) {
		this.question2 = question2;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}	
	public String getBirthday_Y() {
		return birthday_Y;
	}
	public void setBirthday_Y(String birthday_Y) {
		this.birthday_Y = birthday_Y;
	}
	public String getBirthday_M() {
		return birthday_M;
	}
	public void setBirthday_M(String birthday_M) {
		this.birthday_M = birthday_M;
	}
	public String getBirthday_D() {
		return birthday_D;
	}
	public void setBirthday_D(String birthday_D) {
		this.birthday_D = birthday_D;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", password=" + password + ", gender=" + gender + ", phone="
				+ phone + ", address=" + address + ", name=" + name + ", birthday_Y=" + birthday_Y + ", birthday_M="
				+ birthday_M + ", birthday_D=" + birthday_D + ", url=" + url + ", nickname=" + nickname + ", email="
				+ email + ", question1=" + question1 + ", answer1=" + answer1 + ", question2=" + question2
				+ ", answer2=" + answer2 + ", add_P=" + add_P + ", add_C=" + add_C + ", add_Z=" + add_Z + ", add_Com="
				+ add_Com + ", ass_detail=" + ass_detail + ", add_name=" + add_name + ", add_phone=" + add_phone + "]";
	}
	
	
	
}


package com.chinasofti.ssm.vo;

public class wishProduct {
	
	private int user_id;
	private int pro_id;
	private int wish_id;
	private double amount;
	private double pro_price;
	private double pro_value;
	private String pro_name;
	private String pro_info;
	private String pro_image;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getWish_id() {
		return wish_id;
	}
	public void setWish_id(int wish_id) {
		this.wish_id = wish_id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getPro_price() {
		return pro_price;
	}
	public void setPro_price(double pro_price) {
		this.pro_price = pro_price;
	}
	public double getPro_value() {
		return pro_value;
	}
	public void setPro_value(double pro_value) {
		this.pro_value = pro_value;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_image() {
		return pro_image;
	}
	public void setPro_image(String pro_image) {
		this.pro_image = pro_image;
	}
	public String getPro_info() {
		return pro_info;
	}
	public void setPro_info(String pro_info) {
		this.pro_info = pro_info;
	}
	@Override
	public String toString() {
		return "wishProduct [user_id=" + user_id + ", pro_id=" + pro_id + ", wish_id=" + wish_id + ", amount=" + amount
				+ ", pro_price=" + pro_price + ", pro_value=" + pro_value + ", pro_name=" + pro_name + ", pro_image="
				+ pro_image + ", pro_info=" + pro_info + "]";
	}
    
	
}

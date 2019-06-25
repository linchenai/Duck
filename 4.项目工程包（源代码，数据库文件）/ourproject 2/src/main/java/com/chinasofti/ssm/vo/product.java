package com.chinasofti.ssm.vo;

public class product {
	
	private String pro_name;
	private String pro_info;
	private int likey;
	private double pro_price;
	private String pro_image;
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_info() {
		return pro_info;
	}
	public void setPro_info(String pro_info) {
		this.pro_info = pro_info;
	}
	public int getLikey() {
		return likey;
	}
	public void setLikey(int likey) {
		this.likey = likey;
	}
	public double getPro_price() {
		return pro_price;
	}
	public void setPro_price(double pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_image() {
		return pro_image;
	}
	public void setPro_image(String pro_image) {
		this.pro_image = pro_image;
	}
	
	@Override
	public String toString() {
		return "product [pro_name=" + pro_name + ", pro_info=" + pro_info + ", likey=" + likey + ", pro_price="
				+ pro_price + ", pro_image=" + pro_image + "]";
	}
}

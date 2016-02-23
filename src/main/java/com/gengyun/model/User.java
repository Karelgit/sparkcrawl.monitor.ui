package com.gengyun.model;


/**
 * 数据库表user
 * @author luohongjun
 * @date 2016-02-19 16:47:28 中国标准时间
 */
public class User {

	/**
	 * 用户id
	 */
	//@Id
	private String uid;
	/**
	 * 数据库列uname
	 */
	private String uname;
	/**
	 * 数据库列pwd
	 */
	private String pwd;
	/**
	 * 数据库列usertype
	 */
	private Integer usertype;
	/**
	 * 认证key
	 */
	private String appkey;
	/**
	 * 用户描述
	 */
	//@Column("user_desp")
	private String userDesp;

	public User() {
	}
	
	public String getUid(){
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getUname(){
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getPwd(){
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public Integer getUsertype(){
		return this.usertype;
	}

	public void setUsertype(Integer usertype) {
		this.usertype = usertype;
	}
	
	public String getAppkey(){
		return this.appkey;
	}

	public void setAppkey(String appkey) {
		this.appkey = appkey;
	}
	
	public String getUserDesp(){
		return this.userDesp;
	}

	public void setUserDesp(String userDesp) {
		this.userDesp = userDesp;
	}
	
}
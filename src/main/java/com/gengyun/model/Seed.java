package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_seed
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class Seed {

	/**
	 * 数据库列seedid
	 */
	//@Id
	private String seedid;
	/**
	 * 数据库列taskid
	 */
	private String taskid;
	/**
	 * 数据库列url
	 */
	private String url;

	public Seed() {
	}
	
	public String getSeedid(){
		return this.seedid;
	}

	public void setSeedid(String seedid) {
		this.seedid = seedid;
	}
	
	public String getTaskid(){
		return this.taskid;
	}

	public void setTaskid(String taskid) {
		this.taskid = taskid;
	}
	
	public String getUrl(){
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
}
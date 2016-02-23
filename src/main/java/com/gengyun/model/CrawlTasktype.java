package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_crawl_tasktype
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class CrawlTasktype {

	/**
	 * 类型id
	 */
	//@Id
	private String tasktypeid;
	/**
	 * 类型标识
	 */
	private String type;
	/**
	 * 描述
	 */
	private String desp;

	public CrawlTasktype() {
	}
	
	public String getTasktypeid(){
		return this.tasktypeid;
	}

	public void setTasktypeid(String tasktypeid) {
		this.tasktypeid = tasktypeid;
	}
	
	public String getType(){
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getDesp(){
		return this.desp;
	}

	public void setDesp(String desp) {
		this.desp = desp;
	}
	
}
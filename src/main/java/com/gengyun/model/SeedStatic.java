package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_seed_static
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class SeedStatic {

	/**
	 * 数据库列id
	 */
	//@Id
	private Integer id;
	/**
	 * 数据库列taskid
	 */
	private String taskid;
	/**
	 * 数据库列url
	 */
	private String url;
	/**
	 * 导入数
	 */
	private Long synccount;
	/**
	 * 导入时间
	 */
	private Long synctime;

	public SeedStatic() {
	}
	
	public Integer getId(){
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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
	
	public Long getSynccount(){
		return this.synccount;
	}

	public void setSynccount(Long synccount) {
		this.synccount = synccount;
	}
	
	public Long getSynctime(){
		return this.synctime;
	}

	public void setSynctime(Long synctime) {
		this.synctime = synctime;
	}
	
}
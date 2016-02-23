package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_tasking_seed_static
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class TaskingSeedStatic {

	/**
	 * 数据库列id
	 */
	//@Id
	private Long id;
	/**
	 * 任务id
	 */
	private String taskid;
	/**
	 * 开始时间截
	 */
	private Long starttime;
	/**
	 * 种子
	 */
	private String url;
	/**
	 * 种子导入数
	 */
	private Long seedsynccount;
	/**
	 * 数据库列writeinhbasecount
	 */
	private Long writeinhbasecount;
	/**
	 * 导入时间
	 */
	private Long time;
	/**
	 * 遍数
	 */
	private Integer pass;

	public TaskingSeedStatic() {
	}
	
	public Long getId(){
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getTaskid(){
		return this.taskid;
	}

	public void setTaskid(String taskid) {
		this.taskid = taskid;
	}
	
	public Long getStarttime(){
		return this.starttime;
	}

	public void setStarttime(Long starttime) {
		this.starttime = starttime;
	}
	
	public String getUrl(){
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public Long getSeedsynccount(){
		return this.seedsynccount;
	}

	public void setSeedsynccount(Long seedsynccount) {
		this.seedsynccount = seedsynccount;
	}
	
	public Long getWriteinhbasecount(){
		return this.writeinhbasecount;
	}

	public void setWriteinhbasecount(Long writeinhbasecount) {
		this.writeinhbasecount = writeinhbasecount;
	}
	
	public Long getTime(){
		return this.time;
	}

	public void setTime(Long time) {
		this.time = time;
	}
	
	public Integer getPass(){
		return this.pass;
	}

	public void setPass(Integer pass) {
		this.pass = pass;
	}
	
}
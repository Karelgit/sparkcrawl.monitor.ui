package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_crawl_count
 * @author luohongjun
 * @date 2016-02-19 15:15:21 中国标准时间
 */
public class CrawlCount {

	/**
	 * 数据库列id
	 */
	//@Id
	private Long id;
	/**
	 * 数据库列taskid
	 */
	private String taskid;
	/**
	 * 数据库列starttime
	 */
	private Long starttime;
	/**
	 * 数据库列crawltime
	 */
	private Long crawltime;
	/**
	 * 数据库列pass
	 */
	private Long pass;
	/**
	 * 数据库列crawlcount
	 */
	private Long crawlcount;
	/**
	 * 数据库列depth
	 */
	private Long depth;

	public CrawlCount() {
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
	
	public Long getCrawltime(){
		return this.crawltime;
	}

	public void setCrawltime(Long crawltime) {
		this.crawltime = crawltime;
	}
	
	public Long getPass(){
		return this.pass;
	}

	public void setPass(Long pass) {
		this.pass = pass;
	}
	
	public Long getCrawlcount(){
		return this.crawlcount;
	}

	public void setCrawlcount(Long crawlcount) {
		this.crawlcount = crawlcount;
	}
	
	public Long getDepth(){
		return this.depth;
	}

	public void setDepth(Long depth) {
		this.depth = depth;
	}
	
}
package com.gengyun.model;

//import com.gengyun.model.annotations.dbmodel.Id;
//import com.gengyun.model.annotations.dbmodel.Table;

/**
 * 数据库表t_crawl_tasking
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class CrawlTasking {

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
	 * 数据库列name
	 */
	private String name;
	/**
	 * 数据库列starttime
	 */
	private Long starttime;
	/**
	 * 数据库列passed
	 */
	private Long passed;
	/**
	 * 种子json
	 */
	private String url;
	/**
	 * 任务结束时间
	 */
	private Long endtime;
	/**
	 * 抓取周期
	 */
	private Integer recrawldays;
	/**
	 * 数据库列protocalfilter
	 */
	private String protocalfilter;
	/**
	 * 后缀过滤
	 */
	private String suffixfilter;
	/**
	 * 正则表达式过滤
	 */
	private String regexfilter;
	/**
	 * 数据库列taskstatus
	 */
	private Integer taskstatus;
	/**
	 * 抓取量json
	 */
	private String crawlCount;
	/**
	 * 删除标记
	 */
	private Byte deleteflag;

	public CrawlTasking() {
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
	
	public String getName(){
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Long getStarttime(){
		return this.starttime;
	}

	public void setStarttime(Long starttime) {
		this.starttime = starttime;
	}
	
	public Long getPassed(){
		return this.passed;
	}

	public void setPassed(Long passed) {
		this.passed = passed;
	}
	
	public String getUrl(){
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public Long getEndtime(){
		return this.endtime;
	}

	public void setEndtime(Long endtime) {
		this.endtime = endtime;
	}
	
	public Integer getRecrawldays(){
		return this.recrawldays;
	}

	public void setRecrawldays(Integer recrawldays) {
		this.recrawldays = recrawldays;
	}
	
	public String getProtocalfilter(){
		return this.protocalfilter;
	}

	public void setProtocalfilter(String protocalfilter) {
		this.protocalfilter = protocalfilter;
	}
	
	public String getSuffixfilter(){
		return this.suffixfilter;
	}

	public void setSuffixfilter(String suffixfilter) {
		this.suffixfilter = suffixfilter;
	}
	
	public String getRegexfilter(){
		return this.regexfilter;
	}

	public void setRegexfilter(String regexfilter) {
		this.regexfilter = regexfilter;
	}
	
	public Integer getTaskstatus(){
		return this.taskstatus;
	}

	public void setTaskstatus(Integer taskstatus) {
		this.taskstatus = taskstatus;
	}
	
	public String getCrawlCount(){
		return this.crawlCount;
	}

	public void setCrawlCount(String crawlCount) {
		this.crawlCount = crawlCount;
	}
	
	public Byte getDeleteflag(){
		return this.deleteflag;
	}

	public void setDeleteflag(Byte deleteflag) {
		this.deleteflag = deleteflag;
	}
	
}
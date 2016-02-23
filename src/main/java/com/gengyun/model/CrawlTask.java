package com.gengyun.model;


/**
 * 数据库表t_crawl_task
 * @author luohongjun
 * @date 2016-02-19 15:15:22 中国标准时间
 */
public class CrawlTask {

	/**
	 * 任务id
	 */
	//@Id
	private String taskid;
	/**
	 * 数据库列name
	 */
	private String name;
	/**
	 * 用户id
	 */
	private String uid;
	/**
	 * 种子id
	 */
	private String seedpath;
	/**
	 * 任务类型
	 */
	private String tasktypeid;
	/**
	 * 爬虫终止层数
	 */
	private Integer crawlerdepth;
	/**
	 * 动态点击层数
	 */
	private Integer dynamicdepth;
	/**
	 * 网站权值,新任务进入，可手动设置权值，提高优先级进入爬取队列
	 */
	private Integer weight;
	/**
	 * 启动时间戳
	 */
	private Long starttime;
	/**
	 * 抓取周期
	 */
	private Integer recrawldays;
	/**
	 * 模板路径
	 */
	private String templatepath;
	/**
	 * 动态标签路径
	 */
	private String tagpath;
	/**
	 * 协议过滤规则(包含关系)
	 */
	private String protocalfilter;
	/**
	 * 后缀过滤规则json
	 */
	private String suffixfilter;
	/**
	 * 正则表达式过滤
	 */
	private String regexfilter;
	/**
	 * 任务运行状态
	 */
	private Integer taskstatus;
	/**
	 * 删除标识
	 */
	private Byte deleteflag;

	public CrawlTask() {
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
	
	public String getUid(){
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getSeedpath(){
		return this.seedpath;
	}

	public void setSeedpath(String seedpath) {
		this.seedpath = seedpath;
	}
	
	public String getTasktypeid(){
		return this.tasktypeid;
	}

	public void setTasktypeid(String tasktypeid) {
		this.tasktypeid = tasktypeid;
	}
	
	public Integer getCrawlerdepth(){
		return this.crawlerdepth;
	}

	public void setCrawlerdepth(Integer crawlerdepth) {
		this.crawlerdepth = crawlerdepth;
	}
	
	public Integer getDynamicdepth(){
		return this.dynamicdepth;
	}

	public void setDynamicdepth(Integer dynamicdepth) {
		this.dynamicdepth = dynamicdepth;
	}
	
	public Integer getWeight(){
		return this.weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	
	public Long getStarttime(){
		return this.starttime;
	}

	public void setStarttime(Long starttime) {
		this.starttime = starttime;
	}
	
	public Integer getRecrawldays(){
		return this.recrawldays;
	}

	public void setRecrawldays(Integer recrawldays) {
		this.recrawldays = recrawldays;
	}
	
	public String getTemplatepath(){
		return this.templatepath;
	}

	public void setTemplatepath(String templatepath) {
		this.templatepath = templatepath;
	}
	
	public String getTagpath(){
		return this.tagpath;
	}

	public void setTagpath(String tagpath) {
		this.tagpath = tagpath;
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
	
	public Byte getDeleteflag(){
		return this.deleteflag;
	}

	public void setDeleteflag(Byte deleteflag) {
		this.deleteflag = deleteflag;
	}
	
}
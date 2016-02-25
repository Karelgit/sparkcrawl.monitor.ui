package com.gengyun.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-22.
 */
public class Task implements Serializable {
    private String uid;
    private String name;
    private String tasktypeid;
    private int crawlerdepth;
    private int dynamicdepth;
    private int weight;
    private int recrawldays;
    private List<String> seeds;
    private List<String> protocalfilter;
    private List<String> suffixfilter;
    private List<String> regexfilter;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTasktypeid() {
        return tasktypeid;
    }

    public void setTasktypeid(String tasktypeid) {
        this.tasktypeid = tasktypeid;
    }

    public int getCrawlerdepth() {
        return crawlerdepth;
    }

    public void setCrawlerdepth(int crawlerdepth) {
        this.crawlerdepth = crawlerdepth;
    }

    public int getDynamicdepth() {
        return dynamicdepth;
    }

    public void setDynamicdepth(int dynamicdepth) {
        this.dynamicdepth = dynamicdepth;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getRecrawldays() {
        return recrawldays;
    }

    public void setRecrawldays(int recrawldays) {
        this.recrawldays = recrawldays;
    }

    public List<String> getSeeds() {
        return seeds;
    }

    public void setSeeds(List<String> seeds) {
        this.seeds = seeds;
    }

    public List<String> getProtocalfilter() {
        return protocalfilter;
    }

    public void setProtocalfilter(List<String> protocalfilter) {
        this.protocalfilter = protocalfilter;
    }

    public List<String> getSuffixfilter() {
        return suffixfilter;
    }

    public void setSuffixfilter(List<String> suffixfilter) {
        this.suffixfilter = suffixfilter;
    }

    public List<String> getRegexfilter() {
        return regexfilter;
    }

    public void setRegexfilter(List<String> regexfilter) {
        this.regexfilter = regexfilter;
    }
}

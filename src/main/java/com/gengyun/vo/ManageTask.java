package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-24.
 */
public class ManageTask implements Serializable{
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public int getSeedcount() {
        return seedcount;
    }

    public void setSeedcount(int seedcount) {
        this.seedcount = seedcount;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public int getCycle() {
        return cycle;
    }

    public void setCycle(int cycle) {
        this.cycle = cycle;
    }

    private String name;
    private String tid;
    private int seedcount;
    private String typename;
    private String status;
    private String createtime;
    private int cycle;
    private boolean stoporrun;

    public boolean isStoporrun() {
        return stoporrun;
    }

    public void setStoporrun(boolean stoporrun) {
        this.stoporrun = stoporrun;
    }
}

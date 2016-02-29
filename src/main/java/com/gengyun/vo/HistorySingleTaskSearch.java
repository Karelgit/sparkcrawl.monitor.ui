package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-23.
 */
public class HistorySingleTaskSearch implements Serializable {
    private String taskid;
    private int pass;

    public String getTaskid() {
        return taskid;
    }

    public void setTaskid(String taskid) {
        this.taskid = taskid;
    }

    public int getPass() {
        return pass;
    }

    public void setPass(int pass) {
        this.pass = pass;
    }
}

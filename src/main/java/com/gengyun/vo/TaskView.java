package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-3-1.
 */
public class TaskView implements Serializable{
    private Task task;
    private String typename;

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}

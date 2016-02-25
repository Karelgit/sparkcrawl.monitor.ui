package com.gengyun.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-24.
 */
public class TaskPage implements Serializable{
    private int total;
    private List<ManageTask> tasks;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<ManageTask> getTasks() {
        return tasks;
    }

    public void setTasks(List<ManageTask> tasks) {
        this.tasks = tasks;
    }
}

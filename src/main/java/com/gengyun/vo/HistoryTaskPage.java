package com.gengyun.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-26.
 */
public class HistoryTaskPage implements Serializable{
    private long total;
    private List<HistoryTask> data;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<HistoryTask> getData() {
        return data;
    }

    public void setData(List<HistoryTask> data) {
        this.data = data;
    }
}

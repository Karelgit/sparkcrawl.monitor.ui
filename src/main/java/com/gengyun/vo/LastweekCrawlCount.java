package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-17.
 */
public class LastweekCrawlCount implements Serializable {
    private String date;
    private long count;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }
}

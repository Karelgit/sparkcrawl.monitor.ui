package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-24.
 */
public class TaskSearch implements Serializable{
    private int pageSize;
    private int pageNo;

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
}

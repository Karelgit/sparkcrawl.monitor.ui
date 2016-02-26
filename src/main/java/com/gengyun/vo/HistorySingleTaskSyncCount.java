package com.gengyun.vo;

import java.io.Serializable;

/**
 * Created by root on 16-2-23.
 */
public class HistorySingleTaskSyncCount implements Serializable{
    private String synctime;
    private String url;
    private long syncount;
    private long realCount;

    public String getSynctime() {
        return synctime;
    }

    public void setSynctime(String synctime) {
        this.synctime = synctime;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public long getSyncount() {
        return syncount;
    }

    public void setSyncount(long syncount) {
        this.syncount = syncount;
    }

    public long getRealCount() {
        return realCount;
    }

    public void setRealCount(long realCount) {
        this.realCount = realCount;
    }
}

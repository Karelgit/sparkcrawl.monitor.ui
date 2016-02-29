package com.gengyun.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-23.
 */
public class HistorySingleTask implements Serializable {
    private String taskid;
    private String name;
    private String starttime;
    private String endtime;
    private String status;
    private String lastCrawlTime;
    private long passed;
    private long depth;
    private long lastTotalCrawlCount;
    private List<LastweekCrawlCount> lastweekCrawlCounts;
    private List<LastweekSyncCount> lastweekSyncCounts;
    private List<HistorySingleTaskSyncCount> seedSyncCounts;

    public String getTaskid() {
        return taskid;
    }

    public void setTaskid(String taskid) {
        this.taskid = taskid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public long getPassed() {
        return passed;
    }

    public void setPassed(long passed) {
        this.passed = passed;
    }

    public long getDepth() {
        return depth;
    }

    public void setDepth(long depth) {
        this.depth = depth;
    }

    public List<LastweekCrawlCount> getLastweekCrawlCounts() {
        return lastweekCrawlCounts;
    }

    public void setLastweekCrawlCounts(List<LastweekCrawlCount> lastweekCrawlCounts) {
        this.lastweekCrawlCounts = lastweekCrawlCounts;
    }


    public List<LastweekSyncCount> getLastweekSyncCounts() {
        return lastweekSyncCounts;
    }

    public void setLastweekSyncCounts(List<LastweekSyncCount> lastweekSyncCounts) {
        this.lastweekSyncCounts = lastweekSyncCounts;
    }


    public long getLastTotalCrawlCount() {
        return lastTotalCrawlCount;
    }

    public void setLastTotalCrawlCount(long lastTotalCrawlCount) {
        this.lastTotalCrawlCount = lastTotalCrawlCount;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }


    public String getLastCrawlTime() {
        return lastCrawlTime;
    }

    public List<HistorySingleTaskSyncCount> getSeedSyncCounts() {
        return seedSyncCounts;
    }

    public void setSeedSyncCounts(List<HistorySingleTaskSyncCount> seedSyncCounts) {
        this.seedSyncCounts = seedSyncCounts;
    }

    public void setLastCrawlTime(String lastCrawlTime) {
        this.lastCrawlTime = lastCrawlTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

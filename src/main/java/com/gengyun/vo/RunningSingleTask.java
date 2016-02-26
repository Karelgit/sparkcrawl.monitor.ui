package com.gengyun.vo;


import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-24.
 */
public class RunningSingleTask implements Serializable {
    private String taskid;
    private String name;
    private String starttime;
    private String heartbeattime;
    private String status;
    private String lastCrawlTime;
    private long passed;
    private long depth;
    private long lastTotalCrawlCount;
    private List<HistorySingleTaskSyncCount> seedSyncCounts;

    private List<LastweekCrawlCount> hourCrawlCounts;
    private List<LastweekSyncCount> hourSyncCounts;
    private List<LastweekSyncCount> hourRealSyncCounts;



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

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getHeartbeattime() {
        return heartbeattime;
    }

    public void setHeartbeattime(String heartbeattime) {
        this.heartbeattime = heartbeattime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLastCrawlTime() {
        return lastCrawlTime;
    }

    public void setLastCrawlTime(String lastCrawlTime) {
        this.lastCrawlTime = lastCrawlTime;
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

    public long getLastTotalCrawlCount() {
        return lastTotalCrawlCount;
    }

    public void setLastTotalCrawlCount(long lastTotalCrawlCount) {
        this.lastTotalCrawlCount = lastTotalCrawlCount;
    }

    public List<LastweekCrawlCount> getHourCrawlCounts() {
        return hourCrawlCounts;
    }

    public void setHourCrawlCounts(List<LastweekCrawlCount> hourCrawlCounts) {
        this.hourCrawlCounts = hourCrawlCounts;
    }

    public List<LastweekSyncCount> getHourSyncCounts() {
        return hourSyncCounts;
    }

    public void setHourSyncCounts(List<LastweekSyncCount> hourSyncCounts) {
        this.hourSyncCounts = hourSyncCounts;
    }

    public List<HistorySingleTaskSyncCount> getSeedSyncCounts() {
        return seedSyncCounts;
    }

    public void setSeedSyncCounts(List<HistorySingleTaskSyncCount> seedSyncCounts) {
        this.seedSyncCounts = seedSyncCounts;
    }

    public List<LastweekSyncCount> getHourRealSyncCounts() {
        return hourRealSyncCounts;
    }

    public void setHourRealSyncCounts(List<LastweekSyncCount> hourRealSyncCounts) {
        this.hourRealSyncCounts = hourRealSyncCounts;
    }
}

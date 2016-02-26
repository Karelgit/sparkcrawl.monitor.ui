package com.gengyun.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by root on 16-2-17.
 */
public class LastweekSyncCount implements Serializable {
    private String seed;
    private List<LastweekCrawlCount> counts;

    public String getSeed() {
        return seed;
    }

    public void setSeed(String seed) {
        this.seed = seed;
    }

    public List<LastweekCrawlCount> getCounts() {
        return counts;
    }

    public void setCounts(List<LastweekCrawlCount> counts) {
        this.counts = counts;
    }
}

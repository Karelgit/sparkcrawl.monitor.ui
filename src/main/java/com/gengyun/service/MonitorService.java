package com.gengyun.service;

import com.alibaba.fastjson.JSON;
import com.gengyun.utils.HttpUtils;
import com.gengyun.utils.PropertyHelper;
import com.gengyun.vo.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by root on 16-2-25.
 */

@Service("MonitorService")
@Scope("singleton")
public class MonitorService {
    private SimpleDateFormat simpleDateFormat;
    private PropertyHelper propertyHelper;
    private String monitorUrl;

    @PostConstruct
    public void init() {
        simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        propertyHelper = new PropertyHelper("monitor");
        monitorUrl = propertyHelper.getValue("monitor.url");

    }


    public List<RunningTask> getRunningTask() {


        try {
            String jsonStr = HttpUtils.doPost("http://"+monitorUrl+"/monitor/allrunningtask/", null);
            return JSON.parseArray(jsonStr, RunningTask.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }


    public RunningSingleTask getRunningSingleTask(String taskid) {
        try {
            String jsonStr = HttpUtils.doPost("http://"+monitorUrl+"/monitor/singlerunningtask/", taskid);
            return JSON.parseObject(jsonStr, RunningSingleTask.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public HistorySingleTask getHistorySingleTask(HistorySingleTaskSearch historySingleTaskSearch) {
        try {


            String jsonStr = HttpUtils.doPost("http://"+monitorUrl+"/monitor/historysingletask/", JSON.toJSONString(historySingleTaskSearch));
            return JSON.parseObject(jsonStr, HistorySingleTask.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public HistoryTaskPage getHistoryTaskPage(HistoryTaskSearchUI historyTaskSearchUI) {
        try {
            historyTaskSearchUI.setStarttime(historyTaskSearchUI.getStarttime() + " 00:00:00");
            historyTaskSearchUI.setEndtime(historyTaskSearchUI.getEndtime() + " 23:59:59");
            HistoryTaskSearch historyTaskSearch = new HistoryTaskSearch();
            historyTaskSearch.setName(historyTaskSearchUI.getName());
            historyTaskSearch.setStarttime(simpleDateFormat.parse(historyTaskSearchUI.getStarttime()).getTime());
            historyTaskSearch.setEndtime(simpleDateFormat.parse(historyTaskSearchUI.getEndtime()).getTime());
            historyTaskSearch.setPageNo(historyTaskSearchUI.getPageNo());
            historyTaskSearch.setPageSize(historyTaskSearchUI.getPageSize());
            String result = HttpUtils.doPost("http://"+monitorUrl+"/monitor/history", JSON.toJSONString(historyTaskSearch));

            return JSON.parseObject(result, HistoryTaskPage.class);

        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

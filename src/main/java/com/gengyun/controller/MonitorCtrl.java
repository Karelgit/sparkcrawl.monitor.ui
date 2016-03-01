package com.gengyun.controller;

import com.alibaba.fastjson.JSON;
import com.gengyun.model.User;
import com.gengyun.service.MonitorService;
import com.gengyun.utils.HttpUtils;
import com.gengyun.utils.PropertyHelper;
import com.gengyun.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by root on 16-2-22.
 */
@Controller("ModuleMonitor")
@RequestMapping("/monitor")
public class MonitorCtrl {
    @Autowired
    private MonitorService monitorService;


    private PropertyHelper propertyHelper;

    private String monitorUrl;


    @PostConstruct
    public void init() {
        propertyHelper = new PropertyHelper("monitor");
        monitorUrl = propertyHelper.getValue("monitor.url");
    }

    @RequestMapping("/moduleview")
    String moduleMonitorView(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());


        try {
            ModuleMonitor moduleMonitor = JSON.parseObject(HttpUtils.doPost("http://"+monitorUrl+"/monitor/modulestatus/", null), ModuleMonitor.class);
            request.setAttribute("moduleStatus", moduleMonitor);
        } catch (IOException e) {
            request.setAttribute("moduleStatus", null);
        }

        return "pages/modulemonitor";
    }

    @RequestMapping("/historyview")
    String historyview(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/historyview";
    }


    @RequestMapping("/historydetail")
    String historydetail(HttpServletRequest request, @RequestParam("taskid") String taskid, @RequestParam("pass") int pass) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        request.setAttribute("historyTaskID", taskid);
        HistorySingleTaskSearch historySingleTaskSearch = new HistorySingleTaskSearch();
        historySingleTaskSearch.setTaskid(taskid);
        historySingleTaskSearch.setPass(pass);
        request.setAttribute("historySingleTask", monitorService.getHistorySingleTask(historySingleTaskSearch));
        return "pages/historydetail";
    }

    @RequestMapping("/realtimeview")
    String realtimeview(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/realtimeview";
    }

    @RequestMapping("/realtimedetail")
    String realtimedetail(HttpServletRequest request, @RequestParam("taskid") String taskid) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        request.setAttribute("realTimeTaskID", taskid);
        request.setAttribute("runnningSingleTask", monitorService.getRunningSingleTask(taskid));
        return "pages/realtimedetail";
    }


    @RequestMapping(value = "rtsingletask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    ResultEntity getRTSingleTask(@RequestBody String taskid) {

        RunningSingleTask task = monitorService.getRunningSingleTask(taskid);
        ResultEntity resultEntity = new ResultEntity();
        if (task != null) {
            resultEntity.setSuccess(true);
            resultEntity.setData(task);
        } else {
            resultEntity.setSuccess(false);
            resultEntity.setData("failed");
        }

        return resultEntity;

    }


    @RequestMapping(value = "hssingletask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    ResultEntity getHistorySingleTask(@RequestBody HistorySingleTaskSearch historySingleTaskSearch) {

        HistorySingleTask task = monitorService.getHistorySingleTask(historySingleTaskSearch);
        ResultEntity resultEntity = new ResultEntity();
        if (task != null) {
            resultEntity.setSuccess(true);
            resultEntity.setData(task);
        } else {
            resultEntity.setSuccess(false);
            resultEntity.setData("failed");
        }

        return resultEntity;

    }

    @RequestMapping(value = "runningtasks", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    ResultEntity getRunningTasks() {
        List<RunningTask> data = monitorService.getRunningTask();
        ResultEntity resultEntity = new ResultEntity();
        if (data != null) {
            resultEntity.setSuccess(true);
            resultEntity.setData(data);
        } else {
            resultEntity.setSuccess(false);
            resultEntity.setData("failed");
        }

        return resultEntity;
    }

    @RequestMapping(value = "history", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    HistoryTaskPage getHis(@RequestBody HistoryTaskSearchUI historyTaskSearchUI) {
        return monitorService.getHistoryTaskPage(historyTaskSearchUI);
    }

}

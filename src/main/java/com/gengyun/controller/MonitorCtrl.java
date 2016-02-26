package com.gengyun.controller;

import com.gengyun.model.User;
import com.gengyun.service.MonitorService;
import com.gengyun.vo.ResultEntity;
import com.gengyun.vo.RunningSingleTask;
import com.gengyun.vo.RunningTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by root on 16-2-22.
 */
@Controller("ModuleMonitor")
@RequestMapping("/monitor")
public class MonitorCtrl {
    @Autowired
    private MonitorService monitorService;

    @RequestMapping("/moduleview")
    String moduleMonitorView(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/modulemonitor";
    }

    @RequestMapping("/historyview")
    String historyview(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/historyview";
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

}

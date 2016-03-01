package com.gengyun.controller;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gengyun.model.CrawlTask;
import com.gengyun.model.CrawlTasktype;
import com.gengyun.model.User;
import com.gengyun.service.TaskService;
import com.gengyun.utils.HttpUtils;
import com.gengyun.vo.*;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by root on 16-2-22.
 */
@Controller("TaskManagerCtrl")
@RequestMapping("/task")
public class TaskManagerCtrl {

    @Autowired
    private TaskService taskService;

    @RequestMapping("addView")
    String addView(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/addTask";
    }

    @RequestMapping("tasktype")
    @ResponseBody
    ResultEntity getTasktype() {
        ResultEntity resultEntity = new ResultEntity();
        resultEntity.setSuccess(true);
        resultEntity.setData(taskService.getTaskTypes());
        return resultEntity;
    }

    @RequestMapping(value = "addtask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    ResultEntity addTask(@RequestBody Task task, HttpServletRequest request) {
        // ResultEntity resultEntity = new ResultEntity();
        User user = (User) request.getSession().getAttribute("user");
        task.setUid(user.getUid());
        return taskService.addTask(task);
    }

    @RequestMapping("taskManagerView")
    String taskManagerView(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("uname", user.getUname());
        return "pages/taskmanager";
    }

    //    (value = "getListByPage",method = RequestMethod.POST,headers = {"content-type=application/json","content-type=application/xml"})
    @RequestMapping("getListByPage")
    @ResponseBody
    public ResultEntity getListByPage(@RequestBody TaskSearch taskSearch,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.getListByPage(taskSearch,user.getUid());
        resultEntity.setSuccess(true);

        TaskPage taskPage = JSON.parseObject(str, TaskPage.class);
        resultEntity.setData(taskPage);

        return resultEntity;
    }

    @RequestMapping(value = "startTask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity startTask(@RequestBody String tid) {
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.startTask(tid);
        resultEntity.setSuccess(true);

        resultEntity.setData(JSON.parseObject(str));
        return resultEntity;
    }

    @RequestMapping(value = "rtStartTask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity rsStartTask(@RequestBody String tid) {
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.rtStartTask(tid);
        resultEntity.setSuccess(true);

        resultEntity.setData(JSON.parseObject(str));
        return resultEntity;
    }

    @RequestMapping(value = "stopTask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity stopTask(@RequestBody String tid) {
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.stopTask(tid);
        resultEntity.setSuccess(true);

        resultEntity.setData(JSON.parseObject(str));
        return resultEntity;
    }

    @RequestMapping(value = "deleteTask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity deleteTask(@RequestBody String tid) {
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.deleteTask(tid);
        resultEntity.setSuccess(true);

        resultEntity.setData(JSON.parseObject(str));
        return resultEntity;
    }


    @RequestMapping(value = "updateTask", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity updateTask(@RequestBody Task task) {
        ResultEntity resultEntity=new ResultEntity();

        System.out.println(JSON.toJSONString(task));

        String str = taskService.updateTask(task);
        resultEntity.setSuccess(true);

        resultEntity.setData(JSON.parseObject(str));
        return resultEntity;
    }

    @RequestMapping(value = "taskView", method = RequestMethod.POST, headers = {"content-type=application/json", "content-type=application/xml"})
    @ResponseBody
    public ResultEntity taskView(@RequestBody String tid,HttpServletRequest request) {
        ResultEntity resultEntity=new ResultEntity();
        String str = taskService.taskView(tid);
        Task task= JSON.parseObject(str, Task.class);
        task.setTaskid(tid);

        List<CrawlTasktype> crawlTasktypes=taskService.getTaskTypes();
        User user=(User)request.getSession().getAttribute("user");
        task.setUid(user.getUid());
        resultEntity.setSuccess(true);
        TaskView taskView=new TaskView();
        taskView.setTask(task);


        for (CrawlTasktype crawlTasktype : crawlTasktypes) {
            if(StringUtils.equals(crawlTasktype.getTasktypeid(), task.getTasktypeid())){
                taskView.setTypename(crawlTasktype.getDesp());
                break;
            }
        }


        resultEntity.setData(taskView);
        return resultEntity;
    }

}

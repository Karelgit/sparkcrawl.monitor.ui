package com.gengyun.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gengyun.model.CrawlTask;
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
        ResultEntity resultEntity = new ResultEntity();
        User user = (User) request.getSession().getAttribute("user");
        task.setUid(user.getUid());
        System.out.println(JSON.toJSONString(task));

        return resultEntity;
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
    public ResultEntity getListByPage(@RequestBody TaskSearch taskSearch) {
        ResultEntity resultEntity=new ResultEntity();

        JSONObject json=new JSONObject();
        json.put("uid","b5c6326d550f4c4fbf78401ef4c73cf0");
        json.put("pageSize",10);
        json.put("pageNo",0);
        String str = "";
        try {

            str = HttpUtils.doPost("http://118.118.118.3:8080/monitor/alltasks/",json.toJSONString());
        }catch (IOException e)  {
            e.printStackTrace();
        }

        resultEntity.setSuccess(true);
        TaskPage taskPage = JSON.parseObject(str, TaskPage.class);
        resultEntity.setData(taskPage);

        return resultEntity;
    }

}

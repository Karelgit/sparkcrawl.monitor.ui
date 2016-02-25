package com.gengyun.controller;

import com.alibaba.fastjson.JSON;
import com.gengyun.model.CrawlTask;
import com.gengyun.model.User;
import com.gengyun.service.TaskService;
import com.gengyun.vo.ResultEntity;
import com.gengyun.vo.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

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

}

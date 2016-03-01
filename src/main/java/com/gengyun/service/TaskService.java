package com.gengyun.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gengyun.dao.CrawlTasktypeMapper;
import com.gengyun.model.CrawlTasktype;
import com.gengyun.utils.HttpUtils;
import com.gengyun.utils.PropertyHelper;
import com.gengyun.vo.ResultEntity;
import com.gengyun.vo.ResultEntity1;
import com.gengyun.vo.Task;
import com.gengyun.vo.TaskSearch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.util.List;

/**
 * Created by root on 16-2-22.
 */
@Service("TaskService")
@Scope("singleton")
public class TaskService {
    @Autowired
    private CrawlTasktypeMapper crawlTasktypeMapper;

    private PropertyHelper propertyHelper;
    private String monitorUrl;
    @PostConstruct
    public  void  init(){
        propertyHelper = new PropertyHelper("monitor");
        monitorUrl = propertyHelper.getValue("monitor.url");
    }

    public List<CrawlTasktype> getTaskTypes() {
        return crawlTasktypeMapper.findAll("");
    }

    public String getListByPage(TaskSearch taskSearch,String uid)   {
        JSONObject json=new JSONObject();
        json.put("uid",uid);
        json.put("pageSize",taskSearch.getPageSize());
        json.put("pageNo",taskSearch.getPageNo());
        String str = "";
        try {

            str = HttpUtils.doPost("http://"+monitorUrl+"/monitor/alltasks/", json.toJSONString());
        }catch (IOException e)  {
            e.printStackTrace();
        }

        return str;
    }

    public String startTask(String tid) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/monitor/start/",tid);
        }catch (IOException e)  {
            e.printStackTrace();
        }

        return str;
    }

    public String rtStartTask(String tid) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/monitor/starttask/",tid);
        }catch (IOException e)  {
            e.printStackTrace();
        }

        return str;
    }

    public String stopTask(String tid) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/monitor/stop/",tid);
        }catch (IOException e)  {
            e.printStackTrace();
        }

        return str;
    }

    public String deleteTask(String tid) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/crawlTask/deleteCrawlTask/",tid);
        }catch (IOException e)  {
            e.printStackTrace();
        }
        return str;
    }

    public String updateTask(Task task) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/crawlTask/updateCrawlTask/",JSONObject.toJSONString(task));
            System.out.println("更新：" + str);
        }catch (IOException e)  {
            e.printStackTrace();
        }
        return str;
    }

    public String taskView(String tid) {
        String str = "";
        try {
            str = HttpUtils.doPost("http://"+monitorUrl+"/monitor/gettask/",tid);
        }catch (IOException e)  {
            e.printStackTrace();
        }
        return str;
    }

    public ResultEntity addTask(Task task) {

        ResultEntity resultEntity = new ResultEntity();


        try {
            String json = HttpUtils.doPost("http://"+monitorUrl+"/crawlTask/addCrawlTask/", JSON.toJSONString(task));
            ResultEntity1 resultEntity1 = JSON.parseObject(json, ResultEntity1.class);
            resultEntity.setSuccess(resultEntity1.isResult());
            resultEntity.setData(resultEntity1.getData());
        } catch (IOException e) {
            resultEntity.setSuccess(false);
            resultEntity.setData(e.getMessage());
        }

        return resultEntity;
    }

}

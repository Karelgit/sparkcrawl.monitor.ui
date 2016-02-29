package com.gengyun.service;

import com.alibaba.fastjson.JSON;
import com.gengyun.dao.CrawlTasktypeMapper;
import com.gengyun.model.CrawlTasktype;
import com.gengyun.utils.HttpUtils;
import com.gengyun.vo.ResultEntity;
import com.gengyun.vo.ResultEntity1;
import com.gengyun.vo.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

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

    public List<CrawlTasktype> getTaskTypes() {
        return crawlTasktypeMapper.findAll("");
    }

    public ResultEntity addTask(Task task) {

        ResultEntity resultEntity = new ResultEntity();


        try {
            String json = HttpUtils.doPost("http://localhost:8080/crawlTask/addCrawlTask/", JSON.toJSONString(task));
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

package com.gengyun.service;

import com.alibaba.fastjson.JSON;
import com.gengyun.utils.HttpUtils;
import com.gengyun.vo.RunningSingleTask;
import com.gengyun.vo.RunningTask;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Created by root on 16-2-25.
 */

@Service("MonitorService")
@Scope("singleton")
public class MonitorService {

    public List<RunningTask> getRunningTask() {


        try {
            String jsonStr = HttpUtils.doPost("http://localhost:8080/monitor/allrunningtask/", null);
            return JSON.parseArray(jsonStr, RunningTask.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }


    public RunningSingleTask getRunningSingleTask(String taskid){
        try {
            String jsonStr = HttpUtils.doPost("http://localhost:8080/monitor/singlerunningtask/", taskid);
            return JSON.parseObject(jsonStr,RunningSingleTask.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

package com.gengyun;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gengyun.utils.HttpUtils;
import com.gengyun.vo.ManageTask;
import com.gengyun.vo.TaskPage;
import org.junit.Test;

import java.util.List;

/**
 * Created by root on 16-2-23.
 */
public class Post {
    @Test
    public void testPost()  throws Exception{
        JSONObject  json=new JSONObject();
        json.put("uid","b5c6326d550f4c4fbf78401ef4c73cf0");
        json.put("pageSize",100);
        json.put("pageNo",0);

        String str = HttpUtils.post("http://118.118.118.3:8080/monitor/alltasks/",json.toJSONString());
        TaskPage taskPage= JSON.parseObject(str, TaskPage.class);
//        System.out.println(manageTasks.size());
        System.out.println(JSON.toJSONString(taskPage));
    }


}

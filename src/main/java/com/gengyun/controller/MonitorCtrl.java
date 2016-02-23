package com.gengyun.controller;

import com.gengyun.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by root on 16-2-22.
 */
@Controller("ModuleMonitor")
@RequestMapping("/monitor")
public class MonitorCtrl {
    @RequestMapping("/moduleview")
    String moduleMonitorView(HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        request.setAttribute("uname",user.getUname());
        return "pages/modulemonitor";
    }

    @RequestMapping("/historyview")
    String historyview(HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        request.setAttribute("uname",user.getUname());
        return  "pages/historyview";
    }

    @RequestMapping("/realtimeview")
    String realtimeview(HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("user");
        request.setAttribute("uname",user.getUname());
        return "pages/realtimeview";
    }


}

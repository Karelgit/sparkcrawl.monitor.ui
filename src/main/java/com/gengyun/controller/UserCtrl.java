package com.gengyun.controller;

import com.gengyun.filter.SessionListener;
import com.gengyun.model.User;
import com.gengyun.service.UserSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by root on 16-2-19.
 */
@Controller
@RequestMapping("/user")
public class UserCtrl {

    @Autowired
    private UserSV userSV;

    @RequestMapping("/loginView")
    public String loginView(@RequestParam("pastDue") boolean pastDue, HttpServletRequest request) {
        if (pastDue) {
            request.setAttribute("userValidateMsg", "登录信息过期，请重新登录！");
        }
        return "pages/login";
    }

    @RequestMapping("/login")
    public String login(String uname, String upwd, HttpServletRequest request) {
        User user = userSV.getLoginUser(uname, upwd);
        if (user != null) {

            request.getSession().setAttribute("user", user);
            request.getSession().setAttribute("userid", user.getUid());
            //sessionHandlerByCacheMap(request);
            System.out.println(SessionListener.sessionContext.getSessionMap().get(user.getUid()));

            if (SessionListener.sessionContext.getSessionMap().get(user.getUid()) != null) {
                request.setAttribute("userValidateMsg", "用户已登录！");
                return "pages/login";
            } else {

                //SessionListener.sessionContext.getSessionMap().put(user.getUid(), request.getSession());
                SessionListener.sessionContext.getSessionMap().remove(request.getSession().getId());
                if (user.getUsertype() == 1) {
                    return "pages/modulemonitor";
                } else {
                    request.setAttribute("userValidateMsg", "用户名或密码错误！");
                    return "pages/login";
                }
            }

        } else {
            request.setAttribute("userValidateMsg", "用户名或密码错误！");
            return "pages/login";
        }
    }

    @RequestMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) {
        User user=(User) request.getSession().getAttribute("user");
        SessionListener.sessionContext.getSessionMap().remove(user.getUid());
        SessionListener.sessionContext.DelSession(request.getSession());
        request.getSession().invalidate();
        try {
            response.sendRedirect("/SparkCrawlMonitorUI/user/loginView.do?pastDue=false");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public void sessionHandlerByCacheMap(HttpServletRequest request) {
        String userid = request.getSession().getAttribute("userid").toString();
        if (SessionListener.sessionContext.getSessionMap().get(userid) != null) {

        } else {

            SessionListener.sessionContext.getSessionMap().get(request.getSession().getId());
            SessionListener.sessionContext.getSessionMap().put(userid, SessionListener.sessionContext.getSessionMap().get(request.getSession().getId()));
            SessionListener.sessionContext.getSessionMap().remove(request.getSession().getId());
        }
    }
}

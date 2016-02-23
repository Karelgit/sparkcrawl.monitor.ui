package com.gengyun.controller;

import com.gengyun.filter.SessionListener;
import com.gengyun.model.User;
import com.gengyun.service.UserSV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
            if (SessionListener.sessionContext.getSessionMap().get(user.getUid()) != null) {
                request.setAttribute("userValidateMsg", "用户已登录！");
                return "pages/login";
            } else {
                HttpSession session = (HttpSession) SessionListener.sessionContext.getSessionMap().get(request.getSession().getId());
                SessionListener.sessionContext.getSessionMap().put(user.getUid(), session);
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
    public void logout(HttpServletRequest request) {
        User user=(User) request.getSession().getAttribute("user");
        SessionListener.sessionContext.getSessionMap().remove(user.getUid());
        SessionListener.sessionContext.DelSession(request.getSession());
        request.getSession().invalidate();
    }


    public void sessionHandlerByCacheMap(HttpServletRequest request) {
        String userid = request.getSession().getAttribute("userid").toString();
        if (SessionListener.sessionContext.getSessionMap().get(userid) != null) {
            /*HttpSession userSession = (HttpSession) SessionListener.sessionContext.getSessionMap().get(userid);
            //注销在线用户
            userSession.invalidate();
            SessionListener.sessionContext.getSessionMap().remove(userid);
            //清除在线用户后，更新map,替换map sessionid
            SessionListener.sessionContext.getSessionMap().remove(request.getSession().getId());
            SessionListener.sessionContext.getSessionMap().put(userid, request.getSession());*/
        } else {
            // 根据当前sessionid 取session对象。 更新map key=用户名 value=session对象 删除map
            SessionListener.sessionContext.getSessionMap().get(request.getSession().getId());
            SessionListener.sessionContext.getSessionMap().put(userid, SessionListener.sessionContext.getSessionMap().get(request.getSession().getId()));
            SessionListener.sessionContext.getSessionMap().remove(request.getSession().getId());
        }
    }
}

package com.gengyun.filter;

import com.gengyun.model.User;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by root on 16-2-19.
 */
public class SessionListener implements HttpSessionListener, ServletContextListener  {
    public static SessionContext sessionContext = SessionContext.getInstance();

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        User user=(User) httpSessionEvent.getSession().getAttribute("user");
        System.out.println("创建"+"\t"+user.getUid()+"\t"+System.currentTimeMillis());

        sessionContext.AddSession(httpSessionEvent.getSession());
    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        User user=(User) httpSessionEvent.getSession().getAttribute("user");
        System.out.println("销毁"+"\t"+user.getUid()+"\t"+System.currentTimeMillis());
        sessionContext.DelSession(httpSessionEvent.getSession());
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("销毁");
    }
}

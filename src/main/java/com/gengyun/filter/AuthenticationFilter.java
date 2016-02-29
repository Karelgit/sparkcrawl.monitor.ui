package com.gengyun.filter;

import com.gengyun.model.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by root on 16-2-19.
 */
public class AuthenticationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;

        HttpServletResponse resp = (HttpServletResponse) response;

        String path = req.getRequestURI();

        if (path.indexOf("/index.jsp") > -1 ||
                path.indexOf("/login.do") > -1 ||
                path.indexOf("/loginView.do") > -1) {
            chain.doFilter(req, resp);
        } else {
            User user = (User) req.getSession().getAttribute("user");
            if (user != null) {
                chain.doFilter(req, resp);
            } else {
                //request.setAttribute("userValidateMsg", "登录信息过期，请重新登录！");
                resp.sendRedirect("/SparkCrawlMonitorUI/user/loginView.do?pastDue=true");
            }
        }
    }

    @Override
    public void destroy() {

    }
}

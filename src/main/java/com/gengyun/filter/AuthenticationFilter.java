package com.gengyun.filter;

import com.gengyun.model.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by root on 16-2-19.
 */
public class AuthenticationFilter implements Filter{
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
                path.indexOf("/loginView.do") > -1 ||
                path.indexOf("/singleuser.do") > -1 ||
                path.indexOf("/site_unAvail_sum.do") > -1 ||
                path.indexOf("/site_unAvail_listByPage.do") > -1 ||
                path.indexOf("/infoupdate_index.do") > -1 ||
                path.indexOf("/sitegroup_export_site.do") > -1 ||
                path.indexOf("/export_infoupdate_index.do") > -1 ||
                path.indexOf("/getContentUpdateList.do") > -1 ||
                path.indexOf("/export.do") > -1 ||
                path.indexOf("/getBlankTopicReport.do") > -1 ||
                path.indexOf("/exportBlankTopicByRound.do") > -1 ||
                path.indexOf("/gotoFatalErrorByRoundNum.do") > -1 ||
                path.indexOf("/getFatalErrorByRound.do") > -1 ||
                path.indexOf("/exportFatalErrorByRound.do") > -1 ||
                path.indexOf("/getListByPage.do") > -1||
                path.indexOf("/index_link_check.do")>-1||
                path.indexOf("/other_link_check.do")>-1||
                path.indexOf("/getTopicUpdateReport.do")>-1||
                path.indexOf("/exportTopicUpdateByTopicTypeID.do")>-1||
                path.indexOf("/dl_link_check.do")>-1||
                path.indexOf("/getOSYSList.do")>-1||
                path.indexOf("/exportOSYSError.do")>-1) {
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

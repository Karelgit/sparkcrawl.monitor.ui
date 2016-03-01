<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16-2-26
  Time: 下午12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
</head>
<body>
<!-- START Top Navbar-->
<nav role="navigation" class="navbar navbar-default navbar-top navbar-fixed-top">
    <!-- START navbar header-->
    <div class="navbar-header">

        <div class="brand-logo" style="text-align: left">
            <h4 class="img-responsive" style="color: white">Spark爬虫监控系统</h4>
        </div>
        <div class="brand-logo-collapsed">
            <img src="app/img/logo-single.png" alt="App Logo" class="img-responsive">
        </div>
    </div>
    <!-- END navbar header-->
    <!-- START Nav wrapper-->
    <div class="nav-wrapper">
        <!-- START Left navbar-->
        <ul class="nav navbar-nav">
            <li>
                <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops-->
                <a href="#" data-toggle-state="aside-collapsed" class="hidden-xs">
                    <em class="fa fa-navicon"></em>
                </a>
                <!-- Button to show/hide the sidebar on mobile. Visible on mobile only.-->
                <a href="#" data-toggle-state="aside-toggled" class="visible-xs">
                    <em class="fa fa-navicon"></em>
                </a>
            </li>

        </ul>
        <!-- END Left navbar-->
        <!-- START Right Navbar-->
        <ul class="nav navbar-nav navbar-right">
            <!-- Search icon-->
            <li>
                <a href="user/logout.do">
                    <em class="fa fa-power-off" style="font-size: 20px"></em>
                    <span class="item-text" style="font-size: 20px">退出系统</span>
                </a>
            </li>


        </ul>
        <!-- END Right Navbar-->

    </div>
    <!-- END Nav wrapper-->
</nav>
<!-- END Top Navbar-->
<!-- START aside-->
<aside class="aside">
    <!-- START Sidebar (left)-->
    <nav class="sidebar">


        <!-- START user info-->
        <div class="item user-block">

            <!-- Name and Role-->
            <div class="user-block-info" style="font-size :20px;text-align:center">
                <span class="user-block-name item-text">当前用户</span>
                <span class="user-block-role" style="font-size :20px"><c:out value="${uname }"></c:out></span>
            </div>
        </div>
        <!-- END user info-->
        <ul class="nav">
            <!-- START Menu-->
            <li id="addTaskli">
                <a href="task/addView.do" title="添加任务" data-toggle="" class="no-submenu">
                    <em class="fa fa-plus"></em>
                    <span class="item-text">添加任务</span>
                </a>
            </li>
            <li>
                <a href="task/taskManagerView.do" title="任务管理" data-toggle="" class="no-submenu">
                    <em class="fa fa-cube"></em>
                    <span class="item-text">任务管理</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" title="监控" data-toggle="collapse-next" class="has-submenu">
                    <em class="fa fa-flask"></em>
                    <span class="item-text">监控</span>
                </a>
                <!-- START SubMenu item-->
                <ul id="secondmenu" class="nav collapse">
                    <li id="historyviewli">
                        <a href="monitor/historyview.do" title="历史查看" data-toggle="" class="no-submenu">
                            <span class="item-text">历史查看</span>
                        </a>
                    </li>
                    <li id="realtimeviewli">
                        <a href="monitor/realtimeview.do" title="实时查看" data-toggle="" class="no-submenu">
                            <span class="item-text">实时查看</span>
                        </a>
                    </li>
                    <li id="moduleli">
                        <a href="monitor/moduleview.do" title="模块监控" data-toggle="" class="no-submenu">
                            <span class="item-text">模块监控</span>
                        </a>
                    </li>

                </ul>
                <!-- END SubMenu item-->
            </li>

            <li id="templateli">
                <a href="upload/templateview.do" title="模板上传" data-toggle="" class="no-submenu">
                    <em class="fa fa-cloud-upload"></em>
                    <span class="item-text">模板上传</span>
                </a>
            </li>
            <li id="tagli">
                <a href="upload/tagview.do" title="标签上传" data-toggle="" class="no-submenu">
                    <em class="fa fa-upload"></em>
                    <span class="item-text">标签上传</span>
                </a>
            </li>
        </ul>
    </nav>
    <!-- END Sidebar (left)-->
</aside>
<!-- End aside-->

<script src="vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
    $().ready(function () {
        var basepath = window.location.href;
        if (basepath.indexOf("monitor/moduleview.do") > 0 || basepath.indexOf("user/login.do") > 0) {
            $("#secondmenu").attr("class", "nav collapse in");
            $("#moduleli").attr("class", "active");
        }

        if (basepath.indexOf("monitor/realtimeview.do") > 0 || basepath.indexOf("monitor/realtimedetail.do") > 0) {
            $("#secondmenu").attr("class", "nav collapse in");
            $("#realtimeviewli").attr("class", "active");
        }

        if (basepath.indexOf("task/addView.do") > 0) {
            $("#addTaskli").attr("class", "active");
        }
        if (basepath.indexOf("monitor/historyview.do") > 0 || basepath.indexOf("monitor/historydetail.do") > 0) {
            $("#secondmenu").attr("class", "nav collapse in");
            $("#historyviewli").attr("class", "active");

        }

        if (basepath.indexOf("upload/tagview.do") > 0) {
            $("#tagli").attr("class", "active");
        }
        if (basepath.indexOf("upload/templateview.do") > 0) {
            $("#templateli").attr("class", "active");
        }

    });
</script>
</body>
</html>

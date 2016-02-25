<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <!-- Meta-->
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>模块监控</title>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="app/css/bootstrap.css">
    <!-- Vendor CSS-->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/animo/animate+animo.css">
    <link rel="stylesheet" href="vendor/csspinner/csspinner.min.css">
    <!-- START Page Custom CSS-->
    <!-- END Page Custom CSS-->
    <!-- App CSS-->
    <link rel="stylesheet" href="app/css/app.css">
    <!-- Modernizr JS Script-->
    <script src="vendor/modernizr/modernizr.js" type="application/javascript"></script>
    <!-- FastClick for mobiles-->
    <script src="vendor/fastclick/fastclick.js" type="application/javascript"></script>
    <link rel="stylesheet" id="autoloaded-stylesheet" href="app/css/beadmin-theme-a.css">
</head>

<body class="aside-user">
<!-- START Main wrapper-->
<div class="wrapper">
    <!-- START Top Navbar-->
    <nav role="navigation" class="navbar navbar-default navbar-top navbar-fixed-top">
        <!-- START navbar header-->
        <div class="navbar-header">

            <div class="brand-logo">
                <%--<img src="app/img/logo.png" alt="App Logo" class="img-responsive">--%>
                <label class="img-responsive" style="color: white">爬虫监控系统</label>
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
                <%--<li>
                    <a href="javascript:void(0);" data-toggle-state="aside-user">
                        当前用户：
                    </a>
                </li>--%>
             </ul>
            <!-- END Left navbar-->

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
                <div class="user-block-info">
                    <span class="user-block-name item-text">当前用户</span>
                    <span class="user-block-role">UX-Dev</span>
                </div>
            </div>
            <!-- END user info-->
            <ul class="nav">
                <!-- START Menu-->

                <%--  <li class="active">
                      <a href="monitor/moduleview.do" title="模块监控" data-toggle="" class="no-submenu">
                          <em class="fa fa-dot-circle-o"></em>
                          <span class="item-text">模块监控</span>
                      </a>
                  </li>--%>
                <li>
                    <a href="task/addView.do" title="添加任务" data-toggle="" class="no-submenu">
                        <em class="fa fa-cube"></em>
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
                    <ul class="nav collapse in">
                        <li>
                            <a href="monitor/historyview.do" title="历史查看" data-toggle="" class="no-submenu">
                                <span class="item-text">历史查看</span>
                            </a>
                        </li>
                        <li>
                            <a href="monitor/realtimeview.do" title="实时查看" data-toggle="" class="no-submenu">
                                <span class="item-text">实时查看</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="monitor/moduleview.do" title="模块监控" data-toggle="" class="no-submenu">
                                <span class="item-text">模块监控</span>
                            </a>
                        </li>

                    </ul>
                    <!-- END SubMenu item-->
                </li>

                <li>
                    <a href="upload/templateview.do" title="模板上传" data-toggle="" class="no-submenu">
                        <em class="fa fa-cube"></em>
                        <span class="item-text">模板上传</span>
                    </a>
                </li>
                <li>
                    <a href="upload/tagview.do" title="标签上传" data-toggle="" class="no-submenu">
                        <em class="fa fa-cube"></em>
                        <span class="item-text">标签上传</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- END Sidebar (left)-->
    </aside>
    <!-- End aside-->

    <!-- START Main section-->
    <section>
        <!-- START Page content-->
        <div class="content-wrapper">

            <div class="row">
                <!-- START widget-->
                <div class="col-lg-4">
                    <div id="panel-4" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-4 bg-danger text-center">
                                    <em class="fa fa-music fa-2x"></em>
                                </div>
                                <div class="col-xs-8">
                                    <div class="panel-body text-center">
                                        <h3 class="mt0">调度模块</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END widget-->

                <div class="col-lg-4">
                    <!-- START widget-->
                    <div id="panel-9" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-12">
                                    <div class="panel-body text-center bg-purple">
                                        <h3 class="mt0">状态</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>

                <div class="col-lg-4">
                    <!-- START widget-->
                    <div id="panel-14" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-12">
                                    <div class="panel-body text-center bg-green">
                                        <h3 class="mt0">查询时间</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>

            </div>

            <!--end row-->

            <!--start row-->
            <div class="row">
                <div class="col-lg-4">
                    <!-- START widget-->
                    <div id="panel-5" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-4 bg-inverse text-center">
                                    <em class="fa fa-code-fork fa-2x"></em>
                                </div>
                                <div class="col-xs-8">
                                    <div class="panel-body text-center">
                                        <h3 class="mt0">导入模块</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>

                <div class="col-lg-4">
                    <!-- START widget-->
                    <div id="panel-10" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-12">
                                    <div class="panel-body text-center bg-pink">
                                        <h3 class="mt0">状态</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>

                <div class="col-lg-4">
                    <!-- START widget-->
                    <div id="panel-15" class="panel widget">
                        <div class="portlet-handler">
                            <div class="row row-table row-flush">
                                <div class="col-xs-12">
                                    <div class="panel-body text-center bg-primary">
                                        <h3 class="mt0">时间</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>
            </div>
            <!--end row-->

        </div>
        <!-- END Page content-->
    </section>
    <!-- END Main section-->
</div>
<!-- END Main wrapper-->
<!-- START Scripts-->
<!-- Main vendor Scripts-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Plugins-->
<script src="vendor/chosen/chosen.jquery.min.js"></script>
<script src="vendor/slider/js/bootstrap-slider.js"></script>
<script src="vendor/filestyle/bootstrap-filestyle.min.js"></script>
<!-- Animo-->
<script src="vendor/animo/animo.min.js"></script>
<!-- Sparklines-->
<script src="vendor/sparklines/jquery.sparkline.min.js"></script>
<!-- Slimscroll-->
<script src="vendor/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Store + JSON-->
<script src="vendor/store/store+json2.min.js"></script>
<!-- ScreenFull-->
<script src="vendor/screenfull/screenfull.min.js"></script>
<!-- START Page Custom Script-->
<!--  Flot Charts-->
<script src="vendor/flot/jquery.flot.min.js"></script>
<script src="vendor/flot/jquery.flot.tooltip.min.js"></script>
<script src="vendor/flot/jquery.flot.resize.min.js"></script>
<script src="vendor/flot/jquery.flot.pie.min.js"></script>
<script src="vendor/flot/jquery.flot.time.min.js"></script>
<script src="vendor/flot/jquery.flot.categories.min.js"></script>
<!--[if lt IE 8]>
<script src="js/excanvas.min.js"></script><![endif]-->
<!-- END Page Custom Script-->
<!-- App Main-->
<script src="app/js/app.js"></script>
<!-- END Scripts-->
</body>

</html>

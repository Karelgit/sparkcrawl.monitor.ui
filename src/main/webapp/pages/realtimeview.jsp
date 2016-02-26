<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16-2-22
  Time: 上午10:15
  To change this template use File | Settings | File Templates.
--%>
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
    <title>实时任务查看</title>
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
                    <span class="user-block-role"><c:out value="${uname }"></c:out></span>
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
                        <li class="active">
                            <a href="monitor/realtimeview.do" title="实时查看" data-toggle="" class="no-submenu">
                                <span class="item-text">实时查看</span>
                            </a>
                        </li>
                        <li>
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
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>实时任务列表</h4></div>
                        <div class="panel-body">
                            <table id="datatable1" class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>任务名称</th>
                                    <th>ID</th>
                                    <th>启动时间</th>
                                    <th class="sort-numeric">遍数</th>
                                    <th class="sort-alpha">当前深度</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="realtimetable">
                                <tr class="gradeX">
                                    <td>#name#</td>
                                    <td>#id#</td>
                                    <td>#starttime#</td>
                                    <td>#pass#</td>
                                    <td>#depth#</td>
                                    <td>#status#</td>
                                    <td>#button#</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
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
<script src="app/js/app.js"></script>
<script src="js/excanvas.min.js"></script><![endif]-->
<!-- END Page Custom Script-->
<!-- App Main-->
<%--<script src="app/js/app.js"></script>--%>
<script src="proj/js/table.js"></script>
<script type="text/javascript">
    var funcs = {
        inintEvent: function () {
            $.ajax({
                type: "POST",
                url: "monitor/runningtasks.do",
                dataType: "json",
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    if (data.success) {

                        funcs.table(data.data);

                    }
                    else {
                        $.alert({
                            title: '信息提示',
                            content: '请重新尝试!',
                            confirmButton: "确定",
                            confirm: function () {
                                return;
                            }
                        });
                    }
                }
            });
        },
        table: function (datas) {
            var $listbody = $("#realtimetable");
            var itemnode = $listbody.attr("item") || $listbody.html();
            $listbody.attr("item", itemnode);
            $listbody.html("");
            $.each(datas, function (index, item) {
                var titemnode = itemnode.replace('#name#', item['name']);
                titemnode = titemnode.replace('#id#', item['taskid']);
                titemnode = titemnode.replace('#starttime#', item['starttime']);
                titemnode = titemnode.replace('#pass#', item['pass']);
                titemnode = titemnode.replace('#depth#', item['depth']);
                titemnode = titemnode.replace('#status#', item['status']);
                titemnode = titemnode.replace('#button#', "<a type='button' href='monitor/realtimedetail.do?taskid="+item['taskid']+"' class='btn btn-info pull-left mr'>查看详情</a>");
                $listbody.append(titemnode);
            });
        }

    };

    /**/

    $().ready(function () {
        funcs.inintEvent();
    });
</script>
<!-- END Scripts-->
</body>
</html>

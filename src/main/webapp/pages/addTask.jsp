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
    <title>添加任务</title>
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
                <li class="active">
                    <a href="task/addView.do" title="添加任务" data-toggle="" class="no-submenu">
                        <em class="fa fa-cube"></em>
                        <span class="item-text">添加任务</span>
                    </a>
                </li>
                <li>
                    <a href="#" title="监控" data-toggle="collapse-next" class="has-submenu">
                        <em class="fa fa-flask"></em>
                        <span class="item-text">监控</span>
                    </a>
                    <!-- START SubMenu item-->
                    <ul class="nav collapse">
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
                <!-- START panel-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <legend>添加任务</legend>
                    </div>
                    <div class="panel-body">
                        <form method="get" action="/" class="form-horizontal">
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">任务名称：</label>
                                    <div class="col-sm-10">
                                        <input id="tasknameInput" type="text" class="form-control form-control-rounded">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">任务类型：</label>
                                    <div class="col-sm-10">
                                        <select id="tasktypesel" name="account" class="form-control m-b">
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label for="stopDepthInput" class="col-sm-2 control-label">停止层数：</label>
                                    <div class="col-sm-10">
                                        <input id="stopDepthInput" type="number" class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">点击层数：</label>
                                    <div class="col-sm-10">
                                        <input id="clickDepthInput" type="number" name="input-id-2"
                                               class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">权重系数：</label>
                                    <div class="col-sm-10">
                                        <input id="weigthInput" type="number" name="weigthInput" class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">抓取频率：</label>
                                    <div class="col-lg-10">
                                        <input id="cycleInput" name="cycleInput" type="number" placeholder="(天数)"
                                               class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">种子：</label>

                                    <textarea id="seedsTextArea" data-uk-markdownarea="{mode:'tab'}" class="col-sm-10"
                                              style="height:500px;"
                                              placeholder="每行一个.example:http://www.gygov.gov.cn"></textarea>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend class="-align-center">过滤条件</legend>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">协议：</label>
                                    <div class="col-lg-10">
                                        <input id="protocalInput" name="protocalInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:http,https,ftp"
                                               class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">后缀：</label>
                                    <div class="col-lg-10">
                                        <input id="suffixInput" name="suffixInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:.js,.css,.gif"
                                               class="form-control">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset class="last-child">
                                <div class="form-group">
                                    <label class="col-lg-2 control-label">域名过滤：</label>
                                    <div class="col-lg-10">
                                        <input id="regexInput" name="regexInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:news.gygov.gov.cn,movie.gygov.gov.cn"
                                               class="form-control">
                                    </div>
                                </div>
                            </fieldset>

                        </form>
                    </div>
                    <div class="panel-footer text-center">
                        <button id="submitBtn" type="submit" class="btn btn-info">提交</button>
                    </div>
                </div>
                <!-- END panel-->
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
<%--<script src="app/js/app.js"></script>--%>
<script type="text/javascript">

    var funcs = {
        startDateTime: null,
        endDateTime: null,
        inintEvent: function () {
            funcs.bindTaskType();
            $("#submitBtn").bind("click", function () {
                funcs.addTask();
            });
        },
        bindTaskType: function () {

            $.ajax({
                type: "POST",
                url: "task/tasktype.do",
                dataType: "json",
                async: false,
                success: function (data) {
                    if (data.success) {
                        var sel = document.getElementById("tasktypesel");
                        for (var i = 0; i < data.data.length; i++) {
                            var opt = new Option(data.data[i].desp, data.data[i].tasktypeid);
                            sel.options.add(opt);
                        }

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

        addTask: function () {
            var taskname = $("#tasknameInput").val();

            var tasktype = $("#tasktypesel option:selected").val();
            var depth = Number($("#stopDepthInput").val());
            var clickDepth = Number($("#clickDepthInput").val());
            var weightval = Number($("#weigthInput").val());
            var cycleDays = Number($("#cycleInput").val());
            var seedsVal = $("#seedsTextArea").val();
            var protocalVal = $("#protocalInput").val();
            if (document.all) {
// 如果是IE，怎么判断浏览器类型，自己找代码
                arr = seedsVal.split("\r\n");
            } else {
// firfox
                arr = seedsVal.split("\n");
            }

            protocalarr = protocalVal.split(",");

            var suffixVal = $("#suffixInput").val();

            suffixarr = suffixVal.split(",");

            var regexVal = $("#regexInput").val();

            regexarr = regexVal.split(",");
            var postdata = {
                name: taskname,
                tasktypeid: tasktype,
                crawlerdepth: depth,
                dynamicdepth: clickDepth,
                weight: weightval,
                recrawldays: cycleDays,
                seeds: arr,
                protocalfilter: protocalarr,
                suffixfilter: suffixarr,
                regexfilter: regexarr
            };
            $.ajax({
                type: "POST",
                url: "task/addtask.do",
                dataType: "json",
                contentType: 'application/json',
                async: true,
                data: JSON.stringify(postdata),
                success: function (data) {
                    if (data.success) {
                        alert("创建成功");
                    } else {
                        alert("创建失败");
                    }
                }
            });
        }


    }


    $().ready(function () {
        funcs.inintEvent();
    });

</script>
<!-- END Scripts-->
</body>
</html>
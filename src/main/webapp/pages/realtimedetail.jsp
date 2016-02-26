<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16-2-22
  Time: 上午10:16
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
    <title>实时任务详情</title>
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
                <h4 class="img-responsive" style="color: white">爬虫监控系统</h4>
            </div>
        </div>
        <!-- END navbar header-->
        <!-- START Nav wrapper-->
        <div class="nav-wrapper">
            <!-- START Left navbar-->
            <ul class="nav navbar-nav">
                <li>
                    <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops-->
                    <a href="javascript:void(0);" data-toggle-state="aside-collapsed" class="hidden-xs">
                        <em class="fa fa-navicon"></em>
                    </a>
                    <!-- Button to show/hide the sidebar on mobile. Visible on mobile only.-->
                    <a href="javascript:void(0);" data-toggle-state="aside-toggled" class="visible-xs">
                        <em class="fa fa-navicon"></em>
                    </a>
                </li>
                <%--<li>
                    <a href="javascript:void(0);">监控</a>
                </li>
                <li>

                    <a href="javascript:void(0);"> <em class="fa fa-angle-double-right"></em></a>

                </li>
                <li>
                    <a href="monitor/realtimeview.do">实时查看</a>
                </li>
                <li>

                    <a href="javascript:void(0);"> <em class="fa fa-angle-double-right"></em></a>

                </li>
                <li>
                    <a href="javascript:void(0);"><c:out value="${realTimeTaskID }"></c:out></a>
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
                <div class="user-block-info" style="font-size :20px;text-align:center">
                    <span class="user-block-name item-text">当前用户</span>
                    <span class="user-block-role" style="font-size :20px"><c:out value="${uname }"></c:out></span>
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
            <%--  <h3>
                  <ol class="breadcrumb">
                      <li><a href="javascript:void(0);">监控</a>
                      </li>
                      <li><a href="monitor/realtimeview.do">实时查看</a>
                      </li>
                      <li class="active"><c:out value="${realTimeTaskID }"></c:out></li>
                  </ol>
              </h3>--%>
            <h3><c:out value="${runnningSingleTask.name }"></c:out>&nbsp;&nbsp;&nbsp;&nbsp;
                启动时间：<c:out value="${runnningSingleTask.starttime }"/>&nbsp;&nbsp;&nbsp;&nbsp;心跳时间：<c:out
                        value="${runnningSingleTask.heartbeattime }"/></h3>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <!-- START panel-->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <em class="fa fa-comments fa-5x"></em>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div style="font-size: 30px"><c:out
                                            value="${runnningSingleTask.lastCrawlTime }"/></div>
                                    <p class="m0">抓取时间</p>
                                </div>
                            </div>
                        </div>

                        <!-- END panel-->
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- START panel-->
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <em class="fa fa-tasks fa-5x"></em>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="text-lg"><c:out
                                            value="${runnningSingleTask.lastTotalCrawlCount }"/></div>
                                    <p class="m0">总抓取量</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- END panel-->
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- START panel-->
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <em class="fa fa-shopping-cart fa-5x"></em>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="text-lg"><c:out value="${runnningSingleTask.depth }"/></div>
                                    <p class="m0">当前层数</p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- END panel-->
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- START panel-->
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <em class="fa fa-support fa-5x"></em>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="text-lg"><c:out value="${runnningSingleTask.passed }"/></div>
                                    <p class="m0">当前遍数</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END panel-->
                </div>
            </div>
            <!--end row-->

            <!--start row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>种子导入量列表</h4></div>
                        <div class="panel-body">
                            <table id="datatable1" class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>种子</th>
                                    <th>总导入量</th>
                                    <th class="sort-numeric">总真实导入量</th>
                                    <th class="sort-alpha">导入时间</th>
                                </tr>
                                </thead>
                                <tbody id="realtimetable">
                                <tr class="gradeX">
                                    <td>#index#</td>
                                    <td>#seed#</td>
                                    <td>#synccount#</td>
                                    <td>#realsynccount#</td>
                                    <td>#synctime#</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <!-- START row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <%--<div class="panel-heading"><h4>种子导入量时间趋势</h4></div>--%>
                        <div class="panel-body">
                            <div id="mychart" class="col-lg-12" style="height: 300px;text-align: center;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END row-->
            <!-- START row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div id="seedSycnPlot" class="col-lg-12" style="height: 300px;text-align: center;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END row-->
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
<script src="proj/js/table.js"></script>
<script src="echart/echarts.js"></script>
<script type="text/javascript">

    function serialObj(name, type, stack, data) {
        this.name = name;
        this.type = type;
        this.stack = stack;
        this.data = data;
        return this;
    }

    function Map() {
        var struct = function (key, value) {
            this.key = key;
            this.value = value;
        }

        var put = function (key, value) {
            for (var i = 0; i < this.arr.length; i++) {
                if (this.arr[i].key === key) {
                    this.arr[i].value = value;
                    return;
                }
            }
            this.arr[this.arr.length] = new struct(key, value);
        }

        var get = function (key) {
            for (var i = 0; i < this.arr.length; i++) {
                if (this.arr[i].key === key) {
                    return this.arr[i].value;
                }
            }
            return null;
        }

        var remove = function (key) {
            var v;
            for (var i = 0; i < this.arr.length; i++) {
                v = this.arr.pop();
                if (v.key === key) {
                    continue;
                }
                this.arr.unshift(v);
            }
        }

        var size = function () {
            return this.arr.length;
        }

        var isEmpty = function () {
            return this.arr.length <= 0;
        }
        this.arr = new Array();
        this.get = get;
        this.put = put;
        this.remove = remove;
        this.size = size;
        this.isEmpty = isEmpty;
    }


    var funcs = {
        inintEvent: function () {

            var taskid = '<c:out value="${runnningSingleTask.taskid }" />';
            funcs.query(taskid);
        },
        query: function (taskid) {
            $.ajax({
                type: "POST",
                url: "monitor/rtsingletask.do",
                dataType: "json",
                contentType: 'application/json',
                data: taskid,
                async: false,
                success: function (data) {
                    if (data.success) {
                        var map = funcs.table(data.data.seedSyncCounts);
                        var hourCrawlCounts = data.data.hourCrawlCounts;
                        var hourSyncCounts = data.data.hourSyncCounts;
                        console.log(data.data);
                        var xSerial = [];
                        var ySerial = [];

                        for (var i = 0; i < hourCrawlCounts.length; i++) {
                            xSerial.push(hourCrawlCounts[i].date);
                            ySerial.push(hourCrawlCounts[i].count);
                        }
                        funcs.plotCrawlCount(xSerial, ySerial);


                        var seedSyncLegend = [];
                        var seedSyncX = [];
                        var seedSyncY = [];

                        for (var i = 0; i < hourSyncCounts.length; i++) {
                            seedSyncLegend.push(map.get(hourSyncCounts[i].seed));

                            var yy = [];
                            for (var j = 0; j < hourSyncCounts[i].counts.length; j++) {
                                seedSyncX.push(hourSyncCounts[i].counts[j].date);
                                yy.push(hourSyncCounts[i].counts[j].count);
                            }
                            var serilobj = new serialObj(map.get(hourSyncCounts[i].seed), 'line', '总量', yy);
                            seedSyncY.push(serilobj);
                        }

                        funcs.plotSeedSyncCount(seedSyncLegend, seedSyncX, seedSyncY);

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

            var map = new Map();
            $listbody.attr("item", itemnode);
            $listbody.html("");
            $.each(datas, function (index, item) {
                var No = '' + (index + 1);
                map.put(item['url'], No);
                var titemnode = itemnode.replace('#index#', No);
                titemnode = titemnode.replace('#seed#', "<a href='" + item['url'] + "' target='_blank'>" + item['url'] + "</a>");
                titemnode = titemnode.replace('#synccount#', item['syncount']);
                titemnode = titemnode.replace('#realsynccount#', item['realCount']);
                titemnode = titemnode.replace('#synctime#', item['synctime']);
                $listbody.append(titemnode);
            });

            return map;
        },
        plotCrawlCount: function (xserial, yserial) {
            var myChart = echarts.init(document.getElementById('mychart'));
            var option = {
                title: {
                    text: '抓取量趋势'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: ['抓取量']
                },
                toolbox: {
                    show: false,
                    feature: {
                        dataZoom: {},
                        dataView: {readOnly: false},
                        magicType: {type: ['line', 'bar']}
                    }
                },
                xAxis: [
                    {
                        type: 'category',
                        boundaryGap: false,
                        data: xserial
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '抓取量',
                        type: 'line',
                        data: yserial,
                        markPoint: {
                            data: [
                                {type: 'max', name: '最大值'},
                                {type: 'min', name: '最小值'}
                            ]
                        },
                        markLine: {
                            data: [
                                {type: 'average', name: '平均值'}
                            ]
                        }
                    }
                ]
            };
            myChart.setOption(option);
        },
        plotSeedSyncCount: function (legenddata, xSerial, ySerial) {
            var myChart = echarts.init(document.getElementById('seedSycnPlot'));
            var option = {
                title: {
                    text: '种子导入量趋势'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: legenddata
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {
                    show: false,
                    feature: {
                        saveAsImage: {}
                    }
                },
                xAxis: [
                    {
                        type: 'category',
                        boundaryGap: false,
                        data: xSerial
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: ySerial/*[
                 {
                 name:'邮件营销',
                 type:'line',
                 stack: '总量',
                 data:[120, 132, 101, 134, 90, 230, 210]
                 },
                 {
                 name:'联盟广告',
                 type:'line',
                 stack: '总量',
                 data:[220, 182, 191, 234, 290, 330, 310]
                 },
                 {
                 name:'视频广告',
                 type:'line',
                 stack: '总量',
                 data:[150, 232, 201, 154, 190, 330, 410]
                 },
                 {
                 name:'直接访问',
                 type:'line',
                 stack: '总量',
                 data:[320, 332, 301, 334, 390, 330, 320]
                 },
                 {
                 name:'搜索引擎',
                 type:'line',
                 stack: '总量',
                 data:[820, 932, 901, 934, 1290, 1330, 1320]
                 }
                 ]*/
            };
            myChart.setOption(option);

        }

    };

    $().ready(function () {
        funcs.inintEvent();
    });
</script>
<!-- END Scripts-->
</body>
</html>

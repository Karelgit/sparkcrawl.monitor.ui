<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>

    <title>历史查看</title>
    <jsp:include page="commons/headjs.jsp"></jsp:include>
    <link rel="stylesheet" href="newdatetimepicker/daterangepicker.css">
    <style type="text/css">
        #loading {

            width: 170px;
            height: 25px;
            border: 3px solid #C3DAF9;
            position: absolute;
            top: 300px;
            left: 600px;
            z-index: 10000;
            background-color: #F7F9FC;
            line-height: 25px;
            vertical-align: middle;
            font-size: 11pt;
            display: none;

        }
    </style>
</head>

<body class="aside-user">
<!-- START Main wrapper-->
<div class="wrapper">
    <jsp:include page="commons/menu.jsp"></jsp:include>
    <!-- START Main section-->
    <div id="loading"
         style="text-align:center;display: block;width: 100%;height: 100%;position: fixed;left: 0;top: 0;background-color: rgba(0,0,0,0.5);">
        <img src="pages/img/loading.gif" style="opacity: 0.3;margin-top:10%"/> 正在加载数据,请稍候...
    </div>

    <section>
        <!-- START Page content-->
        <div class="content-wrapper">

            <div class="row">
                <div class="col-lg-12">
                    <!-- START panel-->
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <legend>历史任务查询</legend>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal" style="text-align: left">
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" style="font-size: 20px">任务名称：</label>
                                        <div class="col-sm-3">
                                            <input id="tasknameInput" type="text"
                                                   class="form-control form-control-rounded">
                                        </div>

                                        <div class="col-sm-3">
                                            <div id="data-time" class="input-group">
                                            <span class="input-group-addon">
                                                <span class="fa-calendar fa"></span>
                                            </span>
                                                <input id="date-range-picker" type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <a id="submitBtn" type="button" class="btn btn-info pull-left mr">查询</a>
                                        </div>

                                    </div>
                                </fieldset>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- END panel-->
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>历史任务列表</h4></div>
                        <div class="panel-body" id="datatablediv">
                            <table id="datatable1" class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>任务名称</th>
                                    <th>ID</th>
                                    <th>启动时间</th>
                                    <th class="sort-numeric">结束时间</th>
                                    <th class="sort-alpha">遍数</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="historytable">
                                <tr class="gradeX">
                                    <td>#name#</td>
                                    <td>#id#</td>
                                    <td>#starttime#</td>
                                    <td>#endtime#</td>
                                    <td>#pass#</td>
                                    <td>#status#</td>
                                    <td>#button#</td>
                                </tr>
                                </tbody>
                            </table>
                            <div id="pagination">
                                <ul class="pagination pull-right">
                                    <li><a href="#"> <i class="fa fa-chevron-left"></i>
                                    </a></li>
                                    <li><a href="#">1</a></li>
                                    <%--<li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>--%>
                                    <li><a href="#"> <i class="fa fa-chevron-right"></i>
                                    </a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
        <!-- END Page content-->
    </section>
    <!-- END Main section-->
</div>
<!-- END Main wrapper-->
<jsp:include page="commons/bootjs.jsp"></jsp:include>
<script src="newdatetimepicker/moment.js" type="application/javascript"></script>
<script src="newdatetimepicker/daterangepicker.js" type="application/javascript"></script>

<script src="proj/js/historytable.js"></script>

<script type="text/javascript">

    var funcs = {
        startDateTime: null,
        endDateTime: null,
        init: function () {

            $("#loading").hide();
            $("#historytable").hide();
            var lastdate = moment().subtract(7, 'days').format('YYYY/MM/DD');//获取上一周年月日'yyyy/mm/dd'
            var currdate = moment().format('YYYY/MM/DD');//获取当前年月日
            startDateTime = lastdate;
            endDateTime = currdate;
            var options = {"startDate": lastdate, "endDate": currdate};
            $('#date-range-picker').daterangepicker(options, function (start, end, label) {

                startDateTime = start.format("YYYY/MM/DD");
                endDateTime = end.format("YYYY/MM/DD");
            });

            $("#submitBtn").bind("click", function () {
                funcs.search();
            });
        },
        search: function () {
            var search = {
                name: $("#tasknameInput").val(),
                starttime: startDateTime,
                endtime: endDateTime,
                pageNo: historyview.getPage().pageNo,
                pageSize: historyview.getPage().pageSize
            };
            funcs.query(search);
        },
        query: function (search) {
            $.ajax({
                type: "POST",
                url: "monitor/history.do",
                dataType: "json",
                contentType: 'application/json',
                data: JSON.stringify(search),
                async: false,
                beforeSend: function () {
                    $("#loading").show();
                },
                complete: function () {
                    $("#loading").hide();
                },
                success: function (data) {
                    console.log(data);
                    $("#historytable").show();
                    historyview.totalPage(data.total);
                    funcs.table(data.data);
                }
            });
        },
        table: function (datas) {

            var $listbody = $("#historytable");
            var itemnode = $listbody.attr("item") || $listbody.html();
            $listbody.attr("item", itemnode);
            $listbody.html("");
            $.each(datas, function (index, item) {
                var titemnode = itemnode.replace('#name#', item['name']);
                titemnode = titemnode.replace('#id#', item['taskid']);
                titemnode = titemnode.replace('#starttime#', item['starttime']);
                titemnode = titemnode.replace('#endtime#', item['endtime']);
                titemnode = titemnode.replace('#pass#', item['pass']);
                titemnode = titemnode.replace('#status#', item['status']);
                titemnode = titemnode.replace('#button#', "<a type='button' href='monitor/historydetail.do?taskid=" + item['taskid'] + "&pass="+item['pass']+"' class='btn btn-info pull-left mr'>查看详情</a>");
                $listbody.append(titemnode);
            });
        }
    };

    $().ready(function () {
        funcs.init();
    });


</script>

</body>
</html>

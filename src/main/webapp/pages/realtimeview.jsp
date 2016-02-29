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
    <title>实时任务查看</title>
    <jsp:include page="commons/headjs.jsp"></jsp:include>
</head>
<body class="aside-user">
<!-- START Main wrapper-->
<div class="wrapper">

    <jsp:include page="commons/menu.jsp"></jsp:include>


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
<jsp:include page="commons/bootjs.jsp"></jsp:include>
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
                titemnode = titemnode.replace('#button#', "<a type='button' href='monitor/realtimedetail.do?taskid=" + item['taskid'] + "' class='btn btn-info pull-left mr'>查看详情</a>");
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

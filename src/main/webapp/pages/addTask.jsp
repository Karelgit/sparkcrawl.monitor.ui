<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>添加任务</title>
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
                <!-- START panel-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <legend>添加任务</legend>
                    </div>
                    <div class="panel-body">
                        <form method="get" action="/" class="form-horizontal">
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" style="font-size: 20px">任务名称：</label>
                                    <div class="col-sm-10">
                                        <input id="tasknameInput" type="text" class="form-control form-control-rounded">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" style="font-size: 20px">任务类型：</label>
                                    <div class="col-sm-10">
                                        <select id="tasktypesel" name="account" class="form-control m-b">
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label for="stopDepthInput" class="col-sm-2 control-label" style="font-size: 20px">停止层数：</label>
                                    <div class="col-sm-10">
                                        <input id="stopDepthInput" type="number" class="form-control" min="1">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" style="font-size: 20px">点击层数：</label>
                                    <div class="col-sm-10">
                                        <input id="clickDepthInput" type="number" name="input-id-2"
                                               class="form-control" min="1">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" style="font-size: 20px">权重系数：</label>
                                    <div class="col-sm-10">
                                        <input id="weigthInput" type="number" name="weigthInput" class="form-control"
                                               min="1" max="10">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" style="font-size: 20px">抓取频率：</label>
                                    <div class="col-lg-10">
                                        <input id="cycleInput" name="cycleInput" type="number" placeholder="(天数)"
                                               class="form-control" min="1">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" style="font-size: 20px">种子：</label>

                                    <textarea id="seedsTextArea" data-uk-markdownarea="{mode:'tab'}" class="col-sm-10"
                                              style="height:500px;font-size: 20px"
                                              placeholder="每行一个.example:http://www.gygov.gov.cn"></textarea>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend class="-align-center">过滤条件</legend>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" style="font-size: 20px">协议：</label>
                                    <div class="col-lg-10">
                                        <input id="protocalInput" name="protocalInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:http://,https://,ftp://"
                                               class="form-control" style="font-size: 20px">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" style="font-size: 20px">后缀：</label>
                                    <div class="col-lg-10">
                                        <input id="suffixInput" name="suffixInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:.js,.css,.gif"
                                               class="form-control" style="font-size: 20px">
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset class="last-child">
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" style="font-size: 20px">域名过滤：</label>
                                    <div class="col-lg-10">
                                        <input id="regexInput" name="regexInput" type="text"
                                               placeholder="多种协议用英文逗号隔开.example:news.gygov.gov.cn,movie.gygov.gov.cn"
                                               class="form-control" style="font-size: 20px">
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
<jsp:include page="commons/bootjs.jsp"></jsp:include>
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
                        $("#submitBtn").attr("disabled", "disabled");
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

<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16-2-22
  Time: 上午10:14
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
    <title><c:out value="${uploadTitle }"/></title>
    <jsp:include page="commons/headjs.jsp"></jsp:include>

    <link href="fileupload/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
</head>
<body class="aside-user">
<!-- START Main wrapper-->
<div class="wrapper">
    <jsp:include page="commons/menu.jsp"></jsp:include>
    <section>
        <!-- START Page content-->
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>文件上传</h4></div>
                        <div class="panel-body">
                            <form id="firstUpdateForm" action="upload/uploadFile.do?module=<c:out value="${uploadTitle }" />"
                                  method="post"
                                  enctype="multipart/form-data" class="form-horizontal" role="form" target="hidden_frame">
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">文件</label>
                                        <div class="col-sm-5">
                                            <input type="file" id="firstDemoImgFile" name="file" class="file" multiple
                                                   data-min-file-count="1">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button id="createPeriadBtn" type="submit" class="btn btn-primary">上传</button>
                                    <button type="reset" class="btn btn-default">重置</button>
                                </div>
                            </form>
                            <iframe name='hidden_frame' id="hidden_frame" style='display:none'></iframe>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </section>

</div>
<jsp:include page="commons/bootjs.jsp"></jsp:include>
<script src="fileupload/js/fileinput.js" type="text/javascript"></script>
<script src="fileupload/js/fileinput_locale_zh.js" type="text/javascript"></script>
<script type="application/javascript">

    function resultPanduan(rs) {
        if (rs) {
            alert("上传成功");
            $("#createPeriadBtn").attr("disabled", "disabled");
        } else {
            alert("上传失败");
        }
    }

</script>
</body>
</html>

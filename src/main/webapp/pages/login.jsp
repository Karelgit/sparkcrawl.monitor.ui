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
    <title>登录</title>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="app/js/html5shiv.js"></script>
    <script src="app/js/respond.min.js"></script><![endif]-->
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="app/css/bootstrap.css">
    <!-- Vendor CSS-->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/animo/animate+animo.css">
    <!-- App CSS-->
    <link rel="stylesheet" href="app/css/app.css">
    <link rel="stylesheet" href="app/css/common.css">
    <!-- Modernizr JS Script-->
    <script src="vendor/modernizr/modernizr.js" type="application/javascript"></script>
    <!-- FastClick for mobiles-->
    <script src="vendor/fastclick/fastclick.js" type="application/javascript"></script>
</head>
<body>
<!-- START wrapper-->
<div class="row row-table page-wrapper">
    <div class="col-lg-3 col-md-6 col-sm-8 col-xs-12 align-middle">
        <!-- START panel-->
        <div data-toggle="play-animation" data-play="fadeIn" data-offset="0" class="panel panel-dark panel-flat">
            <div class="panel-heading text-center">
                <p class="text-center mt-lg">
                    <strong>Spark爬虫管理系统</strong>
                </p>
            </div>
            <div class="panel-body">
                <form id="loginForm" role="form" action="user/login.do" method="POST" class="mb-lg">

                    <div class="form-group has-feedback">
                        <input id="uname" name="uname" type="text" placeholder="用户名" class="form-control">
                        <span class="fa fa-envelope form-control-feedback text-muted"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input id="upwd" name="upwd" type="password" placeholder="密码" class="form-control">
                        <span class="fa fa-lock form-control-feedback text-muted"></span>
                    </div>

                    <button type="submit" class="btn btn-block btn-primary">登录</button>
                </form>
                <div style="margin-top: 10px; color: red;">
                    <c:out value="${userValidateMsg }"></c:out>
                </div>
            </div>
        </div>
        <!-- END panel-->
    </div>
</div>
<!-- END wrapper-->
<!-- START Scripts-->
<!-- Main vendor Scripts-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Animo-->
<script src="vendor/animo/animo.min.js"></script>
<!-- Custom script for pages-->
<script src="app/js/pages.js"></script>
<script src="proj/js/user.js"></script>
<!-- END Scripts-->
</body>
</html>

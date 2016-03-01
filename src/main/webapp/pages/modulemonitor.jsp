<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>

    <title>模块监控</title>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.signatureName }"/></h3>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.signatureStatus }"/></h3>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.signatureSearcheTime }"/></h3>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.syncName }"/></h3>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.syncStatus }"/></h3>
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
                                        <h3 class="mt0"><c:out value="${moduleStatus.syncSearchTime }"/></h3>
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
<jsp:include page="commons/bootjs.jsp"></jsp:include>
</body>

</html>

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
  <title>历史查看</title>
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
        <li class="active">
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

  <!--任务修改模态框start-->
  <div id="updateTask" class="modal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title yahe-font-style">任务修改</h4>
        </div>
        <form id="updateTaskDetail" >
          <div class="modal-body" style="height: 600px;overflow: auto">
            <div class="row">
              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">网站名称:</label>
                      </div>
                      <div class="col-lg-10" id="row1">
                        <input class="form-control yahe-font-style" id="tasknameinput" name="name" readonly="readonly">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">栏目类型:</label>
                      </div>
                      <div class="col-lg-10" id="row2">
                        <input class="form-control yahe-font-style" id="tasktypeid" name="tasktypeid" readonly="readonly">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">停止层数:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="crawlerdepth" name="crawlerdepth" type="number" min="1">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">点击层数:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="dynamicdepth" name="dynamicdepth" type="number" min="1">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">权重系数:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="weight" name="weight" type="number" min="1">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">抓取频率:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="recrawldays" name="recrawldays" placeholder="(天数)" type="number" min="1">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-center">
                        <label class="form-lable-font yahe-font-style">种子:</label>
                      </div>
                      <div class="col-lg-10">
                         <textarea id="seedsTextArea" data-uk-markdownarea="{mode:'tab'}" class="col-sm-12"
                                   style="height:250px;font-size: 15px"
                                   placeholder="每行如：http://www.gygov.gov.cn">
                         </textarea>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal-header" >
                <h4 class="modal-title yahe-font-style">过滤条件</h4>
              </div>
              &nbsp
              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">协议:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="protocalfilter" type="text"
                               placeholder="多种协议用英文逗号隔开.example:http://,https://,ftp://"
                               name="protocalfilter" >
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">后缀:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="suffixfilter" type="text"
                               placeholder="多种协议用英文逗号隔开.example:.js,.css,.gif"
                               name="suffixfilter">
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group col-lg-12">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="row">
                      <div class="col-lg-2 text-right">
                        <label class="form-lable-font yahe-font-style">域名过滤:</label>
                      </div>
                      <div class="col-lg-10">
                        <input class="form-control yahe-font-style" id="regexfilter" type="text"
                               placeholder="多种协议用英文逗号隔开.example:news.gygov.gov.cn,movie.gygov.gov.cn"
                               name="regexfilter" >
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>

          <div class="modal-footer">
            <!-- <button type="button" class="btn btn-primary form-control" data-form="submit">保存</button> -->
            <div class="row">
              <div class="form-group col-lg-2 col-lg-offset-8">
                <label >&nbsp;</label>
                <button id="changeSiteInfo" type="button" class="btn btn-primary form-control yahe-font-style">保存</button>
              </div>
              <div class="form-group col-lg-2">
                <label >&nbsp;</label>
                <button id="cancelSiteInfo" type="button" class="btn btn-primary form-control yahe-font-style" onclick="closeModal()">取消</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!--任务修改模态框end-->

  <!-- START Main section-->
  <section>
    <!-- START Page content-->
    <div class="content-wrapper">

      <div class="row">
        <!-- START panel-->
        <div class="panel panel-default">
          <div class="panel-body">
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>任务名称</th>
                <th>任务ID</th>
                <th>种子数</th>
                <th>类型</th>
                <th>状态</th>
                <th>创建时间</th>
                <th>周期</th>
                <th>操作</th>
              </tr>
              </thead>
              <tbody id="tasktbl">
                <tr>
                  <td>#name#</td>
                  <td>#tid#</td>
                  <td>#seedcount#</td>
                  <td>#typename#</td>
                  <td>#status#</td>
                  <td>#createtime#</td>
                  <td>#cycle#</td>
                  <td>#operate#</td>
                </tr>
              </tbody>
            </table>
            <div id="pagination">
              <ul class="pagination pull-right">
                <li><a href="#"> <i class="fa fa-chevron-left"></i>
                </a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"> <i class="fa fa-chevron-right"></i>
                </a></li>
              </ul>
            </div>
          </div>



        <!-- END panel-->
      </div>

      <!--end row-->

    </div>
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
<script src="proj/js/tablehh.js"></script>
<script type="text/javascript">

  $(function()  {

    $.controller = "task";

    query();

    $("#updateTask").hide();

  });

  function start(tid) {

    $.ajax({
      type : "POST",
      url : $.controller+"/startTask.do",
      dataType: "json",
      contentType: 'application/json',
      data : tid,
      async : false,
      success : function(data) {
        console.log(data);
        if(data.success==true) {
          $("#start"+tid+"").attr("disabled","disabled");
          $("#stop"+tid+"").attr("disabled",false);
        }
      }

    });

  }

  function rtStart(tid) {

    $.ajax({
      type : "POST",
      url : $.controller+"/rtStartTask.do",
      dataType: "json",
      contentType: 'application/json',
      data : tid,
      async : false,
      success : function(data) {
        console.log(data);
        if(data.data.result==true) {
          alert("启动成功");
        }else{
          alert("启动失败");
        }
      }

    });

  }

  function stop(tid) {

    $.ajax({
      type : "POST",
      url : $.controller+"/stopTask.do",
      dataType: "json",
      contentType: 'application/json',
      data : tid,
      async : false,
      success : function(data) {
        console.log(data);
        if(data.success==true) {
          $("#stop"+tid+"").attr("disabled","disabled");
          $("#start"+tid+"").attr("disabled",false);
        }
      }

    });

  }

  function del(tid) {

    $.ajax({
      type : "POST",
      url : $.controller+"/deleteTask.do",
      dataType: "json",
      contentType: 'application/json',
      data : tid,
      async : false,
      success : function(data) {
        if(data.success==true) {
          query();
        }
      }

    });

  }

  function updateTask (tid,userid,typeid) {
    var taskname = $("#tasknameinput").val();

    var tasktype = typeid;
    var depth = Number($("#crawlerdepth").val());
    var clickDepth = Number($("#dynamicdepth").val());
    var weightval = Number($("#weight").val());
    var cycleDays = Number($("#recrawldays").val());
    var seedsVal = $("#seedsTextArea").val();
    var protocalVal = $("#protocalfilter").val();
    if (document.all) {
// 如果是IE，怎么判断浏览器类型，自己找代码
      arr = seedsVal.split("\r\n");
    } else {
// firfox
      arr = seedsVal.split("\n");
    }

    protocalarr = protocalVal.split(",");

    var suffixVal = $("#suffixfilter").val();

    suffixarr = suffixVal.split(",");

    var regexVal = $("#regexfilter").val();

    regexarr = regexVal.split(",");
    var postdata = {
      taskid:tid,
      uid:userid,
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
    console.log(postdata);

    $.ajax({
      type: "POST",
      url: "task/updateTask.do",
      dataType: "json",
      contentType: 'application/json',
      async: true,
      data: JSON.stringify(postdata),
      success: function (data) {
        if (data.success) {
          alert("修改成功");
          closeModal();
          query();
        } else {
          alert("创建失败");
        }
      }
    });
  }

  function update(tid) {
    $.ajax({
      type : "POST",
      url : $.controller+"/taskView.do",
      dataType: "json",
      contentType: 'application/json',
      data : tid,
      async : false,
      success : function(data) {

        console.log(data.data);
        $("#tasknameinput").val(data.data.task.name);
        $("#tasktypeid").val(data.data.typename);
        $("#crawlerdepth").val(data.data.task.crawlerdepth);
        $("#dynamicdepth").val(data.data.task.dynamicdepth);
        $("#weight").val(data.data.task.weight);
        $("#recrawldays").val(data.data.task.recrawldays);
        var seeds="";

        for(var  i=0;i<data.data.task.seeds.length;i++) {
          seeds += data.data.task.seeds[i];
          if (i != data.data.task.seeds.length - 1) {
            seeds += "\r\n";
          }
        }
          var protocals="";

          for(var  i=0;i<data.data.task.protocalfilter.length;i++) {
            protocals += data.data.task.protocalfilter[i];
            if (i != data.data.task.protocalfilter.length - 1) {
              protocals += ",";
            }
          }

        var suffixfilter="";

        for(var  i=0;i<data.data.task.suffixfilter.length;i++) {
          suffixfilter += data.data.task.suffixfilter[i];
          if (i != data.data.task.suffixfilter.length - 1) {
            suffixfilter += ",";
          }
        }

        var regexfilter="";

        for(var  i=0;i<data.data.task.regexfilter.length;i++) {
          regexfilter += data.data.task.regexfilter[i];
          if (i != data.data.task.regexfilter.length - 1) {
            regexfilter += ",";
          }
        }



        $("#seedsTextArea").val(seeds);
        $("#protocalfilter").val(protocals);
        $("#suffixfilter").val(suffixfilter);
        $("#regexfilter").val(regexfilter);
        $("#updateTask").show();

        $("#changeSiteInfo").bind("click",function(){
          updateTask(tid,data.data.task.uid,data.data.task.tasktypeid);

        });

      }

    });
  }

  function closeModal() {
    $("#updateTask").hide();
  }


  function table(datas) {
    var $listbody = $("#tasktbl");
    var itemnode = $listbody.attr("item")||$listbody.html();
    $listbody.attr("item",itemnode);
    $listbody.html("");
    $.each(datas,function (index,item) {
      var titemnode = itemnode.replace('#name#',item['name']);
      titemnode=titemnode.replace('#tid#',item['tid']);
      titemnode=titemnode.replace('#seedcount#',item['seedcount']);
      titemnode=titemnode.replace('#typename#',item['typename']);
      titemnode=titemnode.replace('#status#',item['status']);
      titemnode=titemnode.replace('#createtime#',item['createtime']);
      titemnode=titemnode.replace('#cycle#',item['cycle']);
      var stoporrun = item['stoporrun'];
      var tid = item['tid'];
      if(stoporrun==true){
        titemnode=titemnode.replace('#operate#'," <input id='update"+tid+"' type='button' class='mb-sm btn btn-info' onclick='update(\""+tid+"\")' value='修改' data-toggle='modal'> <input id='rtstart"+tid+"' type='button' class='mb-sm btn btn-info' onclick='rtStart(\""+tid+"\")' value='立即启动'> <input id='start"+tid+"' type='button' class='mb-sm btn btn-info' onclick='start(\""+tid+"\")' value='启动' disabled='disabled'> <input id='stop"+tid+"' type='button' class='mb-sm btn btn-info' onclick='stop(\""+tid+"\")' value='停止'> <input id='del"+tid+"' type='button' class='mb-sm btn btn-info' onclick='del(\""+tid+"\")' value='删除' >")
      }else{
        titemnode=titemnode.replace('#operate#'," <input id='update"+tid+"' type='button' class='mb-sm btn btn-info' onclick='update(\""+tid+"\")' value='修改' data-toggle='modal'> <input id='rtstart"+tid+"' type='button' class='mb-sm btn btn-info' onclick='rtStart(\""+tid+"\")' value='立即启动'> <input id='start"+tid+"' type='button' class='mb-sm btn btn-info' onclick='start(\""+tid+"\")' value='启动'> <input id='stop"+tid+"' type='button' class='mb-sm btn btn-info' onclick='stop(\""+tid+"\")' value='停止' disabled='disabled'> <input id='del"+tid+"' type='button' class='mb-sm btn btn-info' onclick='del(\""+tid+"\")' value='删除' >")
      }
      $listbody.append(titemnode);
    });
  }

</script>
<!-- END Scripts-->
</body>

</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>用户-高中信息</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
          name="viewport"
  />
  <!-- Bootstrap 3.3.7 -->
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"
  />
  <!-- Font Awesome -->
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css"
  />
  <!-- Ionicons -->
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bower_components/Ionicons/css/ionicons.min.css"
  />
  <!-- Theme style -->
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css"
  />
  <!-- iCheck -->
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css"
  />
  <link
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css"
  />

</head>
<style>
  .user-panel>.image>img{
    height: 45px;
  }
  .content-wrapper{
    /* background-image: url("./pic/whiteMap.jpg");
     background-repeat: no-repeat;
     background-size: cover; */
    position: relative;
  }
  .content-wrapper .descripe{
    position: absolute;
    top: 10%;
    left: 50%;
    transform: translateX(-50%);
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    text-align: center;
    background-color: white;
    width: 90%;
    min-height: 600px;
  }
  .content-wrapper .descripe p{
    font-size: 1.5em;
  }
  .content-wrapper .descripe .introduce-e{
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  }
  .content-wrapper .descripe .introduce{
    text-indent: 2em;
    text-align: left;
  }
  li{
    list-style-type: none;
  }
  .clear{
    clear: both;
  }
  ul{
    padding: 0;
  }
  .box-default:hover{
    border-top-color: steelblue;
  }
  .box-body{
    height: 80px;

  }
  .box-body p{
    text-indent: 2em;
    overflow : hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
  }
  #modal-report input,#modal-report textarea{
    border-radius: 4px;
  }
  .red{
    color: red;
  }

</style>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="javascript:void(0)" class="logo" style="padding: 0;" onclick=to("userMain")>
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>EIP</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>民办教育信息与监管平台</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a
              href="#"
              class="sidebar-toggle"
              data-toggle="push-menu"
              role="button"
      >
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img
                      src="${pageContext.request.contextPath}/upload/${User.SUImage}"
                      class="user-image"
                      alt="User Image"
              />
              <span class="hidden-xs">${User.SUName}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img
                        src="${pageContext.request.contextPath}/upload/${User.SUImage}"
                        class="img-circle"
                        alt="User Image"
                />

                <p>
                  <small>欢迎</small>
                  <!-- 这里的用户名需要被获取！！！！！！！！！！！！！！！！！！ -->
                  ${User.SUName}

                </p>
              </li>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="javascript:void(0)" class="btn btn-default btn-flat" onclick=to("userInfo")>个人中心</a>
                </div>
                <div class="pull-right">
                      <a href="${pageContext.request.contextPath}/logout" class="btn btn-default btn-flat">退出</a>
                    </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->

        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar ">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img
                      src="${pageContext.request.contextPath}/upload/${User.SUImage}"
                      class="img-circle"
                      alt="User Image"
              />
            </div>
            <div class="pull-left info">
          <!-- 这里的p需要被获取！！！！！！！！！！！！！！！！！！！！！ -->
          <p>${User.SUName}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">主菜单</li>
        <li class=" ">
          <a href="javascript:void(0)" onclick=to("userInfo")>
            <i class="fa fa-dashboard"></i> <span>个人信息</span>
          </a>
        </li>

        <li class="active treeview menu-open">
          <a href="#">
            <i class="fa fa-files-o"></i> <span>机构信息</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <!-- 二级栏目 -->
          <ul class="treeview-menu">
            <li ><a href="javascript:void(0)" onclick=to("kInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
            <li><a href="javascript:void(0)" onclick=to("pInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
            <li><a href="javascript:void(0)" onclick=to("mInfo")><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a></li>
            <li class="active"><a href="javascript:void(0)" onclick=to("hInfo")><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a></li>
            <li><a href="javascript:void(0)" onclick=to("cInfo")><i class="fa fa-circle-o"></i> 大&nbsp;&nbsp;学</a></li>
          </ul>
        </li>
       <li class="treeview" >
              <a href="javascript:void(0)" onclick=toWithNotice("userNotice")>
                <i class="fa fa-table"></i>  <span>公告展示</span>
              </a>
            </li>
            <li class="treeview" >
              <a href="javascript:void(0)" onclick=to("userTipOff")>
                <i class="fa fa-television"></i> <span>曝光台</span>
              </a>
            </li>
             <li class="treeview"  id="dataAnalyze" style="display:none;">
                    <a href="javascript:void(0)" onclick=to("userDataManage")>
                        <i class="fa fa-bar-chart"></i> <span>数据分析</span>
                    </a>
                </li>
            <li class="treeview" >
              <a href="javascript:void(0)" onclick=to("userLocation")>
                <i class="fa fa-compass "></i></i> <span>机构定位</span>
              </a>
            </li>
            <li class="treeview" >
              <a href="javascript:void(0)" onclick=to("userSurvey")>
                <i class="fa fa-edit"></i> <span>系统问卷</span>
              </a>
            </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- 主体内容部分 -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="col-xs-4" style="margin-top: -16px;">
        <h1 style="display: inline-block;font-size: 24px;">
          高中信息
          <small>HINFO</small>
        </h1>
      </div>
      <form action="${pageContext.request.contextPath}/searchAllHighschoolByName" method="GET">
                <div class="row col-xs-8" style="text-align: right;">
                    <input type="text" class="form-control" placeholder="请输入机构名称"
                           style="width: 30%;display: inline-block;border-radius: 4px;" id="OName" name="name">
                    <button type="submit" class="btn btn-default" id="searchBtn">搜索</button>
                </div>
            </form>
      <div class="clear"></div>
    </section>

    <!-- Main content -->
    <!-- 幼稚园信息 -->
    <section class="content">
      <div class="row" >
        <c:if test="${empty hInfo}">
          没有高中数据！
        </c:if>
        <c:if test="${!empty hInfo}">
        <ul>
          <c:forEach items="${hInfo}" var="H">
            <li class="col-md-6" style="float: left;">
              <div class="box box-default">
                <div class="box-header with-border">
                  <a class="box-title" href="javascript:void(0)" onclick=toWithId("hInfoDescription","${H.HSId}")>${H.HSName}</a>
                  <button class="btn btn-warning report" style="margin-right: 3%;float: right"
                          data-toggle="modal" data-target="#modal-report"><i
                          class="icon fa fa-warning"></i>举报
                  </button>
                </div>
                <div class="box-body">
                  <p style="display: none" class="address">${H.HSAddress}</p>
                  <p>${H.HSDescription}</p>
                </div>
                <div style="text-align: right;">
                  <button class="btn btn-primary" style="margin-right: 30px; margin-bottom:8px;" onclick=toWithId("hInfoDescription","${H.HSId}")>
                    查看
                  </button>
                </div>
              </div>
            </li>
          </c:forEach>
        </ul>
          </c:if>


      </div>
    </section>
  </div>

  <!-- 幼稚园信息完 -->
  <!-- 主题内容完 -->




  <!-- Control Sidebar -->





</div>
<!-- ./wrapper -->
<!--模态窗，显示提交后服务器返回的信息
 data-backdrop="static"点击外部遮罩层不自动关闭
 data-keyboard="false"点击esc按钮不关闭
-->
<div
        class="modal fade"
        id="modal-default"
        data-backdrop="static"
        data-keyboard="false"
>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">提示</h4>
      </div>
      <div class="modal-body">
        <p id="modal-message">One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button
                id="model-closeBtn"
                type="button"
                class="btn btn-default"
                data-dismiss="modal"
        >
          关闭
        </button>
      </div>
    </div>
  </div>
</div>

<%--  举报模态框--%>
<div
        class="modal fade"
        id="modal-report"
        data-backdrop="static"
        data-keyboard="false"
>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
        >
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">举报信息填写</h4>
      </div>

      <div class="modal-body">
        <%--              表单填写--%>
        <form class="form-horizontal" id="report_form">
          <div class="form-group">
            <label for="name" class="col-sm-2 control-label">机构名称</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="name" id="name" readonly>
            </div>
          </div>
          <div class="form-group">
            <label for="address" class="col-sm-2 control-label">机构地址</label>
            <div class="col-sm-7">
              <input type="text" class="form-control" name="address" id="address" readonly>
            </div>
          </div>
          <div class="form-group">
            <label for="reason" class="col-sm-2 control-label">举报原因</label>
             <div class="col-sm-9">
                            <textarea class="form-control" name="reason" rows="4" placeholder="请输入相关描述"
                                      style="resize: none;" form="report_form" id="reason" onblur="textareaIsNull()"></textarea>
                  <div></div>
                </div>
          </div>
          <div class="form-group" hidden>
            <label for="4" class="col-sm-2 control-label"></label>
            <input id="4" name="qualify" type="text" value="0">
          </div>

        </form>
      </div>
      <div class="modal-footer">
        <button
        <%--                    id=""--%>
                type="button"
                class="btn btn-default"
                data-dismiss="modal"
        >
          关闭
        </button>
        <button
        <%--                    id=""--%>
                type="button"
                class="btn btn-default"
                data-dismiss="modal"
                id="submitBtn"
        >
          提交
        </button>
      </div>

    </div>
  </div>
</div>

</body>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>


<script>
  function to(page) {
        window.location.href = "${pageContext.request.contextPath}/to/" + page;
    }function toWithSurvey(page){
        window.location.href = "${pageContext.request.contextPath}/toWithSurvey/" + page;
    }$(function () {

        if("普通用户"!="${User.SUChar}"){
            $("#dataAnalyze").css("display","block");
        }
    });
    function toWithNotice(page){
        window.location.href = "${pageContext.request.contextPath}/displayConfirmedNotices/" + page;
    }
  function toWithId(page,id){
    window.location.href = "${pageContext.request.contextPath}/to/" + page +"/" + id;
  }
</script>

<%--第二次迭代的js--%>
<script>
  $(function () {
    //在举报框里，获取名字和地址信息
    $('.report').click(function () {
      var name = $(this).prev().text();
      $("#name").val(name);
      //parent()直接父元素，find()被选元素的所有子元素，children（）备选元素所有直接子元素
      var address = $(this).parent().next().children('.address').text();
      $("#address").val(address);
    });
      if("普通用户"!="${User.SUChar}"){
        $("#addNotice").css("visibility","visible");
      }
  })

 $("#submitBtn").click(function () {
      if(e!=false){
        $.ajax({
          url: "${pageContext.request.contextPath}/addTipOff",
          type: "POST",
          data: $("#report_form").serialize(),
          success: function (result) {
            if (result == "success") {
              $("#modal-message").html("提交成功！待管理员审核。");
              $("#modal-default").modal("show");
            } else {
              $("#modal-message").html("提交失败！");
              $("#modal-default").modal("show");
            }
          }
        });
      }else{
        $("#modal-message").html("描述不能为空！");
        $("#modal-default").modal("show");
      }

    })

    var e=false;
    function textareaIsNull(){
      var reason=$("#reason");
      if(reason.val()==''){
        $(reason).next("div").text("描述不能为空");
        $(reason).next("div").addClass("red");
        e=false;
      }else{
        $(reason).next("div").text("");
        $(reason).next("div").removeClass("red");
        e=true;
      }
    }
</script>
</html>

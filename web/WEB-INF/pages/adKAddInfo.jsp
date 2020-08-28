<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>管理员-幼稚园机构添加</title>
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
  .miaoShu h3{
    font-size: 1.2em;
    display: inline-block;
    width: 14%;
    text-align: right;
    margin-right: 30px;
  }
  #inputchoose input,#inputchoose label{
    margin-top: 10px;
  }
  a{
      color: white;
  }
  .content input,.content textarea{
    border-radius: 4px;
  }
</style>


  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      <header class="main-header">
        <!-- Logo -->
        <a href="javascript:void(0)" class="logo" style="padding: 0;" onclick=to("adMain")>
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
                          src="${pageContext.request.contextPath}/resources/pic/wangji.png"
                          class="user-image"
                          alt="User Image"
                  />
                  <span class="hidden-xs">${SMName}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img
                            src="${pageContext.request.contextPath}/resources/pic/wangji.png"
                            class="img-circle"
                            alt="User Image"
                    />

                    <p>
                      <small>欢迎</small>
                      <!-- 这里的用户名需要被获取！！！！！！！！！！！！！！！！！！ -->
                      ${SMName}

                    </p>
                  </li>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">

                    <div class="pull-right">
                      <a href="${pageContext.request.contextPath}/logout"
                     class="btn btn-default btn-flat">退出</a>
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
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img
                      src="${pageContext.request.contextPath}/resources/pic/wangji.png"
                      class="img-circle"
                      alt="User Image"
              />
            </div>
            <div class="pull-left info">
              <!-- 这里的p需要被获取！！！！！！！！！！！！！！！！！！！！！ -->
              <p>${SMName}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu" data-widget="tree">
            <li class="header">主菜单</li>
            <li class=" ">
              <a href="javascript:void(0)" onclick=to("adUserManage")>
                <i class="fa fa-dashboard"></i> <span>用户管理</span>
              </a>
            </li>
           
            <li class="active  treeview menu-open">
              <a href="#">
                <!-- 改！！！！！！！！！！！！！！！！！！！！！ -->
                <i class="fa fa-files-o"></i> <span>机构管理</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
               <!-- 二级栏目 -->
               <ul class="treeview-menu">
                <li class="active"><a href="javascript:void(0)" onclick=to("adKInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
                <li><a href="javascript:void(0)" onclick=to("adPInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
                <li><a href="javascript:void(0)" onclick=to("adMInfo")><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a></li>
                <li><a href="javascript:void(0)" onclick=to("adHInfo")><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a></li>
                <li><a href="javascript:void(0)" onclick=to("adCInfo")><i class="fa fa-circle-o"></i> 大&nbsp;&nbsp;学</a></li>
              </ul>
            </li>
          <li class=" treeview">
                        <a href="#">
                            <!-- 改！！！！！！！！！！！！！！！！！！！！！ -->
                            <i class="fa fa-table"></i> <span>公告管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <!-- 二级栏目 -->
                        <ul class="treeview-menu">
                            <li><a href="javascript:void(0)" onclick=to("adNoticeCheck")><i class="fa fa-circle-o"></i>
                                公告审核</a></li>
                            <li><a href="javascript:void(0)" onclick=toWithNotice("adNoticeInfo")><i class="fa fa-circle-o"></i> 公告查看</a>
                            </li>

                        </ul>
                    </li>
                    <li class=" treeview">
                        <a href="#">
                            <!-- 改！！！！！！！！！！！！！！！！！！！！！ -->
                            <i class="fa fa-television"></i> <span>举报管理</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <!-- 二级栏目 -->
                        <ul class="treeview-menu">
                            <li><a href="javascript:void(0)" onclick=to("adTipOffCheck")><i class="fa fa-circle-o"></i>举报审核</a></li>
                            <li><a href="javascript:void(0)" onclick=to("adTipOffInfo")><i class="fa fa-circle-o"></i>曝光台</a>
                            </li>

                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="javascript:void(0)" onclick=toWithSurvey("adSurvey")>
                            <i class="fa fa-edit"></i> <span>问卷反馈</span>
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
          <h1>
            幼稚园机构添加
          </h1>
        </section>
    
        <!-- Main content -->
        <!-- 幼稚园信息 -->
        <section class="content">
          <div class="row" >
            <!-- 第一个框 -->
            <div class="col-md-12">
            <div class="box box-default">
              <div class="box-header with-border">
                <h3 class="box-title">幼稚园</h3>
              </div>
              <div class="box-body">
                <div class="box-body " id="inputchoose" >
                    <form class="form-horizontal" id="add_form">
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="1">幼稚园名称</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KName" id="1" placeholder="请输入名称" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="2" class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KAddress" id="2" placeholder="请输入地址" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="3" class="col-sm-2 control-label">教职工数量</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KStuffs" id="3" placeholder="请输入教职工" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="4" class="col-sm-2 control-label">专职老师数量</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KTeachers" id="4" placeholder="请输入专职老师数量" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="5" class="col-sm-2 control-label">学生总人数</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KCapacity" id="5" placeholder="请输入学生总人数" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="6" class="col-sm-2 control-label">年招生人数</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" name="KCapacityYears" id="6" placeholder="请输入年招生人数" >
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="7" class="col-sm-2 control-label">机构描述</label>
                        <div class="col-sm-5">
                            <textarea class="form-control" name="KDescription" rows="4" placeholder="请输入相关描述" style="resize: none;" form="add_form" id="7"></textarea>
                        </div>
                      </div>
                      <!-- 隐藏 -->
                      <!-- <div class="form-group" hidden>
                        <label for="inputPassword" class="col-sm-2 control-label">机构类别</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" id="inputPassword" placeholder="幼稚园" >幼稚园
                        </div>
                      </div> -->
                      <div class="form-group" hidden>
                        <label for="8" class="col-sm-2 control-label" >点坐标X</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" id="8" placeholder="Password" value="0" name="KPointX">
                        </div>
                      </div>
                      <div class="form-group" hidden>
                        <label for="9" class="col-sm-2 control-label">点坐标Y</label>
                        <div class="col-sm-3">
                          <input type="text" class="form-control" id="9" placeholder="Password" value="0" name="KPointY">
                        </div>
                      </div>
                      <!-- 隐藏结束 -->
                      <div class="form-group">
                         <button type="button" class="btn btn-info col-xs-offset-2" style="margin-top: 20px;" id="submitBtn">
                          <!-- <a href="adKInfo.html"></a> -->
                          提交</button>
                          <button type="button" class="btn btn-info col-xs-offset-1" style="margin-top: 20px;" onclick=to("adKInfo")>
                            <!-- <a href="adKInfo.html"></a> -->
                             返回</button>
                      
                      </div>
                      
                    </form>
                  </div>
              </div>
            </div>
        </div>
    <!-- 第一个框结束 -->
    
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
    }
    function toWithNotice(page){
        window.location.href = "${pageContext.request.contextPath}/displayConfirmedNotices/" + page;
    }
     $('#submitBtn').click(function () {
        var form = $('#add_form')[0];
        var formData = new FormData(form);
        $.ajax({
            url:"${pageContext.request.contextPath}/addKindergarten",
            type:"POST",
            data:formData,
            processData:false,
            contentType:false,
            success:function (result) {
                if (result == "success"){
                    $('#modal-message').html("保存成功！");
                    $('#modal-default').modal('show');

                    window.location.href = "${pageContext.request.contextPath}/to/adKInfo";
                }else{
                    $('#modal-message').html("保存失败！");
                    $('#modal-default').modal('show');
                }
              }
            })
    })
   </script>
</html>

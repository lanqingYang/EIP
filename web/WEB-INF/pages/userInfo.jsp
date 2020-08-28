<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>用户-个人信息</title>
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
     /* background-image: url("/EIP页面/pic/whiteMap.jpg");
      background-repeat: no-repeat;
      background-size: cover; */
      position: relative;
  }
  #inputchoose input,#inputchoose label{
    margin-top: 10px;
  }

  a{
    color: white;
    text-decoration: none;
  }
  .box-body input{
    background-color: white;
    border: none;
    font-weight: 400;
  }
  .box-body input[readonly]{
    background-color: white;
    cursor: default;
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
  li{
    list-style-type: none;
  }
  
  .miaoshu button{
    margin-top: 30px;
    margin-bottom: 20px;
  }
  .clear{
    clear: both;
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


      <aside class="main-sidebar">
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
            <li class="treeview active">
              <a href="javascript:void(0)" onclick=to("userInfo")>
                <i class="fa fa-dashboard"></i> <span>个人信息</span>
              </a>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i> <span>机构信息</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <!-- 二级栏目 -->
              <ul class="treeview-menu">
                <li><a href="javascript:void(0)" onclick=to("kInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
                <li><a href="javascript:void(0)" onclick=to("pInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
                <li><a href="javascript:void(0)" onclick=to("mInfo")><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a></li>
                <li><a href="javascript:void(0)" onclick=to("hInfo")><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a></li>
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
      <div class="content-wrapper">
             <!-- Content Header (Page header) -->
         <!-- Main content -->
    <section class="content">
      <div class="row" style="min-height: 500px;">
        <div class="col-xs-12">
          <div class="box">
            <div class=" box-header with-border" >
              <h3 >个人信息</h3>
            </div>
            <!-- /.box-header -->
            <ul class="miaoShu">
              <li class="col-xs-12">
                  <h3 >用户名</h3> <span><strong><i> ${User.SUName}</i></strong> </span>
              </li>
              <li class="col-xs-12">
                  <h3>邮箱</h3> <span><strong><i>${User.SUMail}</i></strong> </span>
              </li>
              <li class="col-xs-12">
                  <h3>手机号</h3> <span><strong><i>${User.SUTel}</i></strong></span>
              </li>
              <li class="col-xs-12">
                  <h3>密保问题</h3> <span><strong><i>${User.SUQuestion}</i></strong></span>
              </li>
              <li class="col-xs-12">
                  <h3>密保答案</h3> <span><strong><i>${User.SUAnswer}</i></strong></span>
              </li>
              <li class="col-xs-12">
                  <h3>角色</h3> <span><strong><i>${User.SUChar}</i></strong></span>
              </li>
              <li class="col-xs-12">
                <h3>头像</h3>
                <img src="${pageContext.request.contextPath}/upload/${User.SUImage}" style="width: 30px;height: 30px"/>
              </li>
              <div class="clear"></div>
                <div class="form-group" style="margin-top: 20px;margin-bottom: 30px">
                   <button type="button" class="btn btn-info col-xs-offset-1" onclick=to("userInfoChange")>
                     <!-- <a href="userInfoChange.html"> </a> -->
                     修改信息</button>
                   <button type="button" class="btn btn-info col-xs-offset-1" onclick=to("userPwdChange")>
                     <!-- <a href="userPwdChange.html"></a> -->
                     修改密码</button>
                
                </div>
                
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

         
        </div>
        <!-- /.col -->

      <!-- /.row -->
    </section>
    <!-- /.content -->
      </div>


     
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
   </script>
</html>

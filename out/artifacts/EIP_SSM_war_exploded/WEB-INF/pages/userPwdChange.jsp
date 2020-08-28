<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>用户-密码修改</title>
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
    <!-- jQuery 3 -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>

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
  }
  #inputchoose input{
    width: 36%;
    border-radius: 4px;
  }
    .red{
        color: red;
    }


</style>


  <body class="hold-transition skin-blue sidebar-mini">
  <%--<c:if test="${msg} ne null">
    <script>
      $("#modal-message").html("${msg}");
      $("#modal-default").modal("show");
    </script>
  </c:if>--%>
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
  <c:if test="${msg != null}">
    <script>
        if ("${msg}" !=""){
      $("#modal-message").html("${msg}");
      $("#modal-default").modal("show");}
    </script>
  </c:if>
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
            <li class=" ">
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
            <div class="box-header with-border" >
              <h3 >个人信息</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body " id="inputchoose" >
                <form
                        class="form-horizontal"
                        role="form"
                        style="margin-left: 10%;"
                        id="add_form"
                        action="${pageContext.request.contextPath}/updateUserPwd/${User.SUId}"
                        method="POST"
                >

                  <div class="form-group">
                    <label for="newPwd" class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-10">
                      <input
                              type="password"
                              class="form-control"
                              id="newPwd"
                              name="newPwd"
                              placeholder="请输入密码"

                      />
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="pwd" class="col-sm-2 control-label">再次输入新密码</label>
                    <div class="col-sm-10">
                      <input
                              type="password"
                              class="form-control"
                              id="pwd"
                              placeholder="请再次输入"
                              name="SUPwd"
                              onblur="comparePwd()"
                      />
                        <span></span>
                    </div>
                  </div>
                    <div class="form-group" hidden>
                      <label for="10" class="col-sm-2 control-label">是否被禁用</label>
                      <div class="col-sm-10">
                        <input
                                type="text"
                                class="form-control"
                                id="10"
                                name="SUQualify"
                                value="${User.SUQualify}"
                        />
                      </div>
                    </div>
                    <div class="form-group" hidden>
                      <label for="11" class="col-sm-2 control-label">是否被确定</label>
                      <div class="col-sm-10">
                        <input
                                type="text"
                                class="form-control"
                                id="11"
                                name="SUVerify"
                                value="${User.SUVerify}"
                        />
                      </div>
                    </div>
                  <div class="form-group">
                    <div style="width: 100%; margin-top: 40px;margin-left: 20%">
                      <button
                              type="submit"
                              class="btn btn-primary"
                              style="float: none;"
                              id="submitBtn"
                      >
                        <!-- <a href="login.html"></a> -->
                        提交
                      </button>

                      <button type="button" class="btn btn-info " style="margin-left: 40px;" onclick=to("userInfo")>
                        <!-- <a href="userInfo.html"></a> -->
                        返回
                      </button>
                    </div>
                  </div>
                </form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

         
        </div>
        <!-- /.col -->
      </div>
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



  </body>
   <!-- jQuery 3 -->
<!-- jQuery 3 -->

<!-- Bootstrap 3.3.7 -->
<%--<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>--%>
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



    /*$("#submitBtn").click(function () {
      var newPwd = document.getElementById("newPwd");
      var pwd = document.getElementById("pwd");
      if (newPwd.value == pwd.value) {
        var form = $("#add_form")[0];
        var formData = new FormData(form);
        $.ajax({
          <%--url: "${pageContext.request.contextPath}/updateUser/${User.SUId}",--%>
          type: "POST",
          data: formData,
          success: function (result) {
            if (result == "success") {
              $("#modal-message").html("修改成功！");
              $("#modal-default").modal("show");
            } else {
              $("#modal-message").html("修改失败！");
              $("#modal-default").modal("show");
            }
          }
        });
      }else {
        $("#modal-message").html("两次输入密码不一致！");
        $("#modal-default").modal("show");
      }
    })*/
  </script>

  <script>
      function comparePwd(){
          var password1=$("#newPwd"); //新密码
          var password2=$("#pwd");  //重复输入
          if(password1.val()!=password2.val()){
              $(password2).next("span").text("两次密码输入不同");
              $(password2).next("span").addClass("red");
              b=false;
          }else{
              $(password2).next("span").text("");
              $(password2).next("span").removeClass("red");
              b=true;
          }
      }
  </script>
</html>

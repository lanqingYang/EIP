<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>管理员-幼稚园信息</title>
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
  
  button>a{
    color: white;
  }

  .infoList{
    text-align: right;
    
  }
  .infoList button{
    margin-right: 10px;
    margin-bottom:8px;
  }

  .modal-header{
  margin-top: 20%;
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
        <div class="col-xs-5" style="margin-top: -16px;">
        <h1 style="display: inline-block;font-size: 24px;">
          幼稚园信息
          <small>KINFO</small>
        </h1>
        <button class="btn btn-info" style="margin-top:-10px; margin-left: 20px;" onclick=to("adKAddInfo")>
          <!-- <a href="adKAddInfo.html"></a>  -->
        ＋添加机构</button>
      </div>
          <form action="${pageContext.request.contextPath}/searchAllKindergartenByName" method="GET">
              <div class="row col-xs-7" style="text-align: right;">
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
            <c:if test="${empty kInfo}">
    没有幼儿园数据！
</c:if>
<c:if test="${!empty kInfo}">
  <ul>
    <c:forEach items="${kInfo}" var="k">
      <li class="col-md-6" style="float: left;">
        <div class="box box-default">
          <div hidden class="idValue">${k.KId}</div>
          <div class="box-header with-border">
            <a class="box-title" href="javascript:void(0)" onclick=toWithId("adKInfoDescription","${k.KId}")>
              ${k.KName}</a>
          </div>
          <div class="box-body">
            <p>${k.KDescription}</p>
          </div>

                         <!-- 新加的按钮 -->
    <div class="infoList">
      <button class="btn btn-danger" data-toggle="modal" data-target="#myModal-del" onclick=deleteById("${k.KId}")>
        删除
      </button>
      <button class="btn btn-warning" onclick=toWithId("adKInfoDesChange","${k.KId}")>
        修改<!-- <a href="adKInfoDesChange.html"></a>修改 -->
      </button>
      <button class="btn btn-primary" onclick=toWithId("adKInfoDescription","${k.KId}")>
      <!-- <a href="adKInfoDescription.html"/> -->
      查看</button>
    </div>
    <!-- 添加新按钮块结束 -->
        </div>
      </li>
    </c:forEach>
    <div class="clear"></div>
  </ul>
</c:if>

          </div>
    
        </section>
      </div>
      <!-- 幼稚园信息完 -->



            <!-- Control Sidebar -->

      

    </div>

  <!-- 删除模态框 -->
<%--  <div class="modal fade" id="myModal-del" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
<%--                    &times;--%>
<%--                </button>--%>
<%--                <div>--%>
<%--                    <p><strong>确定要删除吗？</strong></p>--%>
<%--                </div>--%>

<%--                <div style="width: 100%;text-align: right;">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">取消--%>
<%--                    </button>--%>
<%--                    <button type="submit" class="btn btn-primary" style="margin-right: 14px;" onclick=deleteById("${k.KId}")>--%>
<%--                        <!-- <a href="#" style="color: white"></a> -->--%>
<%--                    确定</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>





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

    function toWithId(page,id){
      window.location.href = "${pageContext.request.contextPath}/to/" + page +"/" + id;
    }

    function deleteById(id) {
      //
      // alert(id);
      if(window.confirm('确定要删除吗？')){
        //继续执行

        $.ajax({
            url: "${pageContext.request.contextPath}/deleteKindergarten/" + id,
            type: "GET",
            success: function (result) {
                if (result == "success") {
                    window.location.reload();
                } else {
                    $('#modal-message').html("删除失败！");
                    $('#modal-default').modal('show');
                }
            }
        })
      }
    }
  </script>
</html>

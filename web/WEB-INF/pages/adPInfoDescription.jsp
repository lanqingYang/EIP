<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>管理员-小学详情信息</title>
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
  a{
    color: white;
  }
  .modal-header{
    margin-top: 40%;
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
            <li><a href="javascript:void(0)" onclick=to("adKInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
            <li class="active"><a href="javascript:void(0)" onclick=to("adPInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
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
        详情信息
        <small>小学</small>
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
              <h3 class="box-title" >${primarySchool.PSName}</h3>
            </div>
            <div class="box-body">
              <ul class="miaoShu">
                <li class="col-xs-10">
                  <h3 >地址</h3> <span><strong><i>${primarySchool.PSAddress}</i></strong> </span>
                </li>
                <li class="col-xs-10">
                  <h3>教职工数量</h3> <span><strong><i>${primarySchool.PSStuffs}</i></strong> </span>
                </li>
                <li class="col-xs-10">
                  <h3>专职教师数量</h3> <span><strong><i>${primarySchool.PSTeachers}</i></strong></span>
                </li>
                <li class="col-xs-10">
                  <h3>学生总人数</h3> <span><strong><i>${primarySchool.PSCapacity}</i></strong></span>
                </li>
                <li class="col-xs-10">
                  <h3>每年招生人数</h3> <span><strong><i>${primarySchool.PSCapacityYears}</i></strong></span>
                </li>
                <li class="col-xs-10">
                  <h3>学校描述</h3> <span><strong><i>${primarySchool.PSDescription}</i></strong></span>

                </li>
                <div class="form-group col-xs-12 ">
                  <button type="button" class="btn btn-danger col-xs-offset-1" style="margin-top: 30px;" data-toggle="modal" data-target="#myModal-del">删除</button>

                  <button type="button" class="btn btn-warning col-xs-offset-1" style="margin-top: 30px; margin-left: 30px;" onclick=toWithId("adPInfoDesChange","${primarySchool.PSId}")>
                    <!-- <a href="adKInfoDesChange.html"></a> -->
                    修改</button>

                  <button type="button" class="btn btn-info col-xs-offset-1" style="margin-top: 30px;margin-left: 30px;" onclick=to("adPInfo")>
                    <!-- <a href="adKInfo.html"></a>  -->
                    返回</button>
                </div>
              </ul>

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


<!-- 删除模态框 -->
<div class="modal fade" id="myModal-del" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          &times;
        </button>
        <div>
          <p><strong>确定要删除吗？</strong></p>
        </div>

        <div style="width: 100%;text-align: right;">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消
          </button>
          <button type="submit" class="btn btn-primary" style="margin-right: 14px;" onclick=deleteById(${primarySchool.PSId})>
            <!-- <a href="adKInfo.html" style="color: white"></a> -->
            确定</button>
        </div>
      </div>
    </div>
  </div>
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
  function toWithId(page,id){
    window.location.href = "${pageContext.request.contextPath}/to/" + page+"/"+id;
  }

  function deleteById(id) {
    $.ajax({
      url: "${pageContext.request.contextPath}/deletePrimarySchool/" + id,
      type: "GET",
      success: function (result) {
        if (result == "success") {
          toWithId("adPInfo","${primarySchool.PSId}")

          //window.location.reload();
        } else {
          $('#modal-message').html("删除失败！");
          $('#modal-default').modal('show');
        }
      }
    })
  }
</script>
</html>

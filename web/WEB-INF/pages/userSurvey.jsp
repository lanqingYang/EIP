<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html> -->
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>用户-系统问卷</title>
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
    <!-- daterange picker -->
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/bower_components/bootstrap-daterangepicker/daterangepicker.css"
    />
    <!-- bootstrap datepicker -->
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/iCheck/all.css"/>
    <!-- Bootstrap Color Picker -->
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
    />
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css"/>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css"/>
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css"
    />
</head>
<style>
    .user-panel > .image > img {
        height: 45px;
    }

    .content-wrapper {
        /* background-image: url("./pic/whiteMap.jpg");
         background-repeat: no-repeat;
         background-size: cover; */
        position: relative;
    }

    .content-wrapper .descripe {
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

    .content-wrapper .descripe p {
        font-size: 1.5em;
    }

    .content-wrapper .descripe .introduce-e {
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }

    .content-wrapper .descripe .introduce {
        text-indent: 2em;
        text-align: left;
    }

    li {
        list-style-type: none;
    }

    .clear {
        clear: both;
    }

    ul {
        padding: 0;
    }

    .box-default:hover {
        border-top-color: steelblue;
    }

    .box-body p {
        text-indent: 2em;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
    }

    #report_form input, #report_form textarea {
        border-radius: 3px;

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
                                    <a href="javascript:void(0)" class="btn btn-default btn-flat"
                                       onclick=to("userInfo")>个人中心</a>
                                </div>
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
                <li class="">
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
                        <li><a href="javascript:void(0)" onclick=to("pInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("mInfo")><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("hInfo")><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("cInfo")><i class="fa fa-circle-o"></i> 大&nbsp;&nbsp;学</a>
                        </li>
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
                <li class="treeview active" >
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
            <h1>
                系统问卷
                <small>Survey</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">


            <div class="row col-sm-10">


                <div class="box box-primary ">
                    <div class="box-header" >
                        <h3 class="box-title">
                            请对该系统进行评价
                        </h3>
                    </div>
                    <div class="box-body">
                        <form
                                class="form-horizontal"
                                role="form"
                                id="add_form"
                                enctype="multipart/form-data"
                                style="font-size: 1.1em;"

                        >

                            <div class="form-group" >
                                <label class="col-sm-5 ">Q1:系统的反应速度是否敏捷:</label
                                >
                                    <!-- radio -->
                                    <div class="form-group col-sm-4">
                                        <label class="col-sm-4 control-label">是
                                            <input type="radio" name="Q1" class="minimal"  value="1" checked/>
                                        </label>
                                        <label class="col-sm-4 control-label">否
                                            <input type="radio" name="Q1" class="minimal" value="0"/>
                                        </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q2:系统界面布局是否合理:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q2" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q2" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q3:系统的功能板块划分是否合理:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q3" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q3" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q4:系统的录入信息是否方便:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q4" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q4" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q5:系统查找信息是否方便:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q5" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q5" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q6:系统色彩效果是否满意:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q6" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q6" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" >
                                <label class="col-sm-5 ">Q7:整体而言，系统体验效果是否满意:</label
                                >
                                <!-- radio -->
                                <div class="form-group col-sm-4">
                                    <label class="col-sm-4 control-label">是
                                        <input type="radio" name="Q7" class="minimal"  value="1" checked/>
                                    </label>
                                    <label class="col-sm-4 control-label">否
                                        <input type="radio" name="Q7" class="minimal" value="0"/>
                                    </label>
                                </div>
                            </div>



                            <div class="form-group" style="text-align: center">
                                <div style="width: 100%;  margin-top: 30px">
                                    <button
                                            type="button"
                                            class="btn btn-primary"
                                            style="float: none;"
                                            id="submitBtn"
                                    >
                                        <!-- <a href="login.html"></a> -->
                                        提交
                                    </button>


                                </div>
                            </div>
                        </form>


                    </div>

                </div>
                <!-- /.box -->

                <!-- /.col (right) -->
            </div>
            <!-- /.row -->
            <div class="clear"></div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
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
<!-- Select2 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- bootstrap datepicker -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
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

    function toWithId(page, id) {
        window.location.href = "${pageContext.request.contextPath}/to/" + page + "/" + id;
    }
</script>
<%--第二次迭代的js--%>
<script>
    $(function () {
        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck(
            {
                checkboxClass: "icheckbox_minimal-blue",
                radioClass: "iradio_minimal-blue",
            }
        );
    });

    $("#submitBtn").click(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/addSurvey",
            type: "POST",
            data: $("#add_form").serialize(),
            success: function (result) {
                if (result == "success") {
                    $("#modal-message").html("提交成功！");
                    $("#modal-default").modal("show");
                } else {
                    $("#modal-message").html("提交失败！");
                    $("#modal-default").modal("show");
                }
            }
        });
    })
</script>
</html>

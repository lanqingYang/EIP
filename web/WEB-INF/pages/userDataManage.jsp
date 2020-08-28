<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>用户-数据分析</title>
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

    .miaoShu h3 {
        font-size: 1.2em;
        display: inline-block;
        width: 14%;
        text-align: right;
        margin-right: 30px;
    }

    a {
        color: white;
    }

    .clear {
        clear: both;
    }
</style>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="javascript:void(0)" class="logo" style="padding: 0;" onclick=to("userMain")>
<%--        <a href="javascript:void(0)" class="logo" style="padding: 0;" onclick=getJSON()>--%>
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
                <li class=" ">
                    <a href="javascript:void(0)" onclick=to("userInfo")>
                        <i class="fa fa-dashboard"></i> <span>个人信息</span>
                    </a>
                </li>

                <li class="treeview ">
                    <a href="#">
                        <i class="fa fa-files-o"></i> <span>机构信息</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <!-- 二级栏目 -->
                    <ul class="treeview-menu">
                        <li><a href="javascript:void(0)" onclick=to("kInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
                        <li><a href="javascript:void(0)" onclick=to("pInfo")><i
                                class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
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
                <li class="treeview active" >
                    <a href="javascript:void(0)" onclick=to("userDataManage")>
                        <i class="fa fa-bar-chart"></i><span>数据分析</span>
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
                <li class="treeview" hidden>
                    <a href="#">
                        <i class="fa fa-circle-o text-aqua"></i></i> <span>机构定位</span>
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
                数据对比
                <small>Data</small>
            </h1>
        </section>

        <!-- Main content -->
        <!-- 幼稚园信息 -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li  class="active" onclick="showK()" ><a href="#tab_1" data-toggle="tab">幼稚园</a></li>
                            <li  onclick="showPS()"><a href="#tab_2" data-toggle="tab">小学</a></li>
                            <li  onclick="showMS()"><a href="#tab_3" data-toggle="tab" >初中</a></li>
                            <li  onclick="showHS()"><a href="#tab_4" data-toggle="tab" >高中</a></li>
                            <li  onclick="showC()"><a href="#tab_5" data-toggle="tab" >大学</a></li>
                            <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane  active" id="tab_1">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <!-- AREA CHART -->
                                        <div class="box box-primary" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Area Chart</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="areaChart" style="height:250px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- DONUT CHART -->
                                        <div class="box box-danger" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">师资</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <canvas id="pieChart" style="height:250px"></canvas>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (LEFT) -->
                                    <div class="col-md-12">
                                        <!-- LINE CHART -->
                                        <div class="box box-warning" >
                                            <div class="box-header with-border">
                                                <h3 class="box-title">专职教师/教职工</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart2" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">所有学生/每年招生</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (RIGHT) -->
                                </div>
                            </div>
                            <div class="tab-pane  " id="tab_2">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <!-- AREA CHART -->
                                        <div class="box box-primary" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Area Chart</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="1" style="height:250px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- DONUT CHART -->
                                        <div class="box box-danger" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">师资</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <canvas id="2" style="height:250px"></canvas>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (LEFT) -->
                                    <div class="col-md-12">
                                        <!-- LINE CHART -->
                                        <div class="box box-warning" >
                                            <div class="box-header with-border">
                                                <h3 class="box-title">专职教师/教职工</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart4" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">所有学生/每年招生</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart3" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (RIGHT) -->
                                </div>
                            </div>
                            <div class="tab-pane  " id="tab_3">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <!-- AREA CHART -->
                                        <div class="box box-primary" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Area Chart</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="3" style="height:250px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- DONUT CHART -->
                                        <div class="box box-danger" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">师资</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <canvas id="4" style="height:250px"></canvas>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (LEFT) -->
                                    <div class="col-md-12">
                                        <!-- LINE CHART -->
                                        <div class="box box-warning" >
                                            <div class="box-header with-border">
                                                <h3 class="box-title">专职教师/教职工</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart6" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">所有学生/每年招生</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart5" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (RIGHT) -->
                                </div>
                            </div>
                            <div class="tab-pane  " id="tab_4">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <!-- AREA CHART -->
                                        <div class="box box-primary" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Area Chart</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="5" style="height:250px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- DONUT CHART -->
                                        <div class="box box-danger" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">师资</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <canvas id="6" style="height:250px"></canvas>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (LEFT) -->
                                    <div class="col-md-12">
                                        <!-- LINE CHART -->
                                        <div class="box box-warning" >
                                            <div class="box-header with-border">
                                                <h3 class="box-title">专职教师/教职工</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart8" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">所有学生/每年招生</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart7" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (RIGHT) -->
                                </div>
                            </div>
                            <div class="tab-pane  " id="tab_5">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <!-- AREA CHART -->
                                        <div class="box box-primary" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Area Chart</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="7" style="height:250px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- DONUT CHART -->
                                        <div class="box box-danger" hidden>
                                            <div class="box-header with-border">
                                                <h3 class="box-title">师资</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <canvas id="8" style="height:250px"></canvas>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (LEFT) -->
                                    <div class="col-md-12">
                                        <!-- LINE CHART -->
                                        <div class="box box-warning" >
                                            <div class="box-header with-border">
                                                <h3 class="box-title">专职教师/教职工</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart10" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">所有学生/每年招生</h3>

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <canvas id="barChart9" style="height:230px"></canvas>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->

                                    </div>
                                    <!-- /.col (RIGHT) -->
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- nav-tabs-custom -->
                </div>
                <!-- /.col -->


                <!-- /.col -->
            </div>

            <!-- /.row -->

        </section>

    </div>
    <!-- 幼稚园信息完 -->
    <!-- 主题内容完 -->

    <!-- Control Sidebar -->

</div>


</body>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>

<script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard2.js"></script>
<!-- page script -->

<!-- iCheck -->
<script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
<!-- ChartJS -->
<script src="${pageContext.request.contextPath}/resources/bower_components/chart.js/Chart.js"></script>


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

<script>
    var kingdergartenDate;
    var klength;
    $(function () {
            $.ajax({
                async : false,
                url:"${pageContext.request.contextPath}/getKJSON",
                type:"get",
                dataType:"JSON",
                success:function (result) {
                    console.log(result);
                    kingdergartenDate=result;
                    klength=kingdergartenDate.length;
                }
            });

        //获取数组中的值
        var kNames=new Array(klength).fill('');  //学校名称  不加fill("")就不能在循环的时候赋值
        var kStuffs=new Array(klength).fill(''); //教职工
        var kTeachers=new Array(klength).fill(''); //专职教师
        var kCapacity=new Array(klength).fill(''); //去年招生
        var kCapacityYears=new Array(klength).fill(''); //今年招生
        for (var i = 0; i < klength; i++) {
            kNames[i]=kingdergartenDate[i].kname;
            kStuffs[i]=kingdergartenDate[i].kstuffs;
            kTeachers[i]=kingdergartenDate[i].kteachers;
            kCapacity[i]=kingdergartenDate[i].kcapacity;
            kCapacityYears[i]=kingdergartenDate[i].kcapacityYears;
        }

    //    图示
        /* ChartJS
              * -------
              * Here we will create a few charts using ChartJS
              */

        //--------------
        //- AREA CHART -
        //--------------


        var areaChartData = {
            labels: kNames,
            datasets: [
                {
                    label: 'Electronics',
                    fillColor: 'rgba(210, 214, 222, 1)',
                    strokeColor: 'rgba(210, 214, 222, 1)',
                    pointColor: 'rgba(210, 214, 222, 1)',
                    pointStrokeColor: '#c1c7d1',
                    pointHighlightFill: '#fff',
                    pointHighlightStroke: 'rgba(220,220,220,1)',
                    data: kCapacity
                },
                {
                    label: 'Digital Goods',
                    fillColor: 'rgba(60,141,188,0.9)',
                    strokeColor: 'rgba(60,141,188,0.8)',
                    pointColor: '#3b8bba',
                    pointStrokeColor: 'rgba(60,141,188,1)',
                    pointHighlightFill: '#fff',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data: kCapacityYears
                }
            ]
        }

        var areaChartData2 = {
            labels: kNames,
            datasets: [
                {
                    label: 'Electronics',
                    fillColor: 'rgba(210, 214, 222, 1)',
                    strokeColor: 'rgba(210, 214, 222, 1)',
                    pointColor: 'rgba(210, 214, 222, 1)',
                    pointStrokeColor: '#c1c7d1',
                    pointHighlightFill: '#fff',
                    pointHighlightStroke: 'rgba(220,220,220,1)',
                    data: kStuffs
                },
                {
                    label: 'Digital Goods',
                    fillColor: 'rgba(60,141,188,0.9)',
                    strokeColor: 'rgba(60,141,188,0.8)',
                    pointColor: '#3b8bba',
                    pointStrokeColor: 'rgba(60,141,188,1)',
                    pointHighlightFill: '#fff',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data: kTeachers
                }
            ]
        }


        //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        var barChartCanvas2 = $("#barChart2").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas);
        var barChart2 = new Chart(barChartCanvas2);
        var barChartData = areaChartData;
        var barChartData2 = areaChartData2;
        barChartData.datasets[1].fillColor = "#00a65a";
        barChartData2.datasets[1].fillColor = "#f39c12";
        barChartData.datasets[1].strokeColor = "#00a65a";
        barChartData2.datasets[1].strokeColor = "#f39c12";
        barChartData.datasets[1].pointColor = "#00a65a";
        barChartData2.datasets[1].pointColor = "#f39c12";
        var barChartOptions = {
            //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
            scaleBeginAtZero: true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines: true,
            //String - Colour of the grid lines
            scaleGridLineColor: "rgba(0,0,0,.05)",
            //Number - Width of the grid lines
            scaleGridLineWidth: 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines: true,
            //Boolean - If there is a stroke on each bar
            barShowStroke: true,
            //Number - Pixel width of the bar stroke
            barStrokeWidth: 2,
            //Number - Spacing between each of the X value sets
            barValueSpacing: 5,
            //Number - Spacing between data sets within X values
            barDatasetSpacing: 1,
            //String - A legend template
            //legendTemplate:
            <%-- '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',--%>
            //Boolean - whether to make the chart responsive
            responsive: true,
            maintainAspectRatio: true,
        };

        barChartOptions.datasetFill = false;
        barChart.Bar(barChartData, barChartOptions);
        barChart2.Bar(barChartData2, barChartOptions);
    })
</script>


<%--小学--%>
<script>
    var primarySchoolDate;
    var plength;

    function showPS(){
        $('#barChart3').css("height","260px");
        $('#barChart4').css("height","260px");
            $.ajax({
                async : false,
                url:"${pageContext.request.contextPath}/getPSJSON",
                type:"get",
                dataType:"JSON",
                success:function (result) {
                    primarySchoolDate=result;
                    plength=primarySchoolDate.length;
                }
            })

            //获取数组中的值
            var psNames=new Array(plength).fill('');  //学校名称  不加fill("")就不能在循环的时候赋值
            var psStuffs=new Array(plength).fill(''); //教职工
            var psTeachers=new Array(plength).fill(''); //专职教师
            var psCapacity=new Array(plength).fill(''); //去年招生
            var psCapacityYears=new Array(plength).fill(''); //今年招生
            for (var i = 0; i < plength; i++) {
                psNames[i]=primarySchoolDate[i].psname;
                psStuffs[i]=primarySchoolDate[i].psstuffs;
                psTeachers[i]=primarySchoolDate[i].psteachers;
                psCapacity[i]=primarySchoolDate[i].pscapacity;
                psCapacityYears[i]=primarySchoolDate[i].pscapacityYears;
            }

            //    图示
            /* ChartJS
                  * -------
                  * Here we will create a few charts using ChartJS
                  */

            //--------------
            //- AREA CHART -
            //--------------


             areaChartData = {
                labels: psNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: psCapacity
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: psCapacityYears
                    }
                ]
            }

             areaChartData2 = {
                labels: psNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: psStuffs
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: psTeachers
                    }
                ]
            }


            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $("#barChart3").get(0).getContext("2d");
            var barChartCanvas2 = $("#barChart4").get(0).getContext("2d");
            var barChart = new Chart(barChartCanvas);
            var barChart2 = new Chart(barChartCanvas2);
            var barChartData = areaChartData;
            var barChartData2 = areaChartData2;
            barChartData.datasets[1].fillColor = "#00a65a";
            barChartData2.datasets[1].fillColor = "#f39c12";
            barChartData.datasets[1].strokeColor = "#00a65a";
            barChartData2.datasets[1].strokeColor = "#f39c12";
            barChartData.datasets[1].pointColor = "#00a65a";
            barChartData2.datasets[1].pointColor = "#f39c12";
            var barChartOptions = {
                //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
                scaleBeginAtZero: true,
                //Boolean - Whether grid lines are shown across the chart
                scaleShowGridLines: true,
                //String - Colour of the grid lines
                scaleGridLineColor: "rgba(0,0,0,.05)",
                //Number - Width of the grid lines
                scaleGridLineWidth: 1,
                //Boolean - Whether to show horizontal lines (except X axis)
                scaleShowHorizontalLines: true,
                //Boolean - Whether to show vertical lines (except Y axis)
                scaleShowVerticalLines: true,
                //Boolean - If there is a stroke on each bar
                barShowStroke: true,
                //Number - Pixel width of the bar stroke
                barStrokeWidth: 2,
                //Number - Spacing between each of the X value sets
                barValueSpacing: 5,
                //Number - Spacing between data sets within X values
                barDatasetSpacing: 1,
                //String - A legend template
                //legendTemplate:
                <%-- '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',--%>
                //Boolean - whether to make the chart responsive
                responsive: true,
                maintainAspectRatio: true,
            };

            barChartOptions.datasetFill = false;
            barChart.Bar(barChartData, barChartOptions);
            barChart2.Bar(barChartData2, barChartOptions);
    }
</script>

<%--中学--%>
<script>
    var middleSchoolDate;
    var mlength;
    function showMS(){
        $('#barChart5').css("height","260px");
        $('#barChart6').css("height","260px");
            $.ajax({
                async : false,
                url:"${pageContext.request.contextPath}/getMSJSON",
                type:"get",
                dataType:"JSON",
                success:function (result) {
                    middleSchoolDate=result;
                    console.log(middleSchoolDate);
                    mlength=middleSchoolDate.length;
                }
            })

            //获取数组中的值
            var msNames=new Array(mlength).fill('');  //学校名称  不加fill("")就不能在循环的时候赋值
            var msStuffs=new Array(mlength).fill(''); //教职工
            var msTeachers=new Array(mlength).fill(''); //专职教师
            var msCapacity=new Array(mlength).fill(''); //去年招生
            var msCapacityYears=new Array(mlength).fill(''); //今年招生
            for (var i = 0; i < mlength; i++) {
                msNames[i]=middleSchoolDate[i].msname;
                msStuffs[i]=middleSchoolDate[i].msstuffs;
                msTeachers[i]=middleSchoolDate[i].msteachers;
                msCapacity[i]=middleSchoolDate[i].mscapacity;
                msCapacityYears[i]=middleSchoolDate[i].mscapacityYears;
            }

            //    图示
            /* ChartJS
                  * -------
                  * Here we will create a few charts using ChartJS
                  */

            //--------------
            //- AREA CHART -
            //--------------


            areaChartData = {
                labels: msNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: msCapacity
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: msCapacityYears
                    }
                ]
            }

            areaChartData2 = {
                labels: msNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: msStuffs
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: msTeachers
                    }
                ]
            }


            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $("#barChart5").get(0).getContext("2d");
            var barChartCanvas2 = $("#barChart6").get(0).getContext("2d");
            var barChart = new Chart(barChartCanvas);
            var barChart2 = new Chart(barChartCanvas2);
            var barChartData = areaChartData;
            var barChartData2 = areaChartData2;
            barChartData.datasets[1].fillColor = "#00a65a";
            barChartData2.datasets[1].fillColor = "#f39c12";
            barChartData.datasets[1].strokeColor = "#00a65a";
            barChartData2.datasets[1].strokeColor = "#f39c12";
            barChartData.datasets[1].pointColor = "#00a65a";
            barChartData2.datasets[1].pointColor = "#f39c12";
            var barChartOptions = {
                //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
                scaleBeginAtZero: true,
                //Boolean - Whether grid lines are shown across the chart
                scaleShowGridLines: true,
                //String - Colour of the grid lines
                scaleGridLineColor: "rgba(0,0,0,.05)",
                //Number - Width of the grid lines
                scaleGridLineWidth: 1,
                //Boolean - Whether to show horizontal lines (except X axis)
                scaleShowHorizontalLines: true,
                //Boolean - Whether to show vertical lines (except Y axis)
                scaleShowVerticalLines: true,
                //Boolean - If there is a stroke on each bar
                barShowStroke: true,
                //Number - Pixel width of the bar stroke
                barStrokeWidth: 2,
                //Number - Spacing between each of the X value sets
                barValueSpacing: 5,
                //Number - Spacing between data sets within X values
                barDatasetSpacing: 1,
                //String - A legend template
                //legendTemplate:
                <%-- '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',--%>
                //Boolean - whether to make the chart responsive
                responsive: true,
                maintainAspectRatio: true,
            };

            barChartOptions.datasetFill = false;
            barChart.Bar(barChartData, barChartOptions);
            barChart2.Bar(barChartData2, barChartOptions);
    }
</script>

<%--高中学--%>
<script>
    var highSchoolDate;
    var hlength;
    function showHS(){
        $('#barChart7').css("height","260px");
        $('#barChart8').css("height","260px");
            $.ajax({
                async : false,
                url:"${pageContext.request.contextPath}/getHSJSON",
                type:"get",
                dataType:"JSON",
                success:function (result) {
                    highSchoolDate=result;
                    hlength=highSchoolDate.length;
                }
            })

            //获取数组中的值
            var hsNames=new Array(hlength).fill('');  //学校名称  不加fill("")就不能在循环的时候赋值
            var hsStuffs=new Array(hlength).fill(''); //教职工
            var hsTeachers=new Array(hlength).fill(''); //专职教师
            var hsCapacity=new Array(hlength).fill(''); //去年招生
            var hsCapacityYears=new Array(hlength).fill(''); //今年招生
            for (var i = 0; i < hlength; i++) {
                hsNames[i]=highSchoolDate[i].hsname;
                hsStuffs[i]=highSchoolDate[i].hsstuffs;
                hsTeachers[i]=highSchoolDate[i].hsteachers;
                hsCapacity[i]=highSchoolDate[i].hscapacity;
                hsCapacityYears[i]=highSchoolDate[i].hscapacityYears;
            }

            //    图示
            /* ChartJS
                  * -------
                  * Here we will create a few charts using ChartJS
                  */

            //--------------
            //- AREA CHART -
            //--------------


            areaChartData = {
                labels: hsNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: hsCapacity
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: hsCapacityYears
                    }
                ]
            }

            areaChartData2 = {
                labels: hsNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: hsStuffs
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: hsTeachers
                    }
                ]
            }


            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $("#barChart7").get(0).getContext("2d");
            var barChartCanvas2 = $("#barChart8").get(0).getContext("2d");
            var barChart = new Chart(barChartCanvas);
            var barChart2 = new Chart(barChartCanvas2);
            var barChartData = areaChartData;
            var barChartData2 = areaChartData2;
            barChartData.datasets[1].fillColor = "#00a65a";
            barChartData2.datasets[1].fillColor = "#f39c12";
            barChartData.datasets[1].strokeColor = "#00a65a";
            barChartData2.datasets[1].strokeColor = "#f39c12";
            barChartData.datasets[1].pointColor = "#00a65a";
            barChartData2.datasets[1].pointColor = "#f39c12";
            var barChartOptions = {
                //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
                scaleBeginAtZero: true,
                //Boolean - Whether grid lines are shown across the chart
                scaleShowGridLines: true,
                //String - Colour of the grid lines
                scaleGridLineColor: "rgba(0,0,0,.05)",
                //Number - Width of the grid lines
                scaleGridLineWidth: 1,
                //Boolean - Whether to show horizontal lines (except X axis)
                scaleShowHorizontalLines: true,
                //Boolean - Whether to show vertical lines (except Y axis)
                scaleShowVerticalLines: true,
                //Boolean - If there is a stroke on each bar
                barShowStroke: true,
                //Number - Pixel width of the bar stroke
                barStrokeWidth: 2,
                //Number - Spacing between each of the X value sets
                barValueSpacing: 5,
                //Number - Spacing between data sets within X values
                barDatasetSpacing: 1,
                //String - A legend template
                //legendTemplate:
                <%-- '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',--%>
                //Boolean - whether to make the chart responsive
                responsive: true,
                maintainAspectRatio: true,
            };

            barChartOptions.datasetFill = false;
            barChart.Bar(barChartData, barChartOptions);
            barChart2.Bar(barChartData2, barChartOptions);
    }
</script>

<%--大学--%>
<script>
    var collegeDate;
    var clength;
    function showC(){
        $('#barChart9').css("height","260px");
        $('#barChart10').css("height","260px");
            $.ajax({
                async : false,
                url:"${pageContext.request.contextPath}/getCJSON",
                type:"get",
                dataType:"JSON",
                success:function (result) {
                    collegeDate=result;
                    // console.log(collegeDate);
                    clength=collegeDate.length;
                }
            })

            //获取数组中的值
            var cNames=new Array(clength).fill('');  //学校名称  不加fill("")就不能在循环的时候赋值
            var cStuffs=new Array(clength).fill(''); //教职工
            var cTeachers=new Array(clength).fill(''); //专职教师
            var cCapacity=new Array(clength).fill(''); //去年招生
            var cCapacityYears=new Array(clength).fill(''); //今年招生
            for (var i = 0; i < clength; i++) {
                cNames[i]=collegeDate[i].cname;
                cStuffs[i]=collegeDate[i].cstuffs;
                cTeachers[i]=collegeDate[i].cteachers;
                cCapacity[i]=collegeDate[i].ccapacity;
                cCapacityYears[i]=collegeDate[i].ccapacityYears;
            }

            //    图示
            /* ChartJS
                  * -------
                  * Here we will create a few charts using ChartJS
                  */

            //--------------
            //- AREA CHART -
            //--------------


            areaChartData = {
                labels: cNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: cCapacity
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: cCapacityYears
                    }
                ]
            }

            areaChartData2 = {
                labels: cNames,
                datasets: [
                    {
                        label: 'Electronics',
                        fillColor: 'rgba(210, 214, 222, 1)',
                        strokeColor: 'rgba(210, 214, 222, 1)',
                        pointColor: 'rgba(210, 214, 222, 1)',
                        pointStrokeColor: '#c1c7d1',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(220,220,220,1)',
                        data: cStuffs
                    },
                    {
                        label: 'Digital Goods',
                        fillColor: 'rgba(60,141,188,0.9)',
                        strokeColor: 'rgba(60,141,188,0.8)',
                        pointColor: '#3b8bba',
                        pointStrokeColor: 'rgba(60,141,188,1)',
                        pointHighlightFill: '#fff',
                        pointHighlightStroke: 'rgba(60,141,188,1)',
                        data: cTeachers
                    }
                ]
            }


            //-------------
            //- BAR CHART -
            //-------------
            var barChartCanvas = $("#barChart9").get(0).getContext("2d");
            var barChartCanvas2 = $("#barChart10").get(0).getContext("2d");
            var barChart = new Chart(barChartCanvas);
            var barChart2 = new Chart(barChartCanvas2);
            var barChartData = areaChartData;
            var barChartData2 = areaChartData2;
            barChartData.datasets[1].fillColor = "#00a65a";
            barChartData2.datasets[1].fillColor = "#f39c12";
            barChartData.datasets[1].strokeColor = "#00a65a";
            barChartData2.datasets[1].strokeColor = "#f39c12";
            barChartData.datasets[1].pointColor = "#00a65a";
            barChartData2.datasets[1].pointColor = "#f39c12";
            var barChartOptions = {
                //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
                scaleBeginAtZero: true,
                //Boolean - Whether grid lines are shown across the chart
                scaleShowGridLines: true,
                //String - Colour of the grid lines
                scaleGridLineColor: "rgba(0,0,0,.05)",
                //Number - Width of the grid lines
                scaleGridLineWidth: 1,
                //Boolean - Whether to show horizontal lines (except X axis)
                scaleShowHorizontalLines: true,
                //Boolean - Whether to show vertical lines (except Y axis)
                scaleShowVerticalLines: true,
                //Boolean - If there is a stroke on each bar
                barShowStroke: true,
                //Number - Pixel width of the bar stroke
                barStrokeWidth: 2,
                //Number - Spacing between each of the X value sets
                barValueSpacing: 5,
                //Number - Spacing between data sets within X values
                barDatasetSpacing: 1,
                //String - A legend template
                //legendTemplate:
                <%-- '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',--%>
                //Boolean - whether to make the chart responsive
                responsive: true,
                maintainAspectRatio: true,
            };

            barChartOptions.datasetFill = false;
            barChart.Bar(barChartData, barChartOptions);
            barChart2.Bar(barChartData2, barChartOptions);
    }
</script>



</html>

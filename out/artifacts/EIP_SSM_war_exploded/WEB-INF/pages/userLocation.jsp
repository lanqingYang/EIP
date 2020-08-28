<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>用户-机构定位</title>
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
                    <li>
                        <a href="#" data-toggle="control-sidebar"
                        ><i class="fa fa-gears"></i
                        ></a>
                    </li>
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
                <li class="treeview">
                    <a href="javascript:void(0)" onclick=to("userNotice")>
                        <i class="fa fa-table"></i> <span>公告展示</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="javascript:void(0)" onclick=to("userTipOff")>
                        <i class="fa fa-pie-chart"></i> <span>曝光台</span>
                    </a>
                <li class="treeview"  id="dataAnalyze" style="display:none;">
                    <a href="javascript:void(0)" onclick=to("userDataManage")>
                        <i class="fa fa-bar-chart"></i> <span>数据分析</span>
                    </a>
                </li>
                <li class="treeview active" >
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
            <h1>
                定位
                <small>Location</small>
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
                                    <div class="col-md-12">
                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">

                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <div id="MyMap" style="height:500px"></div>
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
                                    <div class="col-md-12">
                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">


                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <div id="MyMap2" style="height:500px"></div>
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
                                    <div class="col-md-12">
                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">


                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <div id="MyMap3" style="height:500px"></div>
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
                                    <div class="col-md-12">
                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">


                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <div id="MyMap4" style="height:500px"></div>
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
                                    <div class="col-md-12">
                                        <!-- /.box -->
                                        <!-- BAR CHART -->
                                        <div class="box box-success">
                                            <div class="box-header with-border">


                                                <div class="box-tools pull-right">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body">
                                                <div class="chart">
                                                    <div id="MyMap5" style="height:500px"></div>
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
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->

        <!-- Tab panes -->
        <div class="tab-content" >
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                </ul>
            </div>
        </div>
    </aside>

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
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
<!-- ChartJS -->
<script src="${pageContext.request.contextPath}/resources/bower_components/chart.js/Chart.js"></script>


<script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard2.js"></script>
<!-- page script -->
<%--百度地图--%>
<script
        type="text/javascript"
        src="http://api.map.baidu.com/api?v=2.0&ak=6mrUxtrtYxTopSt9rcKbBNEDjmss9nLg"
></script>
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

<%--幼稚园--%>
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
                kingdergartenDate=result;
                klength=kingdergartenDate.length;
            }
        });

        //获取数组中的值
        var kPointX=new Array(klength).fill(''); //X点
        var kPointY=new Array(klength).fill(''); //Y点
        var kName=new Array(klength).fill(''); //名称
        var kId=new Array(klength).fill(''); //id
        var kAddress=new Array(klength).fill(''); //id
        for (var i = 0; i < klength; i++) {
            kPointX[i]=kingdergartenDate[i].kpointX;
            kPointY[i]=kingdergartenDate[i].kpointY;
            kName[i]=kingdergartenDate[i].kname;
            kId[i]=kingdergartenDate[i].kid;
            kAddress[i]=kingdergartenDate[i].kaddress;
        }

        // 百度地图API功能
        map = new BMap.Map("MyMap");
        //重庆中心点
        map.centerAndZoom(new BMap.Point( 106.530635013, 29.5446061089), 11);
        var data_info = [
            kPointY, //y点数组
            kPointX, //x点数组
            kName, //name数据
            kId, //id数组
            kAddress //地址
        ];
        var opts = {
            width: 250, // 信息窗口宽度
            height: 80, // 信息窗口高度
            //  title: "机构名", // 信息窗口标题
            enableMessage: true, //设置允许信息窗发送短息
        };
        for (var i = 0; i < data_info.length; i++) {
            var marker = new BMap.Marker(
                new BMap.Point(data_info[0][i], data_info[1][i])//Y，X

            );
            // 创建标注
            var content = "机构名:"+data_info[2][i]+"<br />"+"地址:"+data_info[4][i]+"<br />"+"<a style='color:blue' href='javascript:void(0)' onclick=toWithId('kInfoDescription',"+data_info[3][i]+")>"+"查看详情"+"</a>";
            map.addOverlay(marker); // 将标注添加到地图中
            addClickHandler(content, marker);
        }
        function addClickHandler(content, marker) {
            marker.addEventListener("click", function (e) {
                openInfo(content, e);
            });
        }
        function openInfo(content, e) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);//经纬度，Y/X
            var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }
        //显示类别
        map.addControl(
            new BMap.MapTypeControl({
                mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
            })
        );
        //开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true);
    })
</script>

<%--小学--%>
<script>
    var primarySchoolDate;
    var pslength;
    function showPS(){
        $.ajax({
            async : false,
            url:"${pageContext.request.contextPath}/getPSJSON",
            type:"get",
            dataType:"JSON",
            success:function (result) {
                primarySchoolDate=result;
                pslength=primarySchoolDate.length;
            }
        });

        //获取数组中的值
        var psPointX=new Array(pslength).fill(''); //X点
        var psPointY=new Array(pslength).fill(''); //Y点
        var psName=new Array(pslength).fill(''); //名称
        var psId=new Array(pslength).fill(''); //id
        var psAddress=new Array(pslength).fill(''); //id
        for (var i = 0; i < pslength; i++) {
            psPointX[i]=primarySchoolDate[i].pspointX;
            psPointY[i]=primarySchoolDate[i].pspointY;
            psName[i]=primarySchoolDate[i].psname;
            psId[i]=primarySchoolDate[i].psid;
            psAddress[i]=primarySchoolDate[i].psaddress;
        }

        // 百度地图API功能
        map = new BMap.Map("MyMap2");
        //重庆中心点
        map.centerAndZoom(new BMap.Point( 106.530635012, 29.5446061089), 11);
        var data_info = [
            psPointY, //y点数组
            psPointX, //x点数组
            psName, //name数据
            psId, //id数组
            psAddress //地址
        ];
        var opts = {
            width: 250, // 信息窗口宽度
            height: 80, // 信息窗口高度
            //  title: "机构名", // 信息窗口标题
            enableMessage: true, //设置允许信息窗发送短息
        };
        for (var i = 0; i < data_info.length; i++) {
            var marker = new BMap.Marker(
                new BMap.Point(data_info[0][i], data_info[1][i])//Y，X

            );
            // 创建标注
            var content = "机构名:"+data_info[2][i]+"<br />"+"地址:"+data_info[4][i]+"<br />"+"<a style='color:blue' href='javascript:void(0)' onclick=toWithId('pInfoDescription',"+data_info[3][i]+")>"+"查看详情"+"</a>";
            map.addOverlay(marker); // 将标注添加到地图中
            addClickHandler(content, marker);
        }
        function addClickHandler(content, marker) {
            marker.addEventListener("click", function (e) {
                openInfo(content, e);
            });
        }
        function openInfo(content, e) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);//经纬度，Y/X
            var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }
        //显示类别
        map.addControl(
            new BMap.MapTypeControl({
                mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
            })
        );
        //开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true);
    }


</script>

<%--初中--%>
<script>
    var middleSchoolDate;
    var mslength;
    function showMS(){
        $.ajax({
            async : false,
            url:"${pageContext.request.contextPath}/getMSJSON",
            type:"get",
            dataType:"JSON",
            success:function (result) {
                middleSchoolDate=result;
                mslength=middleSchoolDate.length;
            }
        });

        //获取数组中的值
        var msPointX=new Array(mslength).fill(''); //X点
        var msPointY=new Array(mslength).fill(''); //Y点
        var msName=new Array(mslength).fill(''); //名称
        var msId=new Array(mslength).fill(''); //id
        var msAddress=new Array(mslength).fill(''); //id
        for (var i = 0; i < mslength; i++) {
            msPointX[i]=middleSchoolDate[i].mspointX;
            msPointY[i]=middleSchoolDate[i].mspointY;
            msName[i]=middleSchoolDate[i].msname;
            msId[i]=middleSchoolDate[i].msid;
            msAddress[i]=middleSchoolDate[i].msaddress;
        }

        // 百度地图API功能
        map = new BMap.Map("MyMap3");
        //重庆中心点
        map.centerAndZoom(new BMap.Point( 106.530635012, 29.5446061089), 11);
        var data_info = [
            msPointY, //y点数组
            msPointX, //x点数组
            msName, //name数据
            msId, //id数组
            msAddress //地址
        ];
        var opts = {
            width: 250, // 信息窗口宽度
            height: 80, // 信息窗口高度
            //  title: "机构名", // 信息窗口标题
            enableMessage: true, //设置允许信息窗发送短息
        };
        for (var i = 0; i < data_info.length; i++) {
            var marker = new BMap.Marker(
                new BMap.Point(data_info[0][i], data_info[1][i])//Y，X

            );
            // 创建标注
            var content = "机构名:"+data_info[2][i]+"<br />"+"地址:"+data_info[4][i]+"<br />"+"<a style='color:blue' href='javascript:void(0)' onclick=toWithId('mInfoDescription',"+data_info[3][i]+")>"+"查看详情"+"</a>";
            map.addOverlay(marker); // 将标注添加到地图中
            addClickHandler(content, marker);
        }
        function addClickHandler(content, marker) {
            marker.addEventListener("click", function (e) {
                openInfo(content, e);
            });
        }
        function openInfo(content, e) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);//经纬度，Y/X
            var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }
        //显示类别
        map.addControl(
            new BMap.MapTypeControl({
                mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
            })
        );
        //开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true);
    }


</script>


<%--高中--%>
<script>
    var highSchoolSchoolDate;
    var hslength;
    function showHS(){
        $.ajax({
            async : false,
            url:"${pageContext.request.contextPath}/getHSJSON",
            type:"get",
            dataType:"JSON",
            success:function (result) {
                highSchoolDate=result;
                hslength=highSchoolDate.length;
            }
        });

        //获取数组中的值
        var hsPointX=new Array(hslength).fill(''); //X点
        var hsPointY=new Array(hslength).fill(''); //Y点
        var hsName=new Array(hslength).fill(''); //名称
        var hsId=new Array(hslength).fill(''); //id
        var hsAddress=new Array(hslength).fill(''); //id
        for (var i = 0; i < hslength; i++) {
            hsPointX[i]=highSchoolDate[i].hspointX;
            hsPointY[i]=highSchoolDate[i].hspointY;
            hsName[i]=highSchoolDate[i].hsname;
            hsId[i]=highSchoolDate[i].hsid;
            hsAddress[i]=highSchoolDate[i].hsaddress;
        }

        // 百度地图API功能
        map = new BMap.Map("MyMap4");
        //重庆中心点
        map.centerAndZoom(new BMap.Point( 106.530635012, 29.5446061089), 11);
        var data_info = [
            hsPointY, //y点数组
            hsPointX, //x点数组
            hsName, //name数据
            hsId, //id数组
            hsAddress //地址
        ];
        var opts = {
            width: 250, // 信息窗口宽度
            height: 80, // 信息窗口高度
            //  title: "机构名", // 信息窗口标题
            enableMessage: true, //设置允许信息窗发送短息
        };
        for (var i = 0; i < data_info.length; i++) {
            var marker = new BMap.Marker(
                new BMap.Point(data_info[0][i], data_info[1][i])//Y，X

            );
            // 创建标注
            var content = "机构名:"+data_info[2][i]+"<br />"+"地址:"+data_info[4][i]+"<br />"+"<a style='color:blue' href='javascript:void(0)' onclick=toWithId('hInfoDescription',"+data_info[3][i]+")>"+"查看详情"+"</a>";
            map.addOverlay(marker); // 将标注添加到地图中
            addClickHandler(content, marker);
        }
        function addClickHandler(content, marker) {
            marker.addEventListener("click", function (e) {
                openInfo(content, e);
            });
        }
        function openInfo(content, e) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);//经纬度，Y/X
            var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }
        //显示类别
        map.addControl(
            new BMap.MapTypeControl({
                mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
            })
        );
        //开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true);
    }


</script>

<%--大学--%>
<script>
    var collegeDate;
    var clength;
    function showC(){
        $.ajax({
            async : false,
            url:"${pageContext.request.contextPath}/getCJSON",
            type:"get",
            dataType:"JSON",
            success:function (result) {
                collegeDate=result;
                clength=collegeDate.length;
            }
        });

        //获取数组中的值
        var cPointX=new Array(clength).fill(''); //X点
        var cPointY=new Array(clength).fill(''); //Y点
        var cName=new Array(clength).fill(''); //名称
        var cId=new Array(clength).fill(''); //id
        var cAddress=new Array(clength).fill(''); //id
        for (var i = 0; i < clength; i++) {
            cPointX[i]=collegeDate[i].cpointX;
            cPointY[i]=collegeDate[i].cpointY;
            cName[i]=collegeDate[i].cname;
            cId[i]=collegeDate[i].cid;
            cAddress[i]=collegeDate[i].caddress;
        }

        // 百度地图API功能
        map = new BMap.Map("MyMap5");
        //重庆中心点
        map.centerAndZoom(new BMap.Point( 106.530635012, 29.5446061089), 11);
        var data_info = [
            cPointY, //y点数组
            cPointX, //x点数组
            cName, //name数据
            cId, //id数组
            cAddress //地址
        ];
        var opts = {
            width: 250, // 信息窗口宽度
            height: 80, // 信息窗口高度
            //  title: "机构名", // 信息窗口标题
            enableMessage: true, //设置允许信息窗发送短息
        };
        for (var i = 0; i < data_info.length; i++) {
            var marker = new BMap.Marker(
                new BMap.Point(data_info[0][i], data_info[1][i])//Y，X

            );
            // 创建标注
            var content = "机构名:"+data_info[2][i]+"<br />"+"地址:"+data_info[4][i]+"<br />"+"<a style='color:blue' href='javascript:void(0)' onclick=toWithId('cInfoDescription',"+data_info[3][i]+")>"+"查看详情"+"</a>";
            map.addOverlay(marker); // 将标注添加到地图中
            addClickHandler(content, marker);
        }
        function addClickHandler(content, marker) {
            marker.addEventListener("click", function (e) {
                openInfo(content, e);
            });
        }
        function openInfo(content, e) {
            var p = e.target;
            var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);//经纬度，Y/X
            var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象
            map.openInfoWindow(infoWindow, point); //开启信息窗口
        }
        //显示类别
        map.addControl(
            new BMap.MapTypeControl({
                mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
            })
        );
        //开启鼠标滚轮缩放
        map.enableScrollWheelZoom(true);

    }


</script>



</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>管理员-问卷反馈</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
            name="viewport"
    />
    <!-- Bootstrap 3.3.7 -->
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"
            type="text/css"
    />
    <!-- Font Awesome -->
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css"
            type="text/css"
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
        /* background-color: white; */
        width: 90%;
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

                <li class=" treeview">
                    <a href="#">
                        <!-- 改！！！！！！！！！！！！！！！！！！！！！ -->
                        <i class="fa fa-files-o"></i> <span>机构管理</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <!-- 二级栏目 -->
                    <ul class="treeview-menu">
                        <li><a href="javascript:void(0)" onclick=to("adKInfo")><i class="fa fa-circle-o"></i>
                            幼稚园</a></li>
                        <li><a href="javascript:void(0)" onclick=to("adPInfo")><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("adMInfo")><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("adHInfo")><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a>
                        </li>
                        <li><a href="javascript:void(0)" onclick=to("adCInfo")><i class="fa fa-circle-o"></i> 大&nbsp;&nbsp;学</a>
                        </li>
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

                <li class="treeview active">
                    <a href="javascript:void(0)" onclick=toWithSurvey("adSurvey")>
                        <i class="fa fa-edit"></i> <span>问卷反馈</span>
                    </a>
                </li>

            </ul>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>


    <!-- 主体内容部分 -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                问卷反馈
                <small>Survey</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- row -->
            <div class="row">
                <div class="col-xs-12">
                    <!-- jQuery Knob -->
                    <div class="box box-solid">
                        <div class="box-header">
                            <i class="fa fa-bar-chart-o"></i>

                            <h3 class="box-title">问卷数据</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-default btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-default btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" >
                            <div class="row">
                                <div class="col-xs-6 col-md-3 text-center">
                                    <input type="text" class="knob" value="${Q1}" data-min="0" data-max="${total}" data-width="90" data-height="90" data-fgColor="#3c8dbc" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q1系统反应速度是否敏捷</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-6 col-md-3 text-center">
                                    <input type="text" class="knob" value="${Q2}" data-min="0" data-max="${total}"  data-width="90" data-height="90" data-fgColor="#f56954" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q2系统布局是否合理</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-6 col-md-3 text-center">
                                    <input type="text" class="knob" value="${Q3}" data-min="0" data-max="${total}" data-width="90" data-height="90" data-fgColor="#00a65a" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q3系统功能模块划分合理</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-6 col-md-3 text-center">
                                    <input type="text" class="knob" value="${Q4}" data-min="0" data-max="${total}"  data-width="90" data-height="90" data-fgColor="#00c0ef" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q4系统录入信息是否方便</div>
                                </div>
                                <!-- ./col -->
                            </div>
                            <!-- /.row -->

                            <div class="row" style="margin-top: 40px">
                                <div class="col-xs-4 text-center" >
                                    <input type="text" class="knob" value="${Q5}" data-min="0" data-max="${total}"  data-width="90" data-height="90" data-fgColor="#932ab6" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q5系统查找信息是否方便</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-4 text-center">
                                    <input type="text" class="knob" value="${Q6}" data-min="0" data-max="${total}"  data-width="90" data-height="90" data-fgColor="#39CCCC" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q6系统色彩效果是否满意</div>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <input type="text" class="knob" value="${Q7}" data-min="0" data-max="${total}"  data-width="90" data-height="90" data-fgColor="#ff6384" readonly data-readonly="true">

                                    <div class="knob-label" style="font-weight: 600">Q7整体系统体验是否满意</div>
                                </div>
                                <!-- ./col -->
                            </div>
                            <!-- /.row -->
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
<!-- SlimScroll -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>
<!-- jQuery Knob -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-knob/js/jquery.knob.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- page script -->

<script>
    function to(page) {
        window.location.href = "${pageContext.request.contextPath}/to/" + page;
    }function toWithSurvey(page){
        window.location.href = "${pageContext.request.contextPath}/toWithSurvey/" + page;
    }

    function toWithNotice(page){
        window.location.href = "${pageContext.request.contextPath}/displayConfirmedNotices/" + page;
    }
</script>
<script>
    $(function () {
        /* jQueryKnob */

        $(".knob").knob({
            /*change : function (value) {
             //console.log("change : " + value);
             },
             release : function (value) {
             console.log("release : " + value);
             },
             cancel : function () {
             console.log("cancel : " + this.value);
             },*/
            draw: function () {

                // "tron" case
                if (this.$.data('skin') == 'tron') {

                    var a = this.angle(this.cv)  // Angle
                        , sa = this.startAngle          // Previous start angle
                        , sat = this.startAngle         // Start angle
                        , ea                            // Previous end angle
                        , eat = sat + a                 // End angle
                        , r = true;

                    this.g.lineWidth = this.lineWidth;

                    this.o.cursor
                    && (sat = eat - 0.3)
                    && (eat = eat + 0.3);

                    if (this.o.displayPrevious) {
                        ea = this.startAngle + this.angle(this.value);
                        this.o.cursor
                        && (sa = ea - 0.3)
                        && (ea = ea + 0.3);
                        this.g.beginPath();
                        this.g.strokeStyle = this.previousColor;
                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false);
                        this.g.stroke();
                    }

                    this.g.beginPath();
                    this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false);
                    this.g.stroke();

                    this.g.lineWidth = 2;
                    this.g.beginPath();
                    this.g.strokeStyle = this.o.fgColor;
                    this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                    this.g.stroke();

                    return false;
                }
            }
        });
        /* END JQUERY KNOB */

        //INITIALIZE SPARKLINE CHARTS
        $(".sparkline").each(function () {
            var $this = $(this);
            $this.sparkline('html', $this.data());
        });

        /* SPARKLINE DOCUMENTATION EXAMPLES http://omnipotent.net/jquery.sparkline/#s-about */
        drawDocSparklines();
        drawMouseSpeedDemo();

    });
    function drawDocSparklines() {

        // Bar + line composite charts
        $('#compositebar').sparkline('html', {type: 'bar', barColor: '#aaf'});
        $('#compositebar').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
            {composite: true, fillColor: false, lineColor: 'red'});


        // Line charts taking their values from the tag
        $('.sparkline-1').sparkline();

        // Larger line charts for the docs
        $('.largeline').sparkline('html',
            {type: 'line', height: '2.5em', width: '4em'});

        // Customized line chart
        $('#linecustom').sparkline('html',
            {
                height: '1.5em', width: '8em', lineColor: '#f00', fillColor: '#ffa',
                minSpotColor: false, maxSpotColor: false, spotColor: '#77f', spotRadius: 3
            });

        // Bar charts using inline values
        $('.sparkbar').sparkline('html', {type: 'bar'});

        $('.barformat').sparkline([1, 3, 5, 3, 8], {
            type: 'bar',
            tooltipFormat: '{{value:levels}} - {{value}}',
            tooltipValueLookups: {
                levels: $.range_map({':2': 'Low', '3:6': 'Medium', '7:': 'High'})
            }
        });

        // Tri-state charts using inline values
        $('.sparktristate').sparkline('html', {type: 'tristate'});
        $('.sparktristatecols').sparkline('html',
            {type: 'tristate', colorMap: {'-2': '#fa7', '2': '#44f'}});

        // Composite line charts, the second using values supplied via javascript
        $('#compositeline').sparkline('html', {fillColor: false, changeRangeMin: 0, chartRangeMax: 10});
        $('#compositeline').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
            {composite: true, fillColor: false, lineColor: 'red', changeRangeMin: 0, chartRangeMax: 10});

        // Line charts with normal range marker
        $('#normalline').sparkline('html',
            {fillColor: false, normalRangeMin: -1, normalRangeMax: 8});
        $('#normalExample').sparkline('html',
            {fillColor: false, normalRangeMin: 80, normalRangeMax: 95, normalRangeColor: '#4f4'});

        // Discrete charts
        $('.discrete1').sparkline('html',
            {type: 'discrete', lineColor: 'blue', xwidth: 18});
        $('#discrete2').sparkline('html',
            {type: 'discrete', lineColor: 'blue', thresholdColor: 'red', thresholdValue: 4});

        // Bullet charts
        $('.sparkbullet').sparkline('html', {type: 'bullet'});

        // Pie charts
        $('.sparkpie').sparkline('html', {type: 'pie', height: '1.0em'});

        // Box plots
        $('.sparkboxplot').sparkline('html', {type: 'box'});
        $('.sparkboxplotraw').sparkline([1, 3, 5, 8, 10, 15, 18],
            {type: 'box', raw: true, showOutliers: true, target: 6});

        // Box plot with specific field order
        $('.boxfieldorder').sparkline('html', {
            type: 'box',
            tooltipFormatFieldlist: ['med', 'lq', 'uq'],
            tooltipFormatFieldlistKey: 'field'
        });

        // click event demo sparkline
        $('.clickdemo').sparkline();
        $('.clickdemo').bind('sparklineClick', function (ev) {
            var sparkline = ev.sparklines[0],
                region = sparkline.getCurrentRegionFields();
            value = region.y;
            alert("Clicked on x=" + region.x + " y=" + region.y);
        });

        // mouseover event demo sparkline
        $('.mouseoverdemo').sparkline();
        $('.mouseoverdemo').bind('sparklineRegionChange', function (ev) {
            var sparkline = ev.sparklines[0],
                region = sparkline.getCurrentRegionFields();
            value = region.y;
            $('.mouseoverregion').text("x=" + region.x + " y=" + region.y);
        }).bind('mouseleave', function () {
            $('.mouseoverregion').text('');
        });
    }


</script>
</html>

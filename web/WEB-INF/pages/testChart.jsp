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
    <!-- ChartJS -->
    <script src="${pageContext.request.contextPath}/resources/bower_components/chart.js/Chart.js"></script>




</head>
<body>
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

    <div class="content-wrapper">

        <!-- AREA CHART -->
        <div class="box box-primary" hidden="hidden">
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
<div class="box box-danger">
    <div class="box-header with-border">
        <h3 class="box-title">Donut Chart</h3>

        <div class="box-tools pull-right">
            <button
                    type="button"
                    class="btn btn-box-tool"
                    data-widget="collapse"
            >
                <i class="fa fa-minus"></i>
            </button>
            <button
                    type="button"
                    class="btn btn-box-tool"
                    data-widget="remove"
            >
                <i class="fa fa-times"></i>
            </button>
        </div>
    </div>
    <div class="box-body">
        <canvas id="pieChart" style="height: 250px;"></canvas>
    </div>
    <!-- /.box-body -->
</div>

<!-- BAR CHART -->
<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Bar Chart</h3>

        <div class="box-tools pull-right">
            <button
                    type="button"
                    class="btn btn-box-tool"
                    data-widget="collapse"
            >
                <i class="fa fa-minus"></i>
            </button>
            <button
                    type="button"
                    class="btn btn-box-tool"
                    data-widget="remove"
            >
                <i class="fa fa-times"></i>
            </button>
        </div>
    </div>
    <div class="box-body">
        <div class="chart">
            <canvas id="barChart" style="height: 230px;"></canvas>
        </div>
    </div>
    <!-- /.box-body -->
</div>
    </div>
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
<script>
    $(function () {
            /* ChartJS
             * -------
             * Here we will create a few charts using ChartJS
             */

        //--------------
        //- AREA CHART -
        //--------------

        // Get context with jQuery - using jQuery's .get() method.
        var areaChartCanvas = $('#areaChart').get(0).getContext('2d')
        // This will get the first returned node in the jQuery collection.
        var areaChart       = new Chart(areaChartCanvas)

        var areaChartData = {
            labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [
                {
                    label               : 'Electronics',
                    fillColor           : 'rgba(210, 214, 222, 1)',
                    strokeColor         : 'rgba(210, 214, 222, 1)',
                    pointColor          : 'rgba(210, 214, 222, 1)',
                    pointStrokeColor    : '#c1c7d1',
                    pointHighlightFill  : '#fff',
                    pointHighlightStroke: 'rgba(220,220,220,1)',
                    data                : [65, 59, 80, 81, 56, 55, 40]
                },
                {
                    label               : 'Digital Goods',
                    fillColor           : 'rgba(60,141,188,0.9)',
                    strokeColor         : 'rgba(60,141,188,0.8)',
                    pointColor          : '#3b8bba',
                    pointStrokeColor    : 'rgba(60,141,188,1)',
                    pointHighlightFill  : '#fff',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data                : [28, 48, 40, 19, 86, 27, 90]
                }
            ]
        }

        <%--var areaChartOptions = {--%>
        <%--    //Boolean - If we should show the scale at all--%>
        <%--    showScale               : true,--%>
        <%--    //Boolean - Whether grid lines are shown across the chart--%>
        <%--    scaleShowGridLines      : false,--%>
        <%--    //String - Colour of the grid lines--%>
        <%--    scaleGridLineColor      : 'rgba(0,0,0,.05)',--%>
        <%--    //Number - Width of the grid lines--%>
        <%--    scaleGridLineWidth      : 1,--%>
        <%--    //Boolean - Whether to show horizontal lines (except X axis)--%>
        <%--    scaleShowHorizontalLines: true,--%>
        <%--    //Boolean - Whether to show vertical lines (except Y axis)--%>
        <%--    scaleShowVerticalLines  : true,--%>
        <%--    //Boolean - Whether the line is curved between points--%>
        <%--    bezierCurve             : true,--%>
        <%--    //Number - Tension of the bezier curve between points--%>
        <%--    bezierCurveTension      : 0.3,--%>
        <%--    //Boolean - Whether to show a dot for each point--%>
        <%--    pointDot                : false,--%>
        <%--    //Number - Radius of each point dot in pixels--%>
        <%--    pointDotRadius          : 4,--%>
        <%--    //Number - Pixel width of point dot stroke--%>
        <%--    pointDotStrokeWidth     : 1,--%>
        <%--    //Number - amount extra to add to the radius to cater for hit detection outside the drawn point--%>
        <%--    pointHitDetectionRadius : 20,--%>
        <%--    //Boolean - Whether to show a stroke for datasets--%>
        <%--    datasetStroke           : true,--%>
        <%--    //Number - Pixel width of dataset stroke--%>
        <%--    datasetStrokeWidth      : 2,--%>
        <%--    //Boolean - Whether to fill the dataset with a color--%>
        <%--    datasetFill             : true,--%>
        <%--    //String - A legend template--%>
        <%--    &lt;%&ndash;legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].lineColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',&ndash;%&gt;--%>
        <%--    //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container--%>
        <%--    maintainAspectRatio     : true,--%>
        <%--    //Boolean - whether to make the chart responsive to window resizing--%>
        <%--    responsive              : true--%>
        <%--}--%>

        <%--//Create the line chart--%>
        <%--areaChart.Line(areaChartData, areaChartOptions)--%>

        //-------------
        //- PIE CHART -
        //-------------
        // Get context with jQuery - using jQuery's .get() method.
        var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
        var pieChart = new Chart(pieChartCanvas);
        var PieData = [
            {
                value: 700,
                color: "#f56954",
                highlight: "#f56954",
                label: "Chrome",
            },
            {
                value: 500,
                color: "#00a65a",
                highlight: "#00a65a",
                label: "IE",
            },
            {
                value: 400,
                color: "#f39c12",
                highlight: "#f39c12",
                label: "FireFox",
            },
            {
                value: 600,
                color: "#00c0ef",
                highlight: "#00c0ef",
                label: "Safari",
            },
            {
                value: 300,
                color: "#3c8dbc",
                highlight: "#3c8dbc",
                label: "Opera",
            },
            {
                value: 100,
                color: "#d2d6de",
                highlight: "#d2d6de",
                label: "Navigator",
            },
        ];
        var pieOptions = {
            //Boolean - Whether we should show a stroke on each segment
            segmentShowStroke: true,
            //String - The colour of each segment stroke
            segmentStrokeColor: "#fff",
            //Number - The width of each segment stroke
            segmentStrokeWidth: 2,
            //Number - The percentage of the chart that we cut out of the middle
            percentageInnerCutout: 50, // This is 0 for Pie charts
            //Number - Amount of animation steps
            animationSteps: 100,
            //String - Animation easing effect
            animationEasing: "easeOutBounce",
            //Boolean - Whether we animate the rotation of the Doughnut
            animateRotate: true,
            //Boolean - Whether we animate scaling the Doughnut from the centre
            animateScale: false,
            //Boolean - whether to make the chart responsive to window resizing
            responsive: true,
            // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,
            //String - A legend template
            //legendTemplate:
            <%--    '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>',--%>
        };
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        pieChart.Doughnut(PieData, pieOptions);

        //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas);
        var barChartData = areaChartData;
        barChartData.datasets[1].fillColor = "#00a65a";
        barChartData.datasets[1].strokeColor = "#00a65a";
        barChartData.datasets[1].pointColor = "#00a65a";
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
        });
</script>
</html>
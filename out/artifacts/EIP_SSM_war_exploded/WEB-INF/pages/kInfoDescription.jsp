<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>用户-幼稚园信息详情</title>
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
           
            <li class="active treeview menu-open">
              <a href="#">
                <i class="fa fa-files-o"></i> <span>机构信息</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
               <!-- 二级栏目 -->
               <ul class="treeview-menu">
                <li class="active"><a href="javascript:void(0)" onclick=to("kInfo")><i class="fa fa-circle-o"></i> 幼稚园</a></li>
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
      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        详情信息
        <small>KINFO</small>
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
                          <li  class="active" ><a href="#tab_1" data-toggle="tab">详情</a></li>
                          <li  onclick="showMap()"><a href="#tab_2" data-toggle="tab">地图定位</a></li>
                          <li  onclick="showDate()"><a href="#tab_3" data-toggle="tab" >数据图示</a></li>
                          <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                      </ul>
                      <div class="tab-content">
                          <div class="tab-pane  active" id="tab_1">

                              <div class="box-header with-border">
                                  <h3 class="box-title">${kindergarten.KName}</h3>
                              </div>
                              <div class="box-body">
                                  <ul class="miaoShu">
                                      <li class="col-xs-10">
                                          <h3>地址</h3> <span><strong><i>${kindergarten.KAddress}</i></strong> </span>
                                      </li>
                                      <li class="col-xs-10">
                                          <h3>教职工数量</h3>
                                          <span><strong><i>${kindergarten.KStuffs}</i></strong> </span>
                                      </li>
                                      <li class="col-xs-10">
                                          <h3>专职教师数量</h3>
                                          <span><strong><i>${kindergarten.KTeachers}</i></strong></span>
                                      </li>
                                      <li class="col-xs-10">
                                          <h3>学生总人数</h3>
                                          <span><strong><i>${kindergarten.KCapacity}</i></strong></span>
                                      </li>
                                      <li class="col-xs-10">
                                          <h3>每年招生人数</h3>
                                          <span><strong><i>${kindergarten.KCapacityYears}</i></strong></span>
                                      </li>
                                      <li class="col-xs-10">
                                          <h3>学校描述</h3>
                                          <span><strong><i>${kindergarten.KDescription}</i></strong></span>

                                      </li>
                                      <div class="clear"></div>
                                      <div class="form-group col-xs-10">
                                          <button type="button" class="btn btn-info col-xs-offset-3"
                                                  style="margin-top: 20px;" onclick="to('kInfo')">返回
                                          </button>

                                      </div>
                                  </ul>
                              </div>
                          </div>
                          <!-- /.tab-pane -->
                          <div class="tab-pane" id="tab_2" >
                              <div class="box-header with-border">
                                  <h3 class="box-title">位置</h3>
                              </div>
                              <div class="box-body" id="MyMap" style="height: 380px"></div>
                          </div>
                          <!-- /.tab-pane -->
                          <div class="tab-pane" id="tab_3">
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
                                      <div class="box box-danger">
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
                                  <div class="col-md-6">
                                      <!-- LINE CHART -->
                                      <div class="box box-info" hidden>
                                          <div class="box-header with-border">
                                              <h3 class="box-title">Line Chart</h3>

                                              <div class="box-tools pull-right">
                                                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                  </button>
                                                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                          <div class="box-body">
                                              <div class="chart">
                                                  <canvas id="lineChart" style="height:250px"></canvas>
                                              </div>
                                          </div>
                                          <!-- /.box-body -->
                                      </div>
                                      <!-- /.box -->

                                      <!-- BAR CHART -->
                                      <div class="box box-success">
                                          <div class="box-header with-border">
                                              <h3 class="box-title">数据对比</h3>

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
  <!-- FastClick -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script>

  <script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard2.js"></script>
  <!-- iCheck -->
  <script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
  <!-- ChartJS -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/chart.js/Chart.js"></script>
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
  </script>

  <%--地图--%>
  <script>
      // 百度地图API功能
      function showMap() {
          var map = new BMap.Map("MyMap"); // 创建Map实例
          var point = new BMap.Point(${kindergarten.KPointY}, ${kindergarten.KPointX});
          var marker = new BMap.Marker(point); // 创建标注
          map.addOverlay(marker); // 将标注添加到地图中
          map.centerAndZoom(point, 15); // 初始化地图,设置中心点坐标和地图级别
          //1. 添加地图类型控件！！！！！！！！！！！！！
          map.addControl(
              new BMap.MapTypeControl({
                  mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP],
              })
          );
          map.setCurrentCity("重庆"); // 设置地图显示的城市 此项是必须设置的
          map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
          marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
      }

  </script>


  <%--图示--%>
  <script>
      function showDate(){
          /* ChartJS
       * -------
       * Here we will create a few charts using ChartJS
       */

          //--------------
          //- AREA CHART -
          //--------------
          $('#areaChart').css("height","260px");
          $('#pieChart').css("height","260px");
          $('#barChart').css("height","260px");
          // Get context with jQuery - using jQuery's .get() method.
          var areaChartCanvas = $('#areaChart').get(0).getContext("2d");
          // This will get the first returned node in the jQuery collection.
          var areaChart       = new Chart(areaChartCanvas)

          var areaChartData = {
              labels  : ['教职工/专职教师', '学生总人数/今年招生人数'],
              datasets: [
                  {
                      label               : 'Electronics',
                      fillColor           : 'rgba(210, 214, 222, 1)',
                      strokeColor         : 'rgba(210, 214, 222, 1)',
                      pointColor          : 'rgba(210, 214, 222, 1)',
                      pointStrokeColor    : '#c1c7d1',
                      pointHighlightFill  : '#fff',
                      pointHighlightStroke: 'rgba(220,220,220,1)',
                      data                : [${kindergarten.KStuffs}, ${kindergarten.KCapacity}]
                  },
                  {
                      label               : 'Digital Goods',
                      fillColor           : 'rgba(60,141,188,0.9)',
                      strokeColor         : 'rgba(60,141,188,0.8)',
                      pointColor          : '#3b8bba',
                      pointStrokeColor    : 'rgba(60,141,188,1)',
                      pointHighlightFill  : '#fff',
                      pointHighlightStroke: 'rgba(60,141,188,1)',
                      data                : [${kindergarten.KTeachers}, ${kindergarten.KCapacityYears}]
                  }
              ]
          }


          //-------------
          //- PIE CHART -
          //-------------
          // Get context with jQuery - using jQuery's .get() method.
          var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
          var pieChart = new Chart(pieChartCanvas);
          var PieData = [
              {
                  value: ${kindergarten.KStuffs},
                  color: "#f39c12",
                  highlight: "#f39c12",
                  label: "教职工",
              },
              {
                  value: ${kindergarten.KTeachers},
                  color: "#3c8dbc",
                  highlight: "#3c8dbc",
                  label: "专职教师",
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

      }

  </script>
</html>

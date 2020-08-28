<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>用户-个人信息修改</title>
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
        /* background-image: url("/EIP页面/pic/whiteMap.jpg");
         background-repeat: no-repeat;
         background-size: cover; */
        position: relative;
    }

    #inputchoose input, #inputchoose label {
        margin-top: 10px;
    }

    a {
        color: white;
    }

    #inputchoose input, #inputchoose select{
        width: 36%;
        border-radius: 4px;
    }
    .red{
        color:red;
    }


</style>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="userMain.html" class="logo" style="padding: 0;">
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
                <li class="active">
                    <a href="userInfo.html">
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
                        <li><a href="kInfo.html"><i class="fa fa-circle-o"></i> 幼稚园</a></li>
                        <li><a href="pInfo.html"><i class="fa fa-circle-o"></i> 小&nbsp;&nbsp;学</a></li>
                        <li><a href="mInfo.html"><i class="fa fa-circle-o"></i> 初&nbsp;&nbsp;中</a></li>
                        <li><a href="hInfo.html"><i class="fa fa-circle-o"></i> 高&nbsp;&nbsp;中</a></li>
                        <li><a href="cInfo.html"><i class="fa fa-circle-o"></i> 大&nbsp;&nbsp;学</a></li>
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
                        <div class="box-header with-border">
                            <h3>个人信息</h3>
                        </div>

                        <div class="box-body " id="inputchoose">
                            <form
                                    class="form-horizontal"
                                    role="form"
                                    style="margin-left: 10%;"
                                    id="add_form"
                                    enctype="multipart/form-data"
                            >
                                <%--            表单隐藏部分--%>
                                <div class="form-group" hidden>
                                    <label for="1" class="col-sm-2 control-label">用户名</label
                                    >
                                    <div class="col-sm-10">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="1"
                                                name="SUName"
                                                value="${User.SUName}"
                                        />
                                    </div>
                                </div>
                                <div class="form-group" hidden>
                                    <label for="2" class="col-sm-2 control-label">密码</label
                                    >
                                    <div class="col-sm-10">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="2"
                                                name="SUPwd"
                                                value="${User.SUPwd}"
                                        />
                                        <div class="col-sm-offset-1"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="3" class="col-sm-2 control-label"
                                    >邮箱</label
                                    >
                                    <div class="col-sm-10">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="3"
                                                name="SUMail"
                                                value="${User.SUMail}"
                                                onblur="emailCheck()"
                                        />
                                        <div class="col-sm-offset-1"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="4" class="col-sm-2 control-label"
                                    >电话</label
                                    >
                                    <div class="col-sm-10">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="4"
                                                name="SUTel"
                                                value="${User.SUTel}"
                                                onblur="telCheck()"
                                        />
                                        <div class="col-sm-offset-1"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="6" class="col-sm-2 control-label"
                                    >角色选择</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="SUChar" id="6">
                                            <option class="option1" value="普通用户">普通用户</option>
                                            <option class="option2" value="民办教育个人">民办教育个人</option>
                                            <option class="option3" value="专家">专家</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="9" class="col-sm-2 control-label"
                                    >密保问题</label
                                    >
                                    <div class="col-sm-10">
                                        <select class="form-control" name="SUQuestion" id="9">
                                            <option class="q1" value="您父亲的名字是？">您父亲的名字是？</option>
                                            <option class="q2" value="您母亲的名字是？">您母亲的名字是？</option>
                                            <option class="q3" value="您宠物的名字是？">您宠物的名字是？</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="5" class="col-sm-2 control-label">密保答案</label>
                                    <div class="col-sm-10">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="5"
                                                name="SUAnswer"
                                                value="${User.SUAnswer}"
                                                onblur="answerCheck()"
                                        />
                                        <div class="col-sm-offset-1"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="7" class="col-sm-2 control-label">头像:</label>
                                    <img src="${pageContext.request.contextPath}/upload/${User.SUImage}"
                                         class="img-circle"
                                         alt="User Image"
                                    style="width: 40px;height: 40px;margin-left: 20px">
                                    <input
                                            style="display: inline;"
                                            type="file"
                                            name="imageFile"
                                            id="7"
                                    />
                                </div>

                                    <div class="form-group" hidden>
                                        <label for="12" class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    id="12"
                                                    name="image1"
                                                    value="${User.SUImage}"
                                            />
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
                                    <div style="width: 100%; margin-left: 20%; margin-top: 30px">
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                style="float: none;"
                                                id="submitBtn"
                                        >
                                            <!-- <a href="login.html"></a> -->
                                            提交
                                        </button>

                                        <button type="button" class="btn btn-info " style="margin-left: 40px;"
                                                onclick=to("userInfo")>
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
    $(document).ready(function () {
        var char = "${User.SUChar}";
        if (char == "普通用户") {
            $(".option1").attr("selected", "selected")
        } else if (char == "民办教育个人") {
            $(".option2").attr("selected", "selected")
        } else if (char == "专家") {
            $(".option3").attr("selected", "selected")
        }

        var question = "${User.SUQuestion}";
        if (question == "您父亲的名字是？") {
            $(".q1").attr("selected", "selected")
        } else if (question == "您母亲的名字是？") {
            $(".q2").attr("selected", "selected")
        } else if (question == "您宠物的名字是？") {
            $(".q3").attr("selected", "selected")
        }
    })

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

    $("#submitBtn").click(function () {
        if( c == true && d == true && e == true){
        var form = $("#add_form")[0];
        var formData = new FormData(form);
        $.ajax({
            url: "${pageContext.request.contextPath}/updateUser/${User.SUId}",
            type: "POST",
            data: formData,
            processData: false,
            contentType: false,
            success: function (result) {
                if (result == "success") {
                    // $("#modal-message").html("保存成功！");
                    // $("#modal-default").modal("show");
                    alert("修改成功");
                    window.location.href="${pageContext.request.contextPath}/to/userInfo";
                } else {
                    $("#modal-message").html("保存失败！");
                    $("#modal-default").modal("show");
                }
            }
        });}else{
            $("#modal-message").html("请完善信息后提交！");
            $("#modal-default").modal("show");
        }
    });
</script>

<%--正则表达式--%>
<script>
    var a=b=c=d=e=true;
    //a:用户名，b:密码;c:邮箱；d:手机号；e：密保答案

    //    a用户名
    function usernameCheck(){
        var username=$("#1");
        var name=username.val();
        if(username.val()==''){
            $(username).next("div").text("用户名不能为空");
            $(username).next("div").addClass("red");
            a=false;
        }else{
            $.ajax({
                url: "${pageContext.request.contextPath}/checkUserByName/" + name,
                type: "POST",
                dataType:"text",
                success: function (result) {
                    if (result == "success") {
                        $(username).next("div").text("用户名已存在");
                        $(username).next("div").addClass("red");
                        a=false;
                    } else {
                        $(username).next("div").text("");
                        $(username).next("div").removeClass("red");
                        a=true;
                    }
                }
            });


        }
    }

    // b密码
    function passwordCheck(){
        var password=$("#2");
        if(password.val()==''){
            $(password).next("div").text("密码不能为空");
            $(password).next("div").addClass("red");
            b=false;
        }else{
            $(password).next("div").text("");
            $(password).next("div").removeClass("red");
            b=true;
        }
    }

    //     c邮箱
    function emailCheck(){
        var email=$("#3");
        var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(!ePattern.test(email.val())){
            $(email).next("div").text("请输入正确的邮箱");
            $(email).next("div").addClass("red");
            c=false;
        }else{
            $(email).next("div").text("");
            $(email).next("div").removeClass("red");
            c=true;
        }

    }

    // d手机号
    function telCheck(){
        var tel=$("#4");
        var mPattern = /^1[34578]\d{9}$/;
        if(!mPattern.test(tel.val())){
            $(tel).next("div").text("请输入正确的手机号");
            $(tel).next("div").addClass("red");
            d=false;
        }else{
            $(tel).next("div").text("");
            $(tel).next("div").removeClass("red");
            d=true;
        }
    }

    // e密保问题
    function answerCheck(){
        var answer=$("#5");
        if(answer.val()==''){
            $(answer).next("div").text("密保答案不能为空");
            $(answer).next("div").addClass("red");
            e=false;
        }else{
            $(answer).next("div").text("");
            $(answer).next("div").removeClass("red");
            e=true;
        }
    }
</script>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>登陆</title>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">--%>
<%--    &lt;%&ndash;<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/resources/jQuery/jquery-3.0.0.min.js">&ndash;%&gt;--%>
<%--&lt;%&ndash;    /*</script>*/&ndash;%&gt;--%>
<%--    <!-- Bootstrap 3.3.7 -->--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">--%>
<%--    <!-- Font Awesome -->--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css">&ndash;%&gt;--%>
<%--    <!-- Ionicons -->--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/Ionicons/css/ionicons.min.css">--%>
<%--    &lt;%&ndash;<!-- Theme style -->&ndash;%&gt;--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css">--%>
<%--    <!-- iCheck -->--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css">--%>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.svg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.eot">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.ttf">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.woff">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.woff">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/fonts/glyphicons-halflings-regular.woff2">

</head>
<style>

    body {
        width: 100%;
        height: 100%;
        background-image: url("${pageContext.request.contextPath}/resources/pic/sky.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }

    .container {
        width: 100%;
        height: 100%;
    }


    .form-horizontal {
        /*background: #fff;*/
        padding-bottom: 40px;
        border-radius: 15px;
        text-align: center;

    }

    .form-horizontal .heading {
        display: block;
        font-size: 35px;
        font-weight: 700;
        padding: 35px 0;
        border-bottom: 1px solid #f0f0f0;
        margin-bottom: 30px;
    }

    .form-horizontal .form-group {
        padding: 0 40px;
        margin: 0 0 25px 0;
        position: relative;
    }

    .form-horizontal .form-control {
        background: #f0f0f0;
        border: none;
        border-radius: 20px;
        box-shadow: none;
        padding: 0 20px 0 45px;
        height: 40px;
        transition: all 0.3s ease 0s;
    }

    .form-horizontal .form-control:focus {
        background: #e0e0e0;
        box-shadow: none;
        outline: 0 none;
    }

    .form-horizontal .form-group i {
        position: absolute;
        top: 12px;
        left: 60px;
        font-size: 17px;
        color: #c8c8c8;
        transition: all 0.5s ease 0s;
    }

    .form-horizontal .form-control:focus + i {
        color: #00b4ef;
    }

    .form-horizontal .fa-question-circle {
        display: inline-block;
        position: absolute;
        top: 12px;
        right: 60px;
        font-size: 20px;
        color: #808080;
        transition: all 0.5s ease 0s;
    }

    .form-horizontal .fa-question-circle:hover {
        color: #000;
    }

    .form-horizontal .btn {
        margin-left: 10px;
    }

    .form-horizontal .main-checkbox label {
        width: 20px;
        height: 20px;
        position: absolute;
        top: 0;
        left: 0;
        cursor: pointer;
    }

    .form-horizontal .main-checkbox label:after {
        content: "";
        width: 10px;
        height: 5px;
        position: absolute;
        top: 5px;
        left: 4px;
        border: 3px solid #fff;
        border-top: none;
        border-right: none;
        background: transparent;
        opacity: 0;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg);
    }

    .form-horizontal .main-checkbox input[type=checkbox] {
        visibility: hidden;
    }

    .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after {
        opacity: 1;
    }

    .form-horizontal .text {
        float: left;
        margin-left: 7px;
        line-height: 20px;
        padding-top: 5px;
        text-transform: capitalize;
    }

    .form-horizontal .btn {
        font-size: 14px;
        color: #fff;
        background: #00b4ef;
        border-radius: 30px;
        padding: 10px 25px;
        border: none;
        text-transform: capitalize;
        transition: all 0.5s ease 0s;
    }

    button > a {
        color: white;
        text-decoration: none;
    }

    a:hover, a:active {
        text-decoration: none;
    }


    @media only screen and (max-width: 479px) {
        .form-horizontal .form-group {
            padding: 0 25px;
        }

        .form-horizontal .form-group i {
            left: 45px;
        }

        .form-horizontal .btn {
            padding: 10px 20px;
        }
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6" style="margin-top: 80px">
            <form class="form-horizontal" id="dataForm">
                <span class="heading">民办教育信息服务与监管平台</span>
                <div class="form-group">
                    <label class="radio-inline radio-primary">
                        <input type="radio" name="character" value="user" checked><span>用户</span>
                    </label>
                    <label class=" radio-inline radio-primary">
                        <input type="radio" name="character" value="manager"><span>管理员</span>
                    </label>
                </div>
                <div class="form-group" style="margin-left: 16%;">
                    <input type="text" class="form-control" id="user" placeholder="请输入用户名" name="name"
                           style="width: 80%;">
                    <i class="fa fa-user"><span class="glyphicon glyphicon-user"></span></i>
                </div>
                <div class="form-group help" style="margin-left: 16%;">
                    <input type="password" class="form-control" id="pwd" placeholder="请输入密码" name="pwd"
                           style="width: 80%;">
                    <i class="fa fa-lock"><span class="glyphicon glyphicon-lock"></span></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <%--<div class="msg" style="color: red">${requestScope.message}</div>--%>
                    <a href="${pageContext.request.contextPath}/findPwd.jsp" style="font-size: 1.1em;
                        margin-left: 180px;
                        display: inline-block;
                        margin-top: 16px;  ">忘记密码</a>
                    <button type="button" class="btn btn-primary" id="btn_submit">
                        登录
                    </button>
                        <%--<button type="button" class="btn btn-primary" id="resign" style="margin-right: 60px;"
                            onclick="to('register')">--%>
                    <button type="button" class="btn btn-primary" id="resign" style="margin-right: 60px;"
                            onclick="to('register')">
                        注册
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--模态窗，显示提交后服务器返回的信息
  data-backdrop="static"点击外部遮罩层不自动关闭
  data-keyboard="false"点击esc按钮不关闭
-->
<div class="modal fade" id="modal-default" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">提示</h4>
            </div>
            <div class="modal-body">
                <p id="modal-message">One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
                <button id="model-closeBtn" type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
</body>

<script>
    //页面直接跳转
    function to(page) {
        window.location.href = page + ".jsp";
    }

    // 表单提交
    $('#btn_submit').click(function () {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/UserLogin",
            data: $('#dataForm').serialize(),
            success: function (result) {
                if (result == "failure") {
                    $('#modal-message').html("用户名密码错误！");
                    $('#modal-default').modal('show');
                } else if (result == "forbidden") {
                    $('#modal-message').html("该用户已被禁用");
                    $('#modal-default').modal('show');
                } else if (result == "userSuccess") {
                    window.location.href = "${pageContext.request.contextPath}/to/userMain";
                } else if (result == "managerSuccess") {
                    window.location.href = "${pageContext.request.contextPath}/to/adMain";
                }
            }
        })
    })

    <%--function login() {--%>
    <%--    $.ajax({--%>
    <%--        type: "POST",--%>
    <%--        url: "${pageContext.request.contextPath}/UserLogin",--%>
    <%--        data: $("#dataForm").serialize(),--%>
    <%--        success: function (result) {--%>
    <%--            if (result == "failure") {--%>
    <%--                $('#modal-message').html("用户名密码错误！");--%>
    <%--                $('#modal-default').modal('show');--%>
    <%--            } else if (result == "forbidden") {--%>
    <%--                $('#modal-message').html("该用户已被禁用");--%>
    <%--                $('#modal-default').modal('show');--%>
    <%--            } else if (result == "userSuccess") {--%>
    <%--                window.location.href = "${pageContext.request.contextPath}/to/userMain";--%>
    <%--            } else if (result == "managerSuccess") {--%>
    <%--                window.location.href = "${pageContext.request.contextPath}/to/adMain";--%>
    <%--            }--%>
    <%--        }--%>
    <%--    })--%>
    <%--}--%>
</script>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>密码找回-密码重置</title>

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
  </head>
  <style lang="">
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
      min-height: 750px;
    }

    .form-horizontal {
      /*background: #fff;*/
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
    .form-horizontal .main-checkbox {
      float: left;
      width: 20px;
      height: 20px;
      background: #11a3fc;
      border-radius: 50%;
      position: relative;
      margin: 5px 0 0 5px;
      border: 1px solid #11a3fc;
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
    .form-horizontal .main-checkbox input[type="checkbox"] {
      visibility: hidden;
    }
    .form-horizontal
      .main-checkbox
      input[type="checkbox"]:checked
      + label:after {
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
      float: right;
      font-size: 14px;
      color: #fff;
      background: #00b4ef;
      border-radius: 30px;
      padding: 10px 25px;
      border: none;
      text-transform: capitalize;
      transition: all 0.5s ease 0s;
    }

    /* 我修改的部分 */
    .form-group {
      margin: auto;
    }
    .form-group input,
    .form-group select {
      width: 70%;
    }

    button > a {
      color: white;
      text-decoration: none;
    }
    a:hover,
    a:active {
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
        <div class="col-md-offset-3 col-md-6" style="margin-top: 30px;">
          <form class="form-horizontal">
            <span class="heading">密码重置</span>
          </form>
          <form
            class="form-horizontal"
            role="form"
            style="margin-left: 10%;"
            id="add_form"
            action="${pageContext.request.contextPath}/updateUserPwd/${userSelectByName.SUId}"
            method="POST"
          >
<%--            表单隐藏部分--%>
           <%-- <div class="form-group" hidden>
              <label for="1" class="col-sm-2 control-label" hidden
                >用户名</label
              >
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="1"
                  name="SUName"
                  value="${userSelectByName.SUName}"
                  hidden
                />
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="2" class="col-sm-2 control-label" hidden
                >邮箱</label
              >
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="2"
                  name="SUMail"
                  value="${userSelectByName.SUMail}"
                  hidden
                />
                <span id="sagespan"></span>
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="3" class="col-sm-2 control-label" hidden
                >电话</label
              >
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="3"
                  name="SUTel"
                  value="${userSelectByName.SUTel}"
                  hidden
                />
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="4" class="col-sm-2 control-label" hidden
                >角色选择</label >
              <div class="col-sm-10" hidden>
                <select class="form-control" name="SUChar" hidden id="4">
                  <option value="${userSelectByName.SUChar}" selected></option>
                </select>
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="5" class="col-sm-2 control-label" hidden
                >密保问题</label
              >
              <div class="col-sm-10" hidden>
                <select class="form-control" name="SUQuestion" id="5">
                  <option value="${userSelectByName.SUQuestion}" selected></option>
                </select>
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="6" class="col-sm-2 control-label" hidden
                >密保答案</label
              >
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="6"
                  name="SUAnswer"
                  value="${userSelectByName.SUAnswer}"
                />
              </div>
            </div>
            <div class="form-group" hidden>
              <label for="7" class="col-sm-2 control-label">头像:</label>
              <input
                style="display: inline;"
                type="file"
                name="imageFile"
&lt;%&ndash;                value="${userSelectByName.SUImage}"&ndash;%&gt;
                id="7"
              />
            </div>--%>
<%--            隐藏结束--%>

            <div class="form-group">
              <label for="newPwd" class="col-sm-2 control-label">新密码</label>
              <div class="col-sm-10">
                <input
                  type="password"
                  class="form-control"
                  id="newPwd"
                  placeholder="请输入密码"
                  name="newPwd"
                />
              </div>
            </div>

            <div class="form-group">
              <label for="SUPwd" class="col-sm-2 control-label">再次输入</label>
              <div class="col-sm-10">
                <input
                  type="password"
                  class="form-control"
                  id="SUPwd"
                  placeholder="请再次输入"
                  name="SUPwd"
                />
              </div>
            </div>

            <div class="form-group">
              <div style="width: 100%; margin-left: -5%;">
                <button
                  type="submit"
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
    </div>

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
    <c:if test="${empty msg}">
    </c:if>
    <c:if test="${!empty msg}">
      <script>
        $("#modal-message").html("${msg}");
        $("#modal-default").modal("show");
      </script>
    </c:if>
  </body>


  <script>
      /*$("#submitBtn").click(function () {
        var form = $("#add_form")[0];
        var formData = new FormData(form);
        $.ajax({
          <%--url: "${pageContext.request.contextPath}/updateUserPwd/${userSelectByName.SUId}",--%>
          type: "GET",
          data: {"SUPwd":$("#SUPwd").val()},
          processData: false,
          contentType: false,
          success: function (result) {
            var newPwd = document.getElementById("newPwd");
            var pwd = document.getElementById("SUPwd");
            if (newPwd.value == pwd.value) {
              if (result == "success") {
                $("#modal-message").html("修改成功！");
                $("#modal-default").modal("show");
                window.location.href =
                  <%--"${pageContext.request.contextPath}/login.jsp";--%>
              } else {
                $("#modal-message").html("修改失败！");
                $("#modal-default").modal("show");
              }
            } else {
              $("#modal-message").html("两次输入密码不一致！");
              $("#modal-default").modal("show");
            }
          }
        });
      });*/

  </script>
</html>

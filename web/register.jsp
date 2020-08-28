<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>注册</title>

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
      href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css"
    />
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
    .red{
      color:red;
    }
    input+div{
      text-align: left;
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
          <form class="form-horizontal" method="get" action="">
            <span class="heading">注册</span>
          </form>
          <form
            class="form-horizontal"
            role="form"
            style="margin-left: 10%;"
            enctype="multipart/form-data"
            id="add_form"
          >
            <div class="form-group">
              <label for="1" class="col-sm-2 control-label">用户名</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="1"
                  placeholder="请输入姓名"
                  name="SUName"
                  onblur="usernameCheck()"
                />
                <div class="col-sm-offset-1"></div>
              </div>
<%--                <label id="span_name"></label>--%>

            </div>
            <div class="form-group">
              <label for="2" class="col-sm-2 control-label">密码</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="2"
                  placeholder="请输入密码"
                  name="SUPwd"
                  onblur="passwordCheck()"
                />
                <div class="col-sm-offset-1"></div>
              </div>
            </div>
            <div class="form-group">
              <label for="3" class="col-sm-2 control-label">邮箱</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="3"
                  placeholder="请输入邮箱"
                  name="SUMail"
                  onblur="emailCheck()"
                />
                <div class="col-sm-offset-1"></div>
              </div>
            </div>
            <div class="form-group">
              <label for="4" class="col-sm-2 control-label">电话</label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="4"
                  placeholder="请输入电话"
                  name="SUTel"
                  onblur="telCheck()"
                />
                <div class="col-sm-offset-1"></div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">角色选择</label>
              <div class="col-sm-10">
                <select class="form-control" name="SUChar">
                  <option value="普通用户" selected>普通用户</option>
                  <option value="民办教育个人">民办教育个人</option>
                  <option value="专家">专家</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">密保问题</label>
              <div class="col-sm-10">
                <select class="form-control" name="SUQuestion">
                  <option value="您父亲的名字是？" selected
                    >您父亲的名字是？</option
                  >
                  <option value="您母亲的名字是？">您母亲的名字是？</option>
                  <option value="您宠物的名字是？">您宠物的名字是？</option>
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
                  placeholder="请输入密保答案"
                  name="SUAnswer"
                  onblur="answerCheck()"
                />
                <div class="col-sm-offset-1"></div>
              </div>
            </div>
            <div class="form-group">
              <label for="6" class="col-sm-2 control-label">头像:</label>
              <input id="6" style="display: inline;" type="file" name="imageFile" />
            </div>
            <!-- 隐藏input块 -->
            <div class="form-group" hidden>
              <!-- 角色是否被确定 -->
              <label for="8" class="col-sm-2 control-label"></label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="8"
                  placeholder="请输入密保答案"
                  name="SUVerify"
                  hidden
                  value="0"
                />
              </div>
            </div>
            <div class="form-group" hidden>
              <!-- 角色是否被禁用 -->
              <label for="9" class="col-sm-2 control-label"></label>
              <div class="col-sm-10">
                <input
                  type="text"
                  class="form-control"
                  id="9"
                  placeholder="请输入密保答案"
                  name="SUQualify"
                  value="0"
                />
              </div>
            </div>

            <div class="form-group">
              <div style="width: 100%; margin-left: -5%;">
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
  </body>
  <!-- jQuery 3 -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- iCheck -->
  <script src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js"></script>
  <script>
    $("#submitBtn").click(function () {

      if(a == true && b == true && c == true && d == true && e == true){
      var form = $("#add_form")[0];
      var formData = new FormData(form);
      $.ajax({
        url: "${pageContext.request.contextPath}/UserRegister",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
        dataType:"text",
        success: function (result) {
          if (result == "success") {
            alert("注册成功");
            window.location.href = "${pageContext.request.contextPath}/login.jsp";
          } else {
            $("#modal-message").html("该用户已被注册");
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
    var a=b=c=d=e=false;
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

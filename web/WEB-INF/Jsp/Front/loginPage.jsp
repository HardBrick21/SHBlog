<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/30
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登陆</title>
    <meta name="renderer" content="webkit">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/Adminassets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Resources/Adminassets/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/app.css">
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/jquery.min.js"></script>

</head>

<body data-type="login">
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <div class="tpl-login">
        <div class="tpl-login-content">
            <div class="tpl-login-logo">

            </div>
            <form class="am-form tpl-form-line-form" action="${pageContext.request.contextPath}/login" method="post">
                <c:if test="${msg != null}">
                    <div class="am-alert am-form-group" data-am-alert>
                        <button type="button" class="am-close">&times;</button>
                        <p>${msg}</p>
                    </div>
                </c:if>
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="username" placeholder="请输入账号" name="username" required>

                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="password" placeholder="请输入密码" name="password" required>

                </div>
                <div class="am-form-group tpl-login-remember-me">
                    <label for="remember-me">
                        验证码
                    </label>
                    <input id="remember-me" type="text" name="code" required>
                </div>
                <div class="am-form-group">
                    <img src="${pageContext.request.contextPath}/code" alt="无" onclick="javascript:this.src=this.src+'?'+Math.random()">
                </div>
                <div class="am-form-group">

                    <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    <a type="button" href="${pageContext.request.contextPath}/register" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-waring tpl-login-btn">去注册</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/Resources/js/jquery-3.2.1.min.js"></script>

</body>

</html>

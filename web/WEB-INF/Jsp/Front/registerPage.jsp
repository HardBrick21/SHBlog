<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/27
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/Adminassets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Resources/Adminassets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/app.css">
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/jquery.min.js"></script>

    <style type="text/css">
        <style>
        #vld-tooltip {
            position: absolute;
            z-index: 1000;
            padding: 5px 10px;
            background: #F37B1D;
            min-width: 150px;
            color: #fff;
            transition: all 0.15s;
            box-shadow: 0 0 5px rgba(0,0,0,.15);
            display: none;
        }

        #vld-tooltip:before {
            position: absolute;
            top: -8px;
            left: 50%;
            width: 0;
            height: 0;
            margin-left: -8px;
            content: "";
            border-width: 0 8px 8px;
            border-color: transparent transparent #F37B1D;
            border-style: none inset solid;
        }
    </style>
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
            <div class="tpl-login-title">注册用户</div>
            <span class="tpl-login-content-info">
                  创建一个新的用户
              </span>


            <form class="am-form tpl-form-line-form" id="form-with-tooltip" action="${pageContext.request.contextPath}/register" method="post" data-am-validator>
                <c:if test="${msg != 'success'&& msg != null}">
                <div class="am-alert am-form-group" data-am-alert>
                    <button type="button" class="am-close">&times;</button>
                    <p>${msg}</p>
                </div>
                </c:if>
                <div class="am-form-group">
                    <input type="email" class="tpl-form-input" id="email" placeholder="邮箱" name="email" required>

                </div>

                <div class="am-form-group">
                    <input  class="tpl-form-input" type="text" id="doc-vld-name-2-0" placeholder="用户名" name="username" required>
                </div>

                <div class="am-form-group">
                    <input type="password" id="doc-vld-pwd-1" placeholder="请输入密码" name="password" required/>
                </div>

                <div class="am-form-group">
                    <input type="password" id="doc-vld-pwd-2" placeholder="请与上面输入的值一致" data-equal-to="#doc-vld-pwd-1" required />
                </div>
                <%--<div class="am-form-group tpl-login-remember-me">--%>
                    <%--<input id="remember-me" type="checkbox">--%>
                    <%--<label for="remember-me">--%>
                        <%--我已阅读并同意 <a href="javascript:;">《用户注册协议》</a>--%>
                    <%--</label>--%>
                <%--</div>--%>
                <div class="am-form-group">

                    <button type="submit" id="register" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    <a  href="${pageContext.request.contextPath}/login"  class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-warning  tpl-login-btn">去登陆</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/app.js"></script>
<script type="text/javascript">
    $('.tpl-login-btn').click(function () {
        var $btn = $(this)
        $btn.button('加载中');
        setTimeout(function(){
            $btn.button('reset');
        }, 5000);
    });

</script>

</body>

</html>

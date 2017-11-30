<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/26
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>404</title>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/Adminassets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed"
          href="${pageContext.request.contextPath}/Resources/Adminassets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.datatables.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/app.css">
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/jquery.min.js"></script>

</head>

<body data-type="widgets">
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
    <!-- 内容区域 -->

    <div class="row-content am-cf">
        <div class="widget am-cf">
            <div class="widget-body">
                <div class="tpl-page-state">
                    <div class="tpl-page-state-title am-text-center tpl-error-title">404</div>
                    <div class="tpl-error-title-info">Page Not Found</div>
                    <div class="tpl-page-state-content tpl-error-content">

                        <p>对不起,没有找到您所需要的页面,可能是URL不确定,或者页面已被移除。</p>
                        <a type="button" class="am-btn am-btn-secondary am-radius tpl-error-btn" href="${pageContext.request.contextPath}/index">Back Home</a>
                    </div>

                </div>
            </div>
        </div>


    </div>

</div>
</div>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/app.js"></script>

</body>

</html>
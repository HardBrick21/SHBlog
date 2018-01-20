<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/9
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>SHBLOG</title>
    <meta name="renderer" content="webkit">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/i/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="${pageContext.request.contextPath}/Resources/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="SHBLOG"/>
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Resources/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/amazeui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/app.css">
</head>

<body id="blog">

<nav class="am-g am-g-fixed blog-fixed blog-nav">
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only blog-button" data-am-collapse="{target: '#blog-collapse'}" ><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
<nav class="am-g am-g-fixed blog-fixed blog-nav">
    <div class="am-collapse am-topbar-collapse" id="blog-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav">
            <li class="am-active"><a href="${pageContext.request.contextPath}/index">首页</a></li>
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    后端 <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="">Java</a></li>
                    <li><a href="">Spring</a></li>
                    <li><a href="">PHP</a></li>
                    <li><a href="">SQL</a></li>
                </ul>
            </li>
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    前端 <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li><a href="">Amaze UI</a></li>
                    <li><a href="">BootStrap</a></li>
                </ul>
            </li>
            <li><a href="">心情笔记</a></li>
            <li><a href="">存档</a></li>
        </ul>

        <c:if test="${sessionScope.user != null }">
            <div class="am-topbar-form am-topbar-right am-form-inline" >
                <div class="am-form-group">
                    <a href="#">${sessionScope.user.username}</a>
                    <img src="${sessionScope.user.icon}" class="am-circle" style="width: 50px;height: auto">
                    <a type="button" class="am-btn am-btn-secondary am-btn-sm"  href="${pageContext.request.contextPath}/logout">注销</a>
                </div>
            </div>
        </c:if>
        <c:if test="${sessionScope.user == null }">
            <div class="am-topbar-form am-topbar-right am-form-inline" >
                <div class="am-form-group">
                    <a type="button" class="am-btn am-btn-secondary am-btn-sm"  href="${pageContext.request.contextPath}/login">登陆</a>
                    <a type="button" class="am-btn am-btn-warning am-btn-sm"  href="${pageContext.request.contextPath}/register">注册</a>
                </div>
            </div>
        </c:if>


    </div><hr>
</nav>



<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-8 am-u-sm-12">
    <c:forEach items="${article}" var="articles">
        <div class="am-g blog-entry-article" data-am-scrollspy="{animation: 'slide-left', repeat: false }">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${articles.thumbnail}" alt="" class="am-u-sm-12"  style="height: 180px;">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">${type.get(articles.articletypeid-1).articletype.typename} &nbsp;</a></span>
                <span> @${articles.author} &nbsp;</span>
                <span><fmt:formatDate value="${articles.pubtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                <h1><a href="${pageContext.request.contextPath}/article/${articles.articleid}">${articles.articletitle}</a></h1>
                <p>${articles.intro}
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </div>
    </c:forEach>

        <ul class="am-pagination">
            <li class="am-pagination-prev"><a href="">&laquo; Prev</a></li>
            <li class="am-pagination-next"><a href="">Next &raquo;</a></li>
        </ul>
    </div>

    <div class="am-u-md-4 am-u-sm-12 blog-sidebar">
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Music</span></h2>
            <iframe src="http://music.163.com/outchain/player?type=0&amp;id=125679228&amp;auto=0&amp;height=430"
                    width="100%" height="450" frameborder="no" marginwidth="0" marginheight="0"></iframe>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Contact ME</span></h2>
            <p>
                <a href="" title="2436412915"><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href="https://github.com/HardBrick21" target="_blank"><span class="am-icon-github am-icon-fw blog-icon"></span></a>
                <a href="https://weibo.com/hlxzzx001/" target="_blank"><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weixin am-icon-fw blog-icon"></span></a>
            </p>
        </div>
        <div class="blog-clear-margin blog-sidebar-widget blog-bor am-g ">
            <h2 class="blog-title"><span>TAG cloud</span></h2>
            <div class="am-u-sm-12 blog-clear-padding">
                <a href="" class="blog-tag">amaze</a>
                <a href="" class="blog-tag">妹纸 UI</a>
                <a href="" class="blog-tag">HTML5</a>
                <a href="" class="blog-tag">这是标签</a>
                <a href="" class="blog-tag">Impossible</a>
            </div>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-title"><span>么么哒</span></h2>
            <ul class="am-list">
                <li><a href="#">每个人都有一个死角， 自己走不出来，别人也闯不进去。</a></li>
                <li><a href="#">我把最深沉的秘密放在那里。</a></li>
                <li><a href="#">你不懂我，我不怪你。</a></li>
                <li><a href="#">这里不知道放啥</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- content end -->


<footer class="blog-footer">
    <div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-footer-padding">
        <%--<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">--%>
            <%--<h3>模板简介</h3>--%>
            <%--<p class="am-text-sm"></p>--%>
        <%--</div>--%>
    </div>
    <div class="blog-text-center">Designed By</div>
</footer>



<script src="${pageContext.request.contextPath}/Resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/Resources/js/amazeui.min.js"></script>



</body>
</html>

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
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, User-scalable=no">
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

<%--<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">--%>
    <%--<div class="am-u-sm-8 am-u-sm-centered">--%>
        <%--<img width="200" src="http://s.amazeui.org/media/i/brand/amazeui-b.png" alt="Amaze UI Logo"/>--%>
        <%--<h2 class="am-hide-sm-only">中国首个开源 HTML5 跨屏前端框架</h2>--%>
    <%--</div>--%>
<%--</header>--%>
<hr>
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
        <div class="am-topbar-form am-topbar-right am-form-inline" >
            <div class="am-form-group">
                <a type="button" class="am-btn am-btn-secondary am-btn-sm"  href="/login">登陆</a>
                <a type="button" class="am-btn am-btn-warning am-btn-sm"  href="/register">注册</a>
            </div>
        </div>

        <div class="">

        </div>
    </div>
</nav>
<hr>


<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-8 am-u-sm-12">
    <c:forEach items="${article}" var="articles">
        <div class="am-g blog-entry-article" data-am-scrollspy="{animation: 'slide-left'}">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${articles.thumbnail}" alt="" class="am-u-sm-12">
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
        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article &nbsp;</a></span>
                <span> @amazeUI &nbsp;</span>
                <span>2015/10/9</span>
                <h1><a href="">总在思考一句积极的话</a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f6.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span>@amazeUI &nbsp;</span>
                <span>2015/10/9</span>
                <h1><a href="">选择的正确性</a></h1>
                <p>你可以选择在原处不停地跟周遭不解的人解释你为何这么做，让他们理解你，你可以选择什么都不讲，自顾自往前走。
                </p>
                <p><a href="" class="blog-continue">continue</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f12.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span>@amazeUI</span>
                <span>2015/10/9</span>
                <h1><a href="">开心时拥抱全世界</a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。
                </p>
                <p><a href="" class="blog-continue">continue</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f13.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span>@amazeUI</span>
                <span>2015/10/9</span>
                <h1><a href="">总以为机会无限</a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。
                </p>
                <p><a href="" class="blog-continue">continue</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span> @amazeUI &nbsp;</span>
                <span>2015/10/9</span>
                <h1><a href="">GIVE ME SOME BIG TEXT AND FONT </a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span> @amazeUI &nbsp;</span>
                <span>2015/10/9</span>
                <h1><a href="">taha cool man i do believe</a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="${pageContext.request.contextPath}/Resources/i/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a href="" class="blog-color">article&nbsp;</a></span>
                <span> @amazeUI &nbsp;</span>
                <span>2015/10/9</span>
                <h1><a href="">taha cool man i do believe</a></h1>
                <p>那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>

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
                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href=""><span class="am-icon-github am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-reddit am-icon-fw blog-icon"></span></a>
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
                <a href="" class="blog-tag">开源前端框架</a>
            </div>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-title"><span>么么哒</span></h2>
            <ul class="am-list">
                <li><a href="#">每个人都有一个死角， 自己走不出来，别人也闯不进去。</a></li>
                <li><a href="#">我把最深沉的秘密放在那里。</a></li>
                <li><a href="#">你不懂我，我不怪你。</a></li>
                <li><a href="#">每个人都有一道伤口， 或深或浅，盖上布，以为不存在。</a></li>
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

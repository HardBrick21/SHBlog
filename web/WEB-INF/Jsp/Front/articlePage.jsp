<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/26
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/i/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="${pageContext.request.contextPath}/Resources/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Resources/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/amazeui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/app.css">
</head>

<body id="blog-article-sidebar">
<!-- header start -->
<%--<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">--%>
<%--<div class="am-u-sm-8 am-u-sm-centered">--%>
<%--<img width="200" src="http://s.amazeui.org/media/i/brand/amazeui-b.png" alt="Amaze UI Logo"/>--%>
<%--<h2 class="am-hide-sm-only">中国首个开源 HTML5 跨屏前端框架</h2>--%>
<%--</div>--%>
<%--</header>--%>
<!-- header end -->
<hr>

<!-- nav start -->
<nav class="am-g am-g-fixed blog-fixed blog-nav">
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only blog-button"
            data-am-collapse="{target: '#blog-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

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
            <div class="am-topbar-form am-topbar-right am-form-inline">
                <div class="am-form-group">

                    <a href="#">${sessionScope.user.username}</a>
                    <img src="${sessionScope.user.icon}" class="am-circle" style="width: 50px;height: auto">
                    <a type="button" class="am-btn am-btn-secondary am-btn-sm"
                       href="${pageContext.request.contextPath}/logout">注销</a>
                </div>
            </div>
        </c:if>
        <c:if test="${sessionScope.user == null }">
            <div class="am-topbar-form am-topbar-right am-form-inline">
                <div class="am-form-group">
                    <a type="button" class="am-btn am-btn-secondary am-btn-sm"
                       href="${pageContext.request.contextPath}/login">登陆</a>
                    <a type="button" class="am-btn am-btn-warning am-btn-sm"
                       href="${pageContext.request.contextPath}/register">注册</a>
                </div>
            </div>
        </c:if>
    </div>
</nav>
<!-- nav end -->
<hr>
<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content">
    <div class="am-u-md-8 am-u-sm-12">
        <article class="am-article blog-article-p">
            <div class="am-article-hd">
                <h1 class="am-article-title blog-text-center">${article.articletitle}</h1>
                <p class="am-article-meta blog-text-center">
                    <span><a href="#" class="blog-color">${type.get(article.articletypeid-1).articletype.typename} &nbsp;</a></span>-
                    <span><a href="#">${article.author} &nbsp;</a></span>-
                    <span><a href="#"><fmt:formatDate value="${article.pubtime}"  pattern="yyyy-MM-dd HH:mm:ss"/></a></span>
                </p>
            </div>
            <div class="am-article-bd">${article.content}</div>
        </article>

        <div class="am-g blog-article-widget blog-article-margin">
            <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                <span class="am-icon-tags"> &nbsp;</span><a href="#">标签</a> , <a href="#">TAG</a> , <a href="#">啦啦</a>
                <hr>
                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
            </div>
        </div>

        <%--作者--%>
        <%--<div class="am-g blog-author blog-article-margin">--%>
        <%--<div class="am-u-sm-3 am-u-md-3 am-u-lg-2">--%>
        <%--&lt;%&ndash;<img src="assets/i/f15.jpg" alt="" class="blog-author-img am-circle">&ndash;%&gt;--%>
        <%--</div>--%>
        <%--<div class="am-u-sm-9 am-u-md-9 am-u-lg-10">--%>
        <%--<h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">${article.author}</span></h3>--%>
        <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>--%>
        <%--</div>--%>
        <%--</div>--%>
        <hr>
        <ul class="am-pagination blog-article-margin">
            <%--<c:if test="${article.articleid == latest-count+1}">--%>
                <%--<li class="am-pagination-prev am-disabled"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid}" class="">&laquo;--%>
                    <%--一切的回顾</a></li>--%>
                <%--<li class="am-pagination-next"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid + 1}">不远的未来 &raquo;</a>--%>
                <%--</li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${article.articleid == latest}">--%>
                <%--<li class="am-pagination-prev"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid - 1}" class="">&laquo;--%>
                    <%--一切的回顾</a></li>--%>
                <%--<li class="am-pagination-next am-disabled"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid}">不远的未来 &raquo;</a></li>--%>
            <%--</c:if>--%>
            <%--<c:if test="${article.articleid != latest-count+1 && article.articleid != latest}">--%>
                <%--<li class="am-pagination-prev"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid - 1}" class="">&laquo;--%>
                    <%--一切的回顾</a></li>--%>
                <%--<li class="am-pagination-next"><a--%>
                        <%--href="${pageContext.request.contextPath}/article/${article.articleid + 1}">不远的未来 &raquo;</a>--%>
                <%--</li>--%>
            <%--</c:if>--%>
        <li class="am-pagination-prev"><a
        href="" class="">&laquo;
        一切的回顾</a></li>
        <li class="am-pagination-next"><a
        href="">不远的未来 &raquo;</a>
        </li>

        </ul>

        <hr>

        <form class="am-form am-g" action="${pageContext.request.contextPath}/review/${article.articleid}">
            <h3 class="blog-comment">评论</h3>
            <c:if test="${sessionScope.user != null }">
                <fieldset>
                    <div class="am-form-group">
                        <div id="toolbar"></div>
                        <div id="div2" class="text" style="height:100px;max-height:300px; border: 1px solid #ccc;">
                            <!--可使用 min-height 实现编辑区域自动增加高度-->
                        </div>
                        <div style="display:none">
                            <textarea id="text" name="reviewcontent"></textarea>
                        </div>
                    </div>


                    <p>
                        <button type="submit" class="am-btn am-btn-default am-align-right">发表评论</button>
                    </p>
                </fieldset>
            </c:if>
            <c:if test="${sessionScope.user == null }">
                <div class="am-form-group am-text-center">
                    <p>
                    <h2>您还没有登陆请 <a href="${pageContext.request.contextPath}/login">登陆</a></h2></p>
                </div>
            </c:if>
        </form>

        <hr>
        <h3 class="blog-comment">全部评论</h3>

        <ul class="am-comments-list am-comments-list-flip">
            <c:if test="${review.size()==0}">
                <p class="am-text-center">还没有评论呢</p>
            </c:if>
            <c:forEach  items="${review}" var="review">
                <li class="am-comment">
                    <article class="am-comment">
                        <a href="#">
                            <img src="${review.icon}" alt="无" class="am-comment-avatar" width="48" height="48"/>
                        </a>

                        <div class="am-comment-main">
                            <header class="am-comment-hd">
                                <!--<h3 class="am-comment-title">评论标题</h3>-->
                                <div class="am-comment-meta">
                                    <a href="#" class="am-comment-author">${review.username}</a>
                                    评论于
                                    <time datetime="<fmt:formatDate value="${review.reviewtime}"  pattern="yyyy-MM-dd HH:mm:ss"/>" title="">
                                        <fmt:formatDate value="${review.reviewtime}"  pattern="yyyy-MM-dd HH:mm:ss"/>
                                    </time>
                                </div>
                            </header>

                            <div class="am-comment-bd">
                              ${review.reviewcontent}
                            </div>
                        </div>
                    </article>
                </li>
            </c:forEach>
            <hr>

        </ul>

    </div>

    <div class="am-u-md-4 am-u-sm-12 blog-sidebar">

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

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/Resources/js/jquery-3.2.1.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/Resources/js/amazeui.min.js"></script>
<!-- <script src="assets/js/app.js"></script> -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/Resources/Adminassets/wang/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#toolbar', '#div2')
    //var editor = new E( document.getElementById('#editor') )
    var $text1 = $('#text')

    editor.customConfig.onchange = function (html) {
// 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    editor.customConfig.menus = [
        'bold',
        'italic',
        'underline',
        'foreColor',  // 文字颜色
        'link',  // 插入链接
        'emoticon',  // 表情
        'code',  // 插入代码
        'image',  // 插入图片
        'undo',  // 撤销
    ]
    editor.create()

    // 初始化 textarea 的值
    $text1.val(editor.txt.html())
</script>
</body>
</html>
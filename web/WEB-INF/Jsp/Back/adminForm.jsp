<%--
  Created by IntelliJ IDEA.
  User: Houlixuan
  Date: 2017/11/25
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/Resources/Adminassets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/Resources/Adminassets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Adminassets/css/app.css">
    <script src="${pageContext.request.contextPath}/Resources/Adminassets/js/jquery.min.js"></script>

</head>

<body data-type="widgets">
<script src="${pageContext.request.contextPath}/Resources/Adminassets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 头部 -->
    <header>
        <!-- logo -->
        <div class="am-fl tpl-header-logo">
            <%--<a href="javascript:;"><img src="${pageContext.request.contextPath}/Resources/Adminassets/img/logo.png" alt=""></a>--%>
        </div>
        <!-- 右侧内容 -->
        <div class="tpl-header-fluid">
            <!-- 侧边切换 -->
            <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
            </div>
            <!-- 搜索 -->
            <div class="am-fl tpl-header-search">
                <form class="tpl-header-search-form" action="javascript:;">
                    <button class="tpl-header-search-btn am-icon-search"></button>
                    <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                </form>
            </div>
            <!-- 其它功能-->
            <div class="am-fr tpl-header-navbar">
                <ul>
                    <!-- 退出 -->
                    <li class="am-text-sm">
                        <a href="javascript:;">
                            <span class="am-icon-sign-out"></span> 退出
                        </a>
                    </li>
                </ul>
            </div>
        </div>

    </header>
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
    <!-- 侧边导航栏 -->
    <div class="left-sidebar">
        <!-- 用户信息 -->
        <div class="tpl-sidebar-user-panel">
            <div class="tpl-user-panel-slide-toggleable">
                <div class="tpl-user-panel-profile-picture">
                    <img src="${pageContext.request.contextPath}/Resources/Adminassets/img/user04.png" alt="">
                </div>
                <span class="user-panel-logged-in-text">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
              HardBrick
          </span>
                <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
            </div>
        </div>

        <!-- 菜单 -->
        <ul class="sidebar-nav">
            <li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>
            <li class="sidebar-nav-link">
                <a href="${pageContext.request.contextPath}/admin/index">
                    <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="tables.html">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 表格
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="calendar.html">
                    <i class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="${pageContext.request.contextPath}/admin/form" class="active">
                    <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 表单

                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="chart.html">
                    <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

                </a>
            </li>

            <li class="sidebar-nav-heading">Page<span class="sidebar-nav-heading-info"> 常用页面</span></li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 数据列表
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="${pageContext.request.contextPath}/admin/articlelist">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文字列表
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="table-list-img.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 图文列表
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="sign-up.html">
                    <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
                    <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="login.html">
                    <i class="am-icon-key sidebar-nav-link-logo"></i> 登录
                </a>
            </li>
            <li class="sidebar-nav-link">
                <a href="404.html">
                    <i class="am-icon-tv sidebar-nav-link-logo"></i> 404错误
                </a>
            </li>

        </ul>
    </div>

    <!-- 内容区域 -->
    <div class="tpl-content-wrapper">

        <div class="container-fluid am-cf">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 发布文章 <small>Publish Article</small></div>
                </div>
            </div>
        </div>

        <div class="row-content am-cf">

            <div class="row">

                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title am-fl">发布文章</div>
                            <div class="widget-function am-fr">
                                <a href="javascript:;" class="am-icon-cog"></a>
                            </div>
                        </div>
                        <div class="widget-body am-fr">

                            <form class="am-form tpl-form-border-form tpl-form-border-br" action="${pageContext.request.contextPath}/admin/upload" method="post" enctype="multipart/form-data">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">标题 <span class="tpl-form-line-small-title">Title</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="user-name" placeholder="请输入标题文字" name="articletitle" required>
                                        <small>请填写标题文字10-20字左右。</small>
                                    </div>
                                </div>

                                <%--<div class="am-form-group">--%>
                                    <%--<label for="date" class="am-u-sm-3 am-form-label">发布时间 <span class="tpl-form-line-small-title">Time</span></label>--%>
                                    <%--<div class="am-u-sm-9">--%>
                                        <%--<input type="text" id="date" class="am-form-field tpl-form-no-bg" placeholder="发布时间" data-am-datepicker="" readonly="">--%>
                                        <%--<small>发布时间为必填</small>--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <div class="am-form-group">
                                    <label for="author" class="am-u-sm-3 am-form-label">作者 <span class="tpl-form-line-small-title">Author</span></label>
                                    <div class="am-u-sm-9">
                                        <select id="author" name="author" data-am-selected="{searchBox: 1}" style="display: none;">
                                            <option value="HardBrick">HardBrick</option>
                                            <option value="转载">转载</option>
                                            <option value="佚名">佚名</option>
                                        </select>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">文章类型 <span class="tpl-form-line-small-title">Type</span></label>
                                    <div class="am-u-sm-9">
                                        <select id="type" name="articletypeid" data-am-selected="{searchBox: 1}" style="display: none;">
                                            <c:forEach items="${types}" var="type">
                                                <option value="${type.typeid}">${type.typename}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Images</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                                <i class="am-icon-cloud-upload"></i> 添加封面图片</button>
                                            <input id="doc-form-file" type="file" multiple="" name="file">
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">添加标签 <span class="tpl-form-line-small-title">Tags</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-weibo" placeholder="请添加分类用点号隔开">
                                        <div>

                                        </div>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">简介 <span class="tpl-form-line-small-title">Intro</span></label>
                                    <div class="am-u-sm-9">
                                        <textarea required name="intro" style="width:100%;height: 100px;"></textarea>
                                        <div>

                                        </div>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">是否转载</label>
                                    <div class="am-u-sm-9">
                                        <div class="tpl-switch">
                                            <input type="checkbox" class="ios-switch bigswitch tpl-switch-btn" value="1" name="isreprint">
                                            <div class="tpl-switch-btn-view" checked="0">
                                                <div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">文章内容</label>
                                    <div class="am-u-sm-9" id="#editor">

                                    </div>
                                </div>
                                <textarea  id="text" style="width:100%;" name="content"></textarea>
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                    </div>
                                </div>

                            </form>
                        </div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/Resources/Adminassets/wang/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    //var editor = new E('#editor')
    var editor = new E( document.getElementById('#editor') )
    var $text1 = $('#text')
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
//    editor.customConfig.uploadImgShowBase64 = true
    editor.customConfig.uploadFileName = 'image'
    editor.customConfig.uploadImgHeaders = {

        'Accept' : 'multipart/form-data'

    };
    editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/admin/pic'
    editor.customConfig.uploadImgMaxSize = 20 * 1024 * 1024;//设置图片大小为20M
    editor.customConfig.uploadImgTimeout = 1000000; //图片上传超时限制10s
    editor.customConfig.uploadImgHooks = {
        before: function (xhr, editor, files) {
            // 图片上传之前触发
            // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件

            // 如果返回的结果是 {prevent: true, msg: 'xxxx'} 则表示用户放弃上传
            // return {
            //     prevent: true,
            //     msg: '放弃上传'
            // }
        },
        success: function (xhr, editor, result) {
            // 图片上传并返回结果，图片插入成功之后触发
            // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
            //alert("success")
        },
        fail: function (xhr, editor, result) {
            // 图片上传并返回结果，但图片插入错误时触发
            // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        },
        error: function (xhr, editor) {
            // 图片上传出错时触发
            // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
            alert("2:" + xhr)
        },
        timeout: function (xhr, editor) {
            // 图片上传超时时触发
            // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        },

        // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
        // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
    };


    editor.customConfig.debug = location.href.indexOf('wangeditor_debug_mode=1') > 0
    editor.create()
    // 初始化 textarea 的值
    $text1.val(editor.txt.html())
</script>
</body>

</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/12/2
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <title>表情包后台管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="..//vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendor/linearicons/style.css">
    <link rel="stylesheet" href="../vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="../css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="../picture/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../picture/favicon.png">

    <style>
        .sidebar .nav > li > a.user{
            background-color: #252c35;
            border-left-color: #00AAFF;
        }
    </style>
</head>
<%--防止强制跳转--%>
<jsp:include page="checkLogin.jsp"></jsp:include>
<body>
<!-- 整体容器-->
<div id="wrapper">
    <%@ include file="headNavigation.jsp" %>
    <%--<!-- 头部导航栏 -->--%>
    <%--<nav class="navbar navbar-default navbar-fixed-top">--%>
        <%--<!-- 头部logo -->--%>
        <%--<div class="brand">--%>
            <%--<a href="home"><img src="../picture/logo.png" alt="Logo" class="img-responsive logo" style="margin:-8px 25px 0px 50px; height:32px;"></a>--%>
        <%--</div>--%>
        <%--<div class="container-fluid">--%>
            <%--<!-- 左侧边栏折叠按钮 -->--%>
            <%--<div class="navbar-btn">--%>
                <%--<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>--%>
            <%--</div>--%>
            <%--<!-- 搜索栏 -->--%>
            <%--<form class="navbar-form navbar-left">--%>
                <%--<div class="input-group">--%>
                    <%--<input type="text" value="" class="form-control" placeholder="搜索...">--%>
                    <%--<span class="input-group-btn"><button type="button" class="btn btn-primary">搜索</button></span>--%>
                <%--</div>--%>
            <%--</form>--%>
            <%--<div id="navbar-menu">--%>
                <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<!-- 提示 -->--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">--%>
                            <%--<i class="lnr lnr-alarm"></i>--%>
                            <%--<span class="badge bg-danger">5</span>--%>
                        <%--</a>--%>
                        <%--<ul class="dropdown-menu notifications">--%>
                            <%--<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>--%>
                            <%--<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>--%>
                            <%--<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>--%>
                            <%--<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>--%>
                            <%--<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>--%>
                            <%--<li><a href="#" class="more">See all notifications</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<!-- 帮助 -->--%>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>帮助</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#">Basic Use</a></li>--%>
                            <%--<li><a href="#">Working With Data</a></li>--%>
                            <%--<li><a href="#">Security</a></li>--%>
                            <%--<li><a href="#">Troubleshooting</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<!-- 用户 -->--%>
                    <%--<li class="dropdown">--%>
                        <%--<!-- 用户头像 -->--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../picture/user.png" class="img-circle" alt="Avatar"> <span>管理员</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>--%>
                        <%--<!-- 选项 -->--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#"><i class="lnr lnr-user"></i> <span>个人信息</span></a></li>--%>
                            <%--<li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>--%>
                            <%--<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>--%>
                            <%--<li><a href="#"><i class="lnr lnr-exit"></i> <span>退出</span></a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</nav>--%>
    <%--<!-- 头部导航栏结束 -->--%>
    <%@ include file="leftNavigation.jsp" %>
    <%--<!-- 左侧边栏 -->--%>
    <%--<div id="sidebar-nav" class="sidebar">--%>
        <%--<div class="sidebar-scroll">--%>
            <%--<nav>--%>
                <%--<ul class="nav">--%>
                    <%--<!-- <li><a href="index.html" class="active"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>--%>
                    <%--<li><a href="elements.html" class=""><i class="lnr lnr-code"></i> <span>Elements</span></a></li>--%>
                    <%--<li><a href="charts.html" class=""><i class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>--%>
                    <%--<li><a href="panels.html" class=""><i class="lnr lnr-cog"></i> <span>Panels</span></a></li>--%>
                    <%--<li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>--%>
                    <%--<li>--%>
                        <%--<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Pages</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>--%>
                        <%--<div id="subPages" class="collapse ">--%>
                            <%--<ul class="nav">--%>
                                <%--<li><a href="page-profile.html" class="">Profile</a></li>--%>
                                <%--<li><a href="page-login.html" class="">Login</a></li>--%>
                                <%--<li><a href="page-lockscreen.html" class="">Lockscreen</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li><a href="tables.html" class=""><i class="lnr lnr-dice"></i> <span>Tables</span></a></li>--%>
                    <%--<li><a href="typography.html" class=""><i class="lnr lnr-text-format"></i> <span>Typography</span></a></li>--%>
                    <%--<li><a href="icons.html" class=""><i class="lnr lnr-linearicons"></i> <span>Icons</span></a></li> -->--%>
                    <%--<!-- 有class为active的元素为当前页面对应的导航或者当前选中的元素 -->--%>
                    <%--<li><a href="home" class=""><i class="lnr lnr-home"></i> <span>仪表盘</span></a></li>--%>
                    <%--<li><a href="user" class="active"><i class="lnr lnr-home"></i> <span>用户管理</span></a></li>--%>
                    <%--<li><a href="index.html" class=""><i class="lnr lnr-home"></i> <span>表情包管理</span></a></li>--%>
                    <%--<li><a href="index.html" class=""><i class="lnr lnr-home"></i> <span>评论管理</span></a></li>--%>
                    <%--<li>--%>
                        <%--<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Pages</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>--%>
                        <%--<div id="subPages" class="collapse ">--%>
                            <%--<ul class="nav">--%>
                                <%--<li><a href="page-profile.html" class="">Profile</a></li>--%>
                                <%--<li><a href="page-login.html" class="">Login</a></li>--%>
                                <%--<li><a href="page-lockscreen.html" class="">Lockscreen</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</nav>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<!-- 左侧边栏结束 -->--%>
    <!-- 主体部分 -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <!-- 用户表格 -->
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">用户管理</h3>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>用户名</th>
                            <th>手机号</th>
                            <th>创建时间</th>
                            <th>编辑</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="one" varStatus="num">
                            <tr>
                                <td>${num.count}</td>
                                <td>${one.username}</td>
                                <td>${one.phone}</td>
                                <td>${one.createtime}</td>
                                <td><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#editModal" onclick="Values('${one.userid}','${one.username}','${one.phone}')">编辑</button></td>
                                <td><button type="button" class="btn btn-danger btn-sm delete" id="${one.userid}">删除</button></td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 用户表格结束 -->
            <!-- 分页信息 -->
            <div> 当前第：${userPage.pageNum}页，总共：${userPage.pages}页，总共：${userPage.total}条记录</div>
            <!-- 分页信息结束 -->
            <!-- 分页条 -->
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="/admin/user?pn=1">首页</a></li>
                <c:if test="${userPage.hasPreviousPage }">
                    <li class="page-item">
                        <a  class="page-link" href="/admin/user?pn=${userPage.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach items="${userPage.navigatepageNums}" var="page_Num">
                    <c:if test="${page_Num == pageInfo.pageNum }"><li class="page-item active"><a class="page-link" href="#">${ page_Num}</a></li></c:if>
                    <c:if test="${page_Num != pageInfo.pageNum }"><li class="page-item"><a class="page-link" href="/admin/user?pn=${ page_Num}">${ page_Num}</a></li></c:if>
                </c:forEach>
                <c:if test="${userPage.hasNextPage }">
                    <li class="page-item"><a class="page-link" href="/admin/user?pn=${userPage.pageNum+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>
                <li><a class="page-link" href="/admin/user?pn=${userPage.pages}">末页</a></li>
            </ul>
            <!-- 模态框 -->
            <div class="modal fade" id="editModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">编辑用户信息</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <div class="modal-body">
                            <form action="changeInformation" method="post" id="AdminChange">
                                <input type="hidden" id="userid" name="userid">
                                用户名：<input type="text" id="username" name="username">
                                手机号码:  <input type="text" id="phone" name="phone">
                            </form>
                        </div>

                        <!-- 模态框底部 -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消更改
                            </button>
                            <button type="button" class="btn btn-primary" onclick="AdminChangeInformation()">
                                提交更改
                            </button>
                        </div>

                    </div>
                </div>
            </div>
            <!-- 模态框结束 -->
        </div>
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>
    <footer>
    </footer>
</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="../vendor/chartist/js/chartist.min.js"></script>
<script src="../js/klorofil-common.js"></script>
<script>
    function AdminChangeInformation(){
        document.getElementById("AdminChange").submit();
    }
    <%--${"#editModal"}.modal("hide");--%>
        function Values(userid,username,phone) {

        document.getElementById("userid").value = userid;
        document.getElementById("username").value = username;
        document.getElementById("phone").value = phone;

    }
    $(function() {
        $(".delete").click(function(){
            window.location = "/admin/user/delete?id=" + $(this).attr("id");
        })
        var data, options;

        // headline charts
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [23, 29, 24, 40, 25, 24, 35],
                [14, 25, 18, 34, 29, 38, 44],
            ]
        };

        options = {
            height: 300,
            showArea: true,
            showLine: false,
            showPoint: false,
            fullWidth: true,
            axisX: {
                showGrid: false
            },
            lineSmooth: false,
        };

        new Chartist.Line('#headline-chart', data, options);


        // visits trend charts
        data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [{
                name: 'series-real',
                data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
            }, {
                name: 'series-projection',
                data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
            }]
        };

        options = {
            fullWidth: true,
            lineSmooth: false,
            height: "270px",
            low: 0,
            high: 'auto',
            series: {
                'series-projection': {
                    showArea: true,
                    showPoint: false,
                    showLine: false
                },
            },
            axisX: {
                showGrid: false,

            },
            axisY: {
                showGrid: false,
                onlyInteger: true,
                offset: 0,
            },
            chartPadding: {
                left: 20,
                right: 20
            }
        };

        new Chartist.Line('#visits-trends-chart', data, options);


        // visits chart
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [6384, 6342, 5437, 2764, 3958, 5068, 7654]
            ]
        };

        options = {
            height: 300,
            axisX: {
                showGrid: false
            },
        };

        new Chartist.Bar('#visits-chart', data, options);


        // real-time pie chart
        var sysLoad = $('#system-load').easyPieChart({
            size: 130,
            barColor: function(percent) {
                return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
            },
            trackColor: 'rgba(245, 245, 245, 0.8)',
            scaleColor: false,
            lineWidth: 5,
            lineCap: "square",
            animate: 800
        });

        var updateInterval = 3000; // in milliseconds

        setInterval(function() {
            var randomVal;
            randomVal = getRandomInt(0, 100);

            sysLoad.data('easyPieChart').update(randomVal);
            sysLoad.find('.percent').text(randomVal);
        }, updateInterval);

        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

    });
</script>
</body>

</html>

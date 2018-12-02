<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/12/2
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 头部导航栏 -->
<nav class="navbar navbar-default navbar-fixed-top">
    <!-- 头部logo -->
    <div class="brand">
        <a href="home"><img src="../picture/logo.png" alt="Logo" class="img-responsive logo" style="margin:-8px 25px 0px 50px; height:32px;"></a>
    </div>
    <div class="container-fluid">
        <!-- 左侧边栏折叠按钮 -->
        <div class="navbar-btn">
            <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
        </div>
        <!-- 搜索栏 -->
        <form class="navbar-form navbar-left">
            <div class="input-group">
                <input type="text" value="" class="form-control" placeholder="搜索...">
                <span class="input-group-btn"><button type="button" class="btn btn-primary">搜索</button></span>
            </div>
        </form>
        <div id="navbar-menu">
            <ul class="nav navbar-nav navbar-right">
                <!-- 提示 -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                        <i class="lnr lnr-alarm"></i>
                        <span class="badge bg-danger">5</span>
                    </a>
                    <ul class="dropdown-menu notifications">
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
                        <li><a href="#" class="more">See all notifications</a></li>
                    </ul>
                </li>
                <!-- 帮助 -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>帮助</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Basic Use</a></li>
                        <li><a href="#">Working With Data</a></li>
                        <li><a href="#">Security</a></li>
                        <li><a href="#">Troubleshooting</a></li>
                    </ul>
                </li>
                <!-- 用户 -->
                <li class="dropdown">
                    <!-- 用户头像 -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../picture/user.png" class="img-circle" alt="Avatar"> <span>管理员</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                    <!-- 选项 -->
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="lnr lnr-user"></i> <span>个人信息</span></a></li>
                        <li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
                        <li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
                        <li><a href="#"><i class="lnr lnr-exit"></i> <span>退出</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 头部导航栏结束 -->

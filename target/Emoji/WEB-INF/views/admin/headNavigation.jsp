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
        <div id="navbar-menu">
            <ul class="nav navbar-nav navbar-right">
                <!-- 用户 -->
                <li class="dropdown">
                    <!-- 用户头像 -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../picture/user.png" class="img-circle" alt="Avatar"> <span>${isAdminLogin.getAdmin_name()}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                    <!-- 选项 -->
                    <ul class="dropdown-menu">
                        <li><a href="adminInfo"><i class="lnr lnr-user"></i> <span>个人信息</span></a></li>
                        <li><a href="logout"><i class="lnr lnr-exit"></i> <span>退出</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 头部导航栏结束 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script>
        function updateAdmin(id,name,account,password,phone){
            document.getElementById("update_admin_id").value = id;
            document.getElementById("update_admin_name").value = name;
            document.getElementById("update_admin_account").value = account;
            document.getElementById("update_admin_password").value = password;
            document.getElementById("update_admin_phone").value = phone;
        }
    </script>
</head>
<%--防止强制跳转--%>
<jsp:include page="checkLogin.jsp"></jsp:include>
<body>
<!-- 整体容器-->
<div id="wrapper">
    <%@ include file="headNavigation.jsp" %>
    <%@ include file="leftNavigation.jsp" %>
    <!-- 主体部分 -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">你好，${isAdminLogin.getAdmin_name()}</h3>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th colspan="2">个人信息</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>序号</td>
                                <td>${isAdminLogin.getAdmin_id()}</td>
                            </tr>
                            <tr>
                                <td>姓名</td>
                                <td>${isAdminLogin.getAdmin_name()}</td>
                            </tr>
                            <tr>
                                <td>账号</td>
                                <td>${isAdminLogin.getAdmin_account()}</td>
                            </tr>
                            <tr>
                                <td>密码</td>
                                <td>${isAdminLogin.getAdmin_password()}</td>
                            </tr>
                            <tr>
                                <td>手机</td>
                                <td>${isAdminLogin.getAdmin_phone()}</td>
                            </tr>
                        </tbody>
                    </table>
                    <button style="margin-left: 20px;" type="button" class="btn btn-success btn-sm edit" data-toggle="modal" data-target="#editModal" onclick="updateAdmin('${isAdminLogin.getAdmin_id()}','${isAdminLogin.getAdmin_name()}','${isAdminLogin.getAdmin_account()}','${isAdminLogin.getAdmin_password()}','${isAdminLogin.getAdmin_phone()}')">编辑</button>
                </div>
            </div>
            <!-- 编辑模态框 -->
            <div class="modal fade" id="editModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="administrator/update">
                            <!-- 模态框头部 -->
                            <div class="modal-header">
                                <h4 class="modal-title">修改信息</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- 模态框主体 -->
                            <div class="modal-body">
                                <input type="hidden" id="update_admin_id" name="admin_id" value="">
                                <div class="form-group">
                                    <label for="update_admin_name">姓名:</label>
                                    <input type="text" class="form-control" id="update_admin_name" name="admin_name" placeholder="请输入姓名">
                                </div>
                                <div class="form-group">
                                    <label for="update_admin_account">账号:</label>
                                    <input type="text" class="form-control" id="update_admin_account" name="admin_account" placeholder="请输入账号">
                                </div>
                                <div class="form-group">
                                    <label for="update_admin_password">密码:</label>
                                    <input type="text" class="form-control" id="update_admin_password" name="admin_password" placeholder="请输入密码">
                                </div>
                                <div class="form-group">
                                    <label for="update_admin_phone">手机号:</label>
                                    <input type="text" class="form-control" id="update_admin_phone"  name="admin_phone" placeholder="请输入手机号">
                                </div>
                            </div>

                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">提交</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 编辑模态框结束 -->
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
    $(function() {



        // $(".delete").click(function(){
        //     // window.location = "/admin/administrator/delete?id=" + $(this).attr("admin_id");
        //     console.log($(this).attr("admin_id"));
        // })




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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <title>表情包后台管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../vendor/linearicons/style.css">
    <link rel="stylesheet" href="../vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="../picture/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../picture/favicon.png">

    <style>
        .sidebar .nav > li > a.emoji{
            background-color: #252c35;
            border-left-color: #00AAFF;
        }
        .avatar {
            display: block;.
            width: 300px;
            margin: 0 auto;
            overflow: hidden;
        }

        .avatar img {
            margin: auto;
            display: block;
            border: 0;
            width: 50%;
            transform: scale(1);
            transition: all 1s ease 0s;
            -webkit-transform: scale(1);

        }

        /*.avatar:hover img {*/
            /*transform: scale(0.8);*/
            /*transition: all 1s ease 0s;*/
            /*-webkit-transform: scale(0.8);*/

        /*}*/
    </style>
</head>
<%--防止强制跳转--%>
<jsp:include page="checkLogin.jsp"></jsp:include>
<body>
<!-- 整体容器-->
<div id="wrapper">
    <%--<!-- 头部导航栏 -->--%>
    <%@ include file="headNavigation.jsp" %>
    <%--<!-- 左侧边栏 -->--%>
    <%@ include file="leftNavigation.jsp" %>
    <!-- 主体部分 -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <!-- 用户表格 -->
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">表情包管理</h3>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>上传者</th>
                            <th>表情标题</th>
                            <th>表情描述</th>
                            <th>表情标签</th>
                            <th>查看图片</th>
                            <th>上传时间</th>
                            <th>编辑</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${emojies}" var="one" varStatus="num">
                            <tr>
                                <td>${num.count}</td>
                                <td>${one.username}</td>
                                <td>${one.emoji_title}</td>
                                <td>${one.emoji_description}</td>
                                <td>${one.emoji_label}</td>
                                <td><a data-toggle="modal" data-target="#showModal" onclick="path('${one.filename}')">${one.filename}</a></td>
                                <td>${one.upload_time.toLocaleString()}</td>
                                <td><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#editModal" onclick="Values('${one.upload_id}','${one.emoji_title}','${one.emoji_description}','${one.emoji_label}')">编辑</button></td>
                                <td><button type="button" class="btn btn-danger btn-sm delete" id="${one.upload_id}&filename=${one.filename}">删除</button></td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 用户表格结束 -->
            <!-- 分页信息 -->
            <div> 当前第：${emojiPage.pageNum}页，总共：${emojiPage.pages}页，总共：${emojiPage.total}条记录</div>
            <!-- 分页信息结束 -->
            <!-- 分页条 -->
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="/admin/emoji?pn=1">首页</a></li>
                <c:if test="${emojiPage.hasPreviousPage }">
                    <li class="page-item">
                        <a  class="page-link" href="/admin/emoji?pn=${emojiPage.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach items="${emojiPage.navigatepageNums}" var="page_Num">
                    <c:if test="${page_Num == pageInfo.pageNum }"><li class="page-item active"><a class="page-link" href="#">${ page_Num}</a></li></c:if>
                    <c:if test="${page_Num != pageInfo.pageNum }"><li class="page-item"><a class="page-link" href="/admin/emoji?pn=${ page_Num}">${ page_Num}</a></li></c:if>
                </c:forEach>
                <c:if test="${emojiPage.hasNextPage }">
                    <li class="page-item"><a class="page-link" href="/admin/emoji?pn=${emojiPage.pageNum+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                </c:if>
                <li><a class="page-link" href="/admin/emoji?pn=${emojiPage.pages}">末页</a></li>
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
                            <form action="ImgInformation" method="post" id="ImgChange">
                                <input type="hidden" id="upload_id" name="upload_id">
                                表情包标题：<input type="text" id="emoji_title" name="emoji_title"><br><br><br>
                                表情包描述: <input type="text" id="emoji_description" name="emoji_description"><br><br><br>
                                表情包标签: <input type="text" id="emoji_label" name="emoji_label">
                            </form>
                        </div>
                        <!-- 模态框底部 -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消更改
                            </button>
                            <button type="button" class="btn btn-primary" onclick="ImgChangeInformation()">
                                提交更改
                            </button>
                        </div>

                    </div>
                </div>
            </div>
            <!-- 模态框结束 -->
            </ul>
            <!-- 模态框 -->
            <div class="modal fade" id="showModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">查看图片</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <div class="modal-body">
                           <a class="avatar"><img id="imgSrc" src=""></a>
                        </div>

                        <!-- 模态框底部 -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">确定
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
    function ImgChangeInformation(){
        document.getElementById("ImgChange").submit();
    }
    <%--${"#editModal"}.modal("hide");--%>
    function path(filename) {
        document.getElementById("imgSrc").src = "/upload/"+filename;
    }
    function Values(id,title,description,label){
        document.getElementById("upload_id").value = id;
        document.getElementById("emoji_title").value = title;
        document.getElementById("emoji_description").value =description;
        document.getElementById("emoji_label").value = label;
    }
    $(function() {
        $(".delete").click(function(){
            window.location = "emoji/delete?id=" + $(this).attr("id");
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

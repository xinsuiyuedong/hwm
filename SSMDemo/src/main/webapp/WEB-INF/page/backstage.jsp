<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>心随乐动管理系统</title>
    <link rel="stylesheet" href="../css/ms.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap.css.map">
</head>
<body>
<nav>
    <div class="container">
        <div class="nav-left">
            <img src="../images/logo.jpg">
            <span>心随乐动管理系统欢迎您</span>
        </div>
        <div class="btn-group nav-right">
            <img class="dropdown-toggle" data-toggle="dropdown"src="../images/geren.png" style="width: 57px;">
            <ul class="dropdown-menu" role="menu">
                <li><a href="${ctx}/user/exit">退出</a></li>
            </ul>
        </div>
    </div>
</nav>

<section>
    <div class="sec-left">
        <div class="sec-left-wrap">
            <div class="sec-left-title">
                <a href="${ctx}/user/mainpage" target="content"><span class="glyphicon glyphicon-stats"></span>首页</a>
            </div>
            <div class="sec-left-list">
                <ul>
                    <li class="sec-left-item">
                        <a class="" href="${ctx}/user/songmage" target="content">歌曲管理</a>
                    </li>
                    <li class="sec-left-item">
                        <a class="" href="${ctx}/user/usermage" target="content">用户管理</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="sec-right">
        <iframe name="content" src="${ctx}/user/mainpage" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
    </div>

</section>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
</body>
</html>
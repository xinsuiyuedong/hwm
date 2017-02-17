<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>心随悦动第六组</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="css/bootstrap.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/mainstyle.css">
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<header class="nav">
    <div class="container">
        <div class="wrap">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.jpg"> </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li ><a href="#">推荐</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌曲<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${ctx}/user/player">最新歌曲</a></li>
                            <li><a href="#">最热歌曲</a></li>
                            <li><a href="#">下载最多</a></li>
                            <li><a href="#">歌曲类别</a></li>
                        </ul>
                    </li>
                    </li><li><a href="#">歌单</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌手<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">日韩歌手</a></li>
                            <li><a href="#">欧美歌手</a></li>
                            <li><a href="#">流行歌手</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="单曲/歌手/歌单/用户">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <div class="btn-group">
                <img class="dropdown-toggle" data-toggle="dropdown"src="images/geren.png">
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="${ctx}/user/login">个人中心</a></li>
                        <li><a href="https://passionate.herokuapp.com/">退出</a></li>
                    </ul>
            </div>
        </div>
    </div>
</header>

<div id="owl-demo" class="owl-carousel owl-carousel-main">
    <a class="item"><img src="images/slider1.jpg" alt=""></a>
    <a class="item"><img src="images/slider2.jpg" alt=""></a>
    <a class="item"><img src="images/slider1.jpg" alt=""></a>
    <a class="item"><img src="images/slider2.jpg" alt=""></a>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
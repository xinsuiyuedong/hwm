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
    <title>心随乐动</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/icomoon.css">

    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../css/styleMain.css">
    <link rel="stylesheet" href="../css/songlist.css">
    <script src="../js/modernizr-2.6.2.min.js"></script>
    <script src="../js/respond.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/login.css">
</head>
<body>
<!--导航-->
<header class="nav">
    <div class="container">
        <div class="wrap">
            <div class="logo">
                <a href="${ctx}/user/returntoreindex"><img src="../images/logo.jpg"> </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li ><a href="${ctx}/user/returntoreindex">推荐</a> </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌曲<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><!-- <a href="${ctx}/html/player.html"> --><a href="${ctx}/user/returntoreindex">最新歌曲</a></li>
                            <li><a href="${ctx}/user/returntoreindex">最热歌曲</a></li>
                            <!-- <li><a href="#">下载最多</a></li> -->
                            <li><a href="${ctx}/user/returntoreindex">歌曲类别</a></li>
                            <li><a href="${ctx}/user/returntoreindex">歌曲语种</a></li>
                        </ul>
                    </li>
                    </li><li><a href="${ctx}/user/relist">歌单</a></li>
                    </li><li><a href="${ctx}/user/returntoreindex">歌手</a></li>
                </ul>
            </nav>
            <form action="${ctx}/song/research" class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input name="song" value="${song.song}" type="text" class="form-control" placeholder="发现音乐">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <div class="btn-group">
                <image class="dropdown-toggle" data-toggle="dropdown"src="../images/geren.png" style="width: 57px;"> 
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="${ctx}/user/personalfile">个人中心</a></li>
                        <li><a href="${ctx}/user/exit">退出</a></li>
                    </ul>
            </div>
        </div>
    </div>
</header>

<!--中间部分内容-->
<section>
    <div class="container">

        <div class="list-menu">
            <div class="list-menu-name">
                <p>歌单</p>
            </div>
            <div class="list-menu-content" name="consequence">
                <ul>
                    <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Sample&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Sample"/>添加到我的歌单</b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                    </form>
                    <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Os animals&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Os animals"/>添加到我的歌单</b></b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                        </form>
                    <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Company"/>添加到我的歌单</b></b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                        </form>
                     <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Era Oscuro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Era Oscuro"/>添加到我的歌单</b></b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                        </form>
                      <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Halo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Halo"/>添加到我的歌单</b></b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                        </form>
                      <form action="${ctx}/user/addlistfrommusic" method="post">
                        <li>
                            <span></span>
                            <b>·Ash&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="song" value="Ash"/>添加到我的歌单</b></b></b>
                            <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-play"></span></a>
                        </li>
                        </form>
                </ul>
            </div>

        </div>
    </div>
</section>

<!--底部-->
<footer>
    <div class="container">
        <div class="left">
            <h1>关于心随乐动</h1>
            <p>音乐，不仅仅是一种音与韵，而是在于聆听者用心聆听时</p>
            <p>能真实地享受音乐给自己带来的那份美丽心境</p>
            <p>心随乐动旨在帮助您徜徉在音乐的长河中</p>
        </div>
        <div class="center">
            <h1>ABOUT US</h1>
            <ul>
                <li><a href="#">关于我们</a></li>
                <li><a href="http://www.baidu.com">友情链接</a></li>
                <li><a href="#">管理员模式</a></li>
            </ul>
        </div>
        <div class="right">
            <h1>CONTACT US</h1>
            <ul>
                <li><span class="glyphicon glyphicon-earphone"></span> 联系电话：13866666666</li>
                <li><span class="glyphicon glyphicon-envelope"></span> 电子邮箱：12345678@qq.com</li>
                <li><span class="glyphicon glyphicon-map-marker"></span> 地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：华中科技大学东校区软件学院</li>
            </ul>
        </div>
    </div>

</footer>


<script src="../js/jquery.min.js"></script>
<script src="../js/jquery.easing.1.3.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/main.js"></script>
<script src="../js/login.js"></script>
</body>
</html>
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


    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/icomoon.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/styleMain.css">
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/respond.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
<!--导航-->
<header class="nav">
    <div class="container">
        <div class="wrap">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.jpg"> </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li ><a href="#recommend">推荐</a> </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌曲<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><!-- <a href="${ctx}/html/player.html"> --><a href="#recent">最新歌曲</a></li>
                            <li><a href="#popular">最热歌曲</a></li>
                            <!-- <li><a href="#">下载最多</a></li> -->
                            <li><a href="#category">歌曲类别</a></li>
                            <li><a href="#language">歌曲语种</a></li>
                        </ul>
                    </li>
                    </li><li><a href="${ctx}/user/list">歌单</a></li>
                    </li><li><a href="#singer">歌手</a></li>
                </ul>
            </nav>
            <form action="${ctx}/song/search" class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input name="song" value="${song.song}" type="text" class="form-control" placeholder="发现音乐">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <div class="btn-group">
                <image class="dropdown-toggle" data-toggle="dropdown"src="images/geren.png" style="width: 57px;"> 
                    <ul class="dropdown-menu" role="menu">
                        <li class="showbtn"><a href="javascript:void(0);">加入心随乐动</a></li>
                        <!--<li><a href="#">个人中心</a></li>-->
                        <!--<li><a href="#">退出</a></li>-->
                    </ul>
            </div>
            <div id="bg"></div>
            <div class="box" style="display:none">
                <img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
                <div class="dialogTop">
                    <a href="javascript:;" class="close">关闭</a>
                </div>
                <form action="${ctx}/user/login" method="post" id="editForm">
                    <ul class="editInfos">
                        <li><label><font color="#ff0000">* </font>用户名：<input type="text" name="id" required value="${user.id}" class="ipt" /></label></li>
                        <li><label><font color="#ff0000">* </font>密码&nbsp;&nbsp;：<input type="password" name="password" required value="${user.password}" class="ipt" /></label></li>
                        <li><a href="${ctx}/user/tosignup"><input type="button" value="注册" class="register"></input></a><a href="${ctx}/user/login"><input type="submit" value="登录" class="submitBtn"></input></a></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</header>


<!--轮播-->
<div id="owl-demo" class="owl-carousel owl-carousel-main">
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider1.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider2.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider1.jpg" alt=""></a>
    <a class="item" href="${ctx}/html/player.html"><img src="images/slider2.jpg" alt=""></a>
</div>


<!--中间的内容区域-->
<section>
    <div class="container">
        <div class="section-left">
            <div class="left-top-menu">
                <div class="lt-menu-name">
                    <ul class="tab-name">
                        <li id="recommend" class="selected-yellow"><a href="javascript:void(0)">推荐</a></li>
                        <li id="#"><a href="javascript:void(0)">最新</a></li>
                        <li id="#"><a href="javascript:void(0)">最热</a></li>
                    </ul>
                    <a href="${ctx}/user/list" class="more">
                        更多
                    </a>
                </div>
                <div class="lt-menu-content tab-box">
                    <section class="">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/-eElUO3jKcY7YXcnlJuXAw==/109951162867366555.jpg?param=140y140">
                                    <b class="song-name">Something Just Like This</b>
                                    <p>The Chainsmokers</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p4.music.126.net/3CBdWy-jT6qRWzsQRdn9bw==/109951162866817574.jpg?param=140y140">
                                <b class="song-name">这个年纪</b>
                                <p>齐一</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p3.music.126.net/8iaV9TT1uwXuUu6VEv-Qxg==/109951162799957152.jpg?param=140y140">
                                <b class="song-name">春风十里</b>
                                <p>鹿先森乐队</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p4.music.126.net/-VSOtn5uPBSLgeafM5OfAw==/1394180760666071.jpg?param=140y140">
                                <b class="song-name">远在咫尺</b>
                                <p>陈奕迅</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p3.music.126.net/A514bNqtuivvuppEiXkibQ==/1407374889022377.jpg?param=140y140">
                                <b class="song-name">欲水</b>
                                <p>口袋宋江</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p4.music.126.net/1kQLGGXjXCBy0zyNa0ar6Q==/18605935767031904.jpg?param=140y140">
                                <b class="song-name">玫瑰的故事</b>
                                <p>李幸倪</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p3.music.126.net/_m5lquwS1GD3dPxp_pI9ww==/18539965069223897.jpg?param=140y140">
                                <b class="song-name">追梦赤子心</b>
                                <p>GALA</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                        <li class="img-wrap">
                            <div class="bottom">
                                <img src="http://p3.music.126.net/Qap7B28hU6VGTeE2tTXUlQ==/18701593278663822.jpg?param=140y140">
                                <b class="song-name">风的季节</b>
                                <p>Soler</p>
                            </div>
                            <div class="top">
                                <ul>
                                    <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                    <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                    <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    </section>
                    <section class="hide-hide">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/tQa8jnfoQz6MpUTX-mcokw==/109951162867120252.jpg?param=140y140">
                                    <b class="song-name">天空</b>
                                    <p>蔡依林</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/oR2KH30JlkpOaKE0GrGq1g==/19053436997732054.jpg?param=140y140">
                                    <b class="song-name">不能说的秘密</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/eCHugtxbiteMFhw4lh-fvw==/19056735532616155.jpg?param=140y140">
                                    <b class="song-name">生命树</b>
                                    <p>吴雨霏</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/RJCAMF-PpDRcV9E5jJWulg==/18657612813569597.jpg?param=140y140">
                                    <b class="song-name">潇洒走一回</b>
                                    <p>徐佳莹</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/KHfK506BkuJ-n6pv8xXknw==/19141397927954514.jpg?param=140y140">
                                    <b class="song-name">假行僧</b>
                                    <p>崔健</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/Ub27er7FoNu_9YSujnsiTw==/18590542604259165.jpg?param=140y140">
                                    <b class="song-name">一丝不挂</b>
                                    <p>陈奕迅</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/KRMvNom-KwtNFJaXFpVRzw==/109951162852116304.jpg?param=140y140">
                                    <b class="song-name">斑马，斑马</b>
                                    <p>宋冬野</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/W_FbdWRktr0s2fZh64lyfw==/109951162862114649.jpg?param=140y140">
                                    <b class="song-name">喜欢你</b>
                                    <p>Beyond</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </section>
                    <section class="hide-hide">
                        <ul>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/X6M2lW_70Vf86x8AbYLhuw==/1387583682060062.jpg?param=140y140">
                                    <b class="song-name">没离开过</b>
                                    <p>林志炫</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/0RuVXk4jT8-UoCRMG7zZFQ==/18716986441456695.jpg?param=140y140">
                                    <b class="song-name">钟无艳</b>
                                    <p>谢安琪</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/6Cwl16nsewmG3XZ-kViqyQ==/18776360069265415.jpg?param=140y140">
                                    <b class="song-name">富士山下</b>
                                    <p>陈奕迅</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/1MxlX_uITmkkvIGM7JSwrg==/18979769718672663.jpg?param=140y140">
                                    <b class="song-name">知己</b>
                                    <p>宋佳兴</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p4.music.126.net/9uGYzt3LN-hUI769o04d2Q==/109951162856795647.jpg?param=140y140">
                                    <b class="song-name">听海</b>
                                    <p>张惠妹</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/KKtQqdI3A_gm_IWdoSkLIg==/18530069464706236.jpg?param=140y140">
                                    <b class="song-name">屋顶</b>
                                    <p>周杰伦</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/IXcrTrQwJ7unT2wVnJ20aQ==/18557557255387997.jpg?param=140y140">
                                    <b class="song-name">因为爱情</b>
                                    <p>陈奕迅</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img-wrap">
                                <div class="bottom">
                                    <img src="http://p3.music.126.net/69slaHNsZkXJMw9xsK8eTw==/18545462627448813.jpg?param=140y140">
                                    <b class="song-name">手花</b>
                                    <p>马天宇</p>
                                </div>
                                <div class="top">
                                    <ul>
                                        <li class="play"><a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"  style="font-size: 40px;"></span></a> </li>
                                        <li class="download"><span class="glyphicon glyphicon-download" style="font-size:16px;"></span> </li>
                                        <li class="comment"><span class="glyphicon glyphicon-comment" style="font-size:16px;"></span> </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>
            <div class="post-image-left">
                <a href="${ctx}/html/player.html"><img src="images/slider2.jpg" style="width: 760px;height: 100px; margin-bottom: 30px"></a>
            </div>
            <div class="left-bottom-menu">
                <div class="llb-menu">
                   <div class="llb-menu-name">
                       <ul class="style-tab-name">
                           <li id="language" class="selected-green"><a href="javascript:void(0)">华语</a> </li>
                           <li><a href="javascript:void(0)">日韩</a> </li>
                           <li><a href="javascript:void(0)">欧美</a> </li>
                       </ul>
                       <a href="${ctx}/user/list" class="more">
                           更多
                       </a>
                   </div>
                    <div>
                        <section class="llb-menu-content">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>蒲公英的约定</b></a>
                                    <span>by 周杰伦</span>
                                        
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>你还要我怎样</b></a>
                                    <span>by 薛之谦</span>
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>换一个心动</b></a>
                                    <span>by 群星</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>花香</b></a>
                                    <span>by 周传雄</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>天高路远</b></a>
                                    <span>by 南征北战</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>小情歌</b></a>
                                    <span>by 苏打绿</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>情歌</b></a>
                                    <span>by 梁静茹</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>会痛的石头</b></a>
                                    <span>by 萧敬腾</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>不再见</b></a>
                                    <span>by 陈学冬</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>突然好想你</b></a>
                                    <span>by 五月天</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>我爱的人</b></a>
                                    <span>by 陈小春</span>
                                    
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>红豆</b></a>
                                    <span>by 王菲</span>
                                    
                                </li>
                            </ul>
                        </section>
                        <section class="llb-menu-content hide-hide">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>what's up</b></a>
                                    <span>by 赤西仁</span>
                                    
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>MY ALL</b></a>
                                    <span>by 浜崎あゆみ</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>金魚花火 </b></a>
                                    <span>by 大塚 愛</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>小さな恋のうた</b></a>
                                    <span>by 新垣结衣</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>1年2ヶ月20日</b></a>
                                    <span>by BRIGHT</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>葉桜</b></a>
                                    <span>by 北乃きい</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>PLANET</b></a>
                                    <span>by ラムジ</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>Stay Gold</b></a>
                                    <span>by 大橋トリオ</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>喧嘩上等</b></a>
                                    <span>by 氣志團</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>Get Up & Move!!</b></a>
                                    <span>by 倖田來未</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>STRIKE BACK</b></a>
                                    <span>by BACK-ON</span>
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>Do you remember?</b></a>
                                    <span>by moumoon</span>
                                    
                                </li>
                            </ul>
                        </section>
                        <section class="llb-menu-content hide-hide">
                            <ul>
                                <li class="line hight-light">
                                    <span>1.</span>
                                    <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                                    <span>by Justin Bieber</span>
                                    
                                </li>
                                <li class="line">
                                    <span>2.</span>
                                    <a href="${ctx}/html/player.html"><b>加州旅馆</b></a>
                                    <span>by Eagles</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>3.</span>
                                    <a href="${ctx}/html/player.html"><b>Swim Until You Can't See Land</b></a>
                                    <span>by Frightened Rabbit</span>
                                    
                                </li>
                                <li class="line">
                                    <span>4.</span>
                                    <a href="${ctx}/html/player.html"><b>I Walk The Line</b></a>
                                    <span>by Joaquin Phoenix</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>5.</span>
                                    <a href="${ctx}/html/player.html"><b>Society</b></a>
                                    <span>by Eddie Vedder</span>
                                    
                                </li>
                                <li class="line">
                                    <span>6.</span>
                                    <a href="${ctx}/html/player.html"><b>New Soul</b></a>
                                    <span>by Yael Naim</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>7.</span>
                                    <a href="${ctx}/html/player.html"><b>Empty</b></a>
                                    <span>by Ray LaMontagne</span>
                                    
                                </li>
                                <li class="line">
                                    <span>8.</span>
                                    <a href="${ctx}/html/player.html"><b>White Winter Hymnal</b></a>
                                    <span>by Fleet Foxes</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>9.</span>
                                    <a href="${ctx}/html/player.html"><b>Five Hundred Miles</b></a>
                                    <span>by Justin Timberlake</span>
                                    
                                </li>
                                <li class="line">
                                    <span>10.</span>
                                    <a href="${ctx}/html/player.html"><b>We Are Nowhere And It'S Now </b></a>
                                    <span>by Bright Eyes</span>
                                    
                                </li>
                                <li class="line hight-light">
                                    <span>11.</span>
                                    <a href="${ctx}/html/player.html"><b>Old Man</b></a>
                                    <span>by Neil Young</span>
                                    
                                </li>
                                <li class="line">
                                    <span>12.</span>
                                    <a href="${ctx}/html/player.html"><b>Jolene</b></a>
                                    <span>by Ray LaMontagne</span>
                                    
                                </li>
                            </ul>
                        </section>
                    </div>
                </div>
                <div class="lrb-menu">
                    <div class="lrb-menu-name">
                        <ul>
                         <li id="recent"><a>最新歌曲</a></li>
                        </ul>
                        <a href="${ctx}/user/list" class="more">
                            更多
                        </a>
                    </div>
                    <div class="lrb-menu-content">
                        <ul>
                            <li>
                            <img src="http://p4.music.126.net/-y8LBQpVkbn7Ltodvpbqvg==/109951162845639924.jpg?param=140y140" >
                            <div>
                                <b>少女的祈祷</b>
                                <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                            </div>
                        </li>
                            <li>
                                <img src="http://p4.music.126.net/BLpv4NmJV4RYIm8ANXvVJA==/109951162830266031.jpg?param=140y140" >
                                <div>
                                    <b>樱花树下</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/KsWJUi5OlbIeNwbYJ3-RAw==/18749971790138791.jpg?param=140y140" >
                                <div>
                                    <b>富士山下</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p3.music.126.net/mV5RAsqOj4cinL-9XdrEhg==/18748872277609388.jpg?param=140y140" >
                                <div>
                                    <b>因为爱情</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/CidY3NXI3HwAVO1gMCH27g==/18622428441425824.jpg?param=140y140" >
                                <div>
                                    <b>小酒窝</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/-KGyU_CtSgdDODqF7ghCWg==/18638921114304255.jpg?param=140y140" >
                                <div>
                                    <b>无心</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/knskjMS_2V2YFcz1TGprzA==/18525671418078417.jpg?param=140y140" >
                                <div>
                                    <b>小情歌</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/6Cn0k2TPVrdvOuYy5jvl7A==/18597139672565244.jpg?param=140y140" >
                                <div>
                                    <b>暖暖</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/yjJGdjt7XxjimaX5kNyHqg==/18522372883334576.jpg?param=140y140" >
                                <div>
                                    <b>五环之歌</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p4.music.126.net/NMjgMNlGKSweBq0lOusBzw==/3412884113034549.jpg?param=140y140" >
                                <div>
                                    <b>我的爱</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p3.music.126.net/ZqXyVSd-aYBN1sa2uEPd9A==/1415071479927128.jpg?param=140y140" >
                                <div>
                                    <b>Just Be Friends</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                            <li>
                                <img src="http://p3.music.126.net/TJ8QGqUmKEnvTWDqSuz97g==/3418381668724542.jpg?param=140y140" >
                                <div>
                                    <b>Sorry</b>
                                    <a href="${ctx}/html/player.html"><span class="glyphicon glyphicon-triangle-right"></span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-right">
            <div class="right-bottom-menu">
                <div class="right-bottom-name">
                    <ul>
                        <li id="popular"><a>最热歌曲</a></li>
                    </ul>
                    <a href="${ctx}/user/list" class="more">
                        更多
                    </a>
                </div>
                <div class="right-bottom-content">
                    <ul>
                        <li>
                            <img src="http://p4.music.126.net/EYPwwJRI0N29pmLw0O7ubQ==/6634453163643102.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>告白气球</b></a>
                            <span>周杰伦</span>
                            <span class="badge red">1</span>
                        </li>
                        <li>
                            <img src="http://p3.music.126.net/6xgsfT2ZLjdgzbwO4UiGwA==/3285340746016446.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>十年</b></a>
                            <span>陈奕迅</span>
                            <span class="badge red">2</span>
                        </li>
                        <li>
                            <img src="http://p4.music.126.net/ULlwJ2drOfYv-f6-_7jGGQ==/3250156379592966.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>演员</b></a>
                            <span>薛之谦</span>
                            <span class="badge red">3</span>
                        </li>
                        <li>
                            <img src="http://p3.music.126.net/cnGpIQ6rQCKVrDyVVSpzeg==/3263350518850877.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>她说</b></a>
                            <span>林俊杰</span>
                            <span class="badge">4</span>
                        </li>
                        <li>
                            <img src="http://p3.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>红豆</b></a>
                            <span>王菲</span>
                            <span class="badge">5</span>
                        </li>
                        <li>
                            <img src="http://p4.music.126.net/1JG8Uwzb5XAJXaPUHR6RBw==/3238061747024716.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>遥远的她</b></a>
                            <span>张学友</span>
                            <span class="badge">6</span>
                        </li>
                        <li>
                            <img src="http://p4.music.126.net/F9asgcj7C7qSl_je9XDvRw==/603631883675241.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>我最亲爱的</b></a>
                            <span>张惠妹</span>
                            <span class="badge">7</span>
                        </li>
                        <li>
                            <img src="http://p3.music.126.net/cpfC0E5dtZaChgeao9pNWQ==/2943392628176713.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>南山南</b></a>
                            <span>马頔</span>
                            <span class="badge">8</span>
                        </li>
                        <li>
                            <img src="http://p3.music.126.net/TQZGbxp-xnJla-q7ii9z0A==/1364493985498917.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>我相信</b></a>
                            <span>吴莫愁</span>
                            <span class="badge">9</span>
                        </li>
                        <li>
                            <img src="http://p4.music.126.net/viDr-cY_RMC-_s1m3OSmLg==/18569651883146967.jpg?param=130y130">
                            <a href="${ctx}/html/player.html"><b>Sorry</b></a>
                            <span>Justin Bieber</span>
                            <span class="badge">10</span>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="tag">
                <div id="category" class="tag-name">歌曲类别</div>
                <ul>
                    <li><a href="${ctx}/user/list">轻音乐</a> </li>
                    <li><a href="${ctx}/user/list">日韩流行</a> </li>
                    <li><a href="${ctx}/user/list">排行榜</a> </li>
                    <li><a href="${ctx}/user/list">新歌速递</a> </li>
                    <li><a href="${ctx}/user/list">伤感</a> </li>
                    <li><a href="${ctx}/user/list">下午茶</a> </li>
                    <li><a href="${ctx}/user/list">说唱</a> </li>
                    <li><a href="${ctx}/user/list">爵士</a> </li>
                    <li><a href="${ctx}/user/list">影视原声</a> </li>
                    <li><a href="${ctx}/user/list">校园风</a> </li>
                </ul>
            </div>
            <div class="right-top-menu">
                <div class="rt-menu-name">
                    <ul>
                        <li id="singer"><a>歌手</a> </li>
                        <li><a href="${ctx}/user/list">更多</a> </li>
                    </ul>
                </div>
                <div class="rt-menu-content">
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="http://p4.music.126.net/EYPwwJRI0N29pmLw0O7ubQ==/6634453163643102.jpg?param=130y130" >
                            <div>&nbsp;&nbsp;周杰伦</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>周杰伦</b></a>
                        <p></p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="http://p3.music.126.net/6xgsfT2ZLjdgzbwO4UiGwA==/3285340746016446.jpg?param=130y130" >
                            <div>&nbsp;&nbsp;陈奕迅</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>陈奕迅</b></a>
                        <p></p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="http://p4.music.126.net/ULlwJ2drOfYv-f6-_7jGGQ==/3250156379592966.jpg?param=130y130" >
                            <div>&nbsp;&nbsp;薛之谦</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>薛之谦</b></a>
                        <p></p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="http://p3.music.126.net/cnGpIQ6rQCKVrDyVVSpzeg==/3263350518850877.jpg?param=130y130" >
                            <div>&nbsp;&nbsp;林俊杰</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>林俊杰</b></a>
                        <p></p>
                    </div>
                    <div class="singer-wrap">
                        <div class="text-intro">
                            <img src="http://p3.music.126.net/GKhjgN1ltQYK3eYf9DdJwg==/18727981557622763.jpg?param=130y130" >
                            <div>&nbsp;&nbsp;王菲</div>
                        </div>
                        <span class="glyphicon glyphicon-user"></span>
                        <a href="${ctx}/html/player.html"><b>王菲</b></a>
                        <p></p>
                    </div>
                </div>

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
                <li><a href="${ctx}/user/adminlogin">管理员模式</a></li>
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


<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/login.js"></script>
</body>
</html>
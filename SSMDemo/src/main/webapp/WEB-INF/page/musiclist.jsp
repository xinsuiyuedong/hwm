<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>歌单</title>
    <link rel="stylesheet" href=" ../css/animate.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/icomoon.css">

    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../css/styleMain.css">
    <script src="../js/modernizr-2.6.2.min.js"></script>
    <script src="../js/respond.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/login.css">
    
    <style>
        body{
            padding:0;
            margin:0;
            font-size: 12px;
            background-color: #FFFFFF;
        }
        .cl{
            clear: both;
        }
        .nav{
            border-bottom: 1px solid #f5f5f5;
        }
        .middle{
            width:100%;
            /*background-color: #f5f5f5;*/

        }

        .content{
            width:1000px;
            margin:0 auto;
            background-color: white;
        }
        .content .content_top{
            width:1000px;
            height:30px;
            /*background-color: yellow;*/
            /*border-bottom: 2px solid #FF4400;*/
        }
        .content_left{
            display: block;
            width: 28%;
            border:2px solid #F40;
            border-top:none;
            margin:0;
            padding:0;
            float: left;
            position: fixed;
            top:111px;
            left:109px;

        }
        .content_left .toptitle{
            height:50px;
            line-height: 50px;
            text-align: left;
            font-size: 11pt;
            font-weight: bold;
            color: white;
            background: #F40;
            padding-left: 20px;
            margin:0;
        }
        .content_left dl{
            display: block;
            border-bottom:1px solid #eeeeee;
            padding-bottom:6px;
            overflow: hidden;
        }
        .content_left dl dt{
            display: block;
            float: left;
            width: 45px;
            text-align: right;
            height:22px;
            line-height: 22px;
            padding-right: 6px;
        }
        .content_left dl dt a{
            color: #F40;
            font-weight:bold;
            text-decoration: none;
            font-size:10pt;
        }
        .content_left dl dt a:hover{
            background:none;
            text-decoration: underline;
            font-weight: bold;
            color: #F40;
        }
        .content_left dl dd{
            display: block;
            overflow: hidden;
        }
        .content_left dl dd a{
            display: block;
            float: left;
            border-left: 1px solid #CCCCCC;
            color: #737373;
            font-size: 9pt;
            padding:0 8px;
            height:14px;
            line-height: 14px;
            margin:4px 0;
            text-decoration: none;
        }
        .content .content_right{
            width:67%;
            border:1px solid #FF4400;
            overflow: hidden;
            float: left;
            margin-left: 330px;
        }
        .content .content_right_top{
            width:93px;
            height:29px;
            border: 1px solid #FF6600;
            text-align: right;
            float: right;
            margin:10px;
        }
        .content .content_right_top a:first-child{
            display: inline-block;
            width:46px;
            height:27px;
            background-color: #FF6600;
            color: white;
            float: left;
            text-align: center;
            line-height: 27px;
        }
        .content .content_right_top a:last-child{
            display: inline-block;
            width:45px;
            height:27px;
            background-color: white;
            float: left;
            text-align: center;
            line-height: 27px;

        }
        .content .content_right ul{
            width:100%;
            border-top: 1px solid #FF6600;
            margin:48px 0 0 30px;
            list-style: none;
            display: block;

        }
        .content .content_right ul li{
            float: left;
            display: inline-block;
            width:140px;
            height:188px;
            overflow: hidden;
            padding:0;
            margin:20px 35px;
            line-height: 1.4;
            /*border:1px solid #0C4E7C;*/

        }
        .content .content_right ul li div{
            width:140px;
            height:140px;

        }
        .content .content_right ul li div img{
            border:0;
            width:100%;
            height:100%;
        }
        .content .content_right ul li div a{
            position: absolute;
            top:0;
            left:0;
            cursor: pointer;
            color: #333;
        }
        .content .content_right ul li .dec{
            margin:8px 0 3px;
            font-size: 14px;
            width:100%;

        }
        .content .content_right ul li .dec a{
            display: inline-block;
            max-width: 100%;
            vertical-align: middle;
            color: #000;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;
        }
        .content .content_right ul li .s-fc4{
            color: #999;
        }
        .content .content_right ul li .nm{
            max-width: 76%;
            display: inline-block;
            vertical-align: middle;
            color: #666;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;

        }


        /*2.22文字特效*/
        dl dd a:hover{
            background: #FF6600;
            color:#ffffff;
            border-radius: 2px;
        }
        .content_right ul li div{
            cursor: pointer;
        }


    </style>

</head>
<body>
<!--导航-->
<header class="nav">
    <div class="container">
        <div class="wrap">
            <div class="logo">
                <a href="${ctx}/index.jsp"><img src="../images/logo.jpg"> </a>
            </div>
            <nav class="nav-menu">
                <ul>
                    <li ><a href="${ctx}/index.jsp">推荐</a> </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">歌曲<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><!-- <a href="${ctx}/html/player.html"> --><a href="${ctx}/index.jsp">最新歌曲</a></li>
                            <li><a href="${ctx}/index.jsp">最热歌曲</a></li>
                            <!-- <li><a href="#">下载最多</a></li> -->
                            <li><a href="${ctx}/index.jsp">歌曲类别</a></li>
                            <li><a href="${ctx}/index.jsp">歌曲语种</a></li>
                        </ul>
                    </li>
                    </li><li><a href="${ctx}/user/list">歌单</a></li>
                    </li><li><a href="${ctx}/index.jsp">歌手</a></li>
                </ul>
            </nav>
            <form action="${ctx}/song/search" class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input name="song" value="${song.song}" type="text" class="form-control" placeholder="发现音乐">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <div class="btn-group">
                <image class="dropdown-toggle" data-toggle="dropdown"src="../images/geren.png" style="width: 57px;"> 
                    <ul class="dropdown-menu" role="menu">
                        <li class="showbtn"><a href="javascript:void(0);">加入心随乐动</a></li>
                        <!--<li><a href="#">个人中心</a></li>-->
                        <!--<li><a href="#">退出</a></li>-->
                    </ul>
            </div>
            <div id="bg"></div>
            <div class="box" style="display:none">
                <img class="dialogIco" width="50" height="50" src="../images/ico.png" alt="" />
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
<!--id="owl-demo" class="owl-carousel owl-carousel-main"-->
<div class="middle">
    <div class="content">
        <div class="content_top"></div>
        <div class="content_left">
            <h3 class="toptitle">全部风格</h3>
            <dl>
                <dt><a href="#">语种</a></dt>
                <dd>
                    <a href="#">华语</a>
                    <a href="#">欧美</a>
                    <a href="#">日语</a>
                    <a href="#">韩语</a>
                    <a href="#">粤语</a>
                    <a href="#">小语种</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="#">风格</a></dt>
                <dd>
                    <a href="#">流行</a> <a href="#">摇滚</a> <a href="#">民谣</a> <a href="#">电子</a> <a
                        href="#">舞曲</a> <a href="#">说唱</a> <a href="#">轻音乐</a> <a href="#">爵士</a>
                    <a href="#">乡村</a> <a href="#">R&B／Soul</a> <a href="#">古典</a> <a href="#">民族</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="#">场景</a></dt>
                <dd>
                    <a href="#">清晨</a> <a href="#">夜晚</a> <a href="#">学习</a> <a href="#">工作</a>
                    <a href="#">午休</a> <a href="#">下午茶</a> <a href="#">地铁</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="#">情感</a></dt>
                <dd>
                    <a href="#">怀旧</a> <a href="#">清新</a> <a href="#">浪漫</a> <a href="#">性感</a>
                    <a href="#">伤感</a> <a href="#">治愈</a> <a href="#">放松</a> <a href="#">孤独</a>
                </dd>
            </dl>
            <dl>
                <dt><a href="#">主题</a></dt>
                <dd>
                    <a href="#">影视原声</a> <a href="#">ACG</a> <a href="#">校园</a> <a href="#">游戏</a>
                    <a href="#">70后</a> <a href="#">网络歌曲</a>
                </dd>
            </dl>
        </div>
        <div class="content_right">
            <ul>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活"  class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
                <li>
                    <div>
                        <img src="../images/gedantupian.jpeg" alt="歌单图片">
                        <a href="#" title="我想你已经习惯一个人生活" class="msk"></a>
                    </div>
                    <p class="dec">
                        <a href="${ctx}/user/detailedlist" title="我想你已经习惯一个人生活" class="tit">我想你已经习惯一个人生活</a>
                    </p>
                    <p>
                        <span class="s-fc4">by</span>
                        <a href="#" title="心有力而余额不足" class="nm">心有力而余额不足</a>
                    </p>
                </li>
            </ul>

        </div>
    </div>
</div>
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
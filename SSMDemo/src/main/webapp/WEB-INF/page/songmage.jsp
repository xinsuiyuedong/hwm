<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>歌曲管理</title>
    <link rel="stylesheet" href="../css/bootstrap.css" />
    <link rel="stylesheet" href="../css/songManage.css" />
    <link rel="stylesheet" href="../css/main.css" />
</head>
<body  marginwidth="0" marginheight="0">
<div class="wrap">
    <div class="div1">
        <div class="public-nav">您当前的位置：<a href="">歌曲管理</a>></div>
    </div>
    <div class="menu">
        <form action="${ctx}/song/adminallsong" class="navbar-form navbar-left">
            <button type="submit" class="btn btn-default">&nbsp;显示</button>
        </form>
        <form action="${ctx}/song/adminaddsong" class="navbar-form navbar-left">
            <input name="song" value="${song.song}" type="text" class="form-control" placeholder="歌曲名">
            <input name="singer" value="${song.singer}" type="text" class="form-control" placeholder="歌手名">
            <button type="submit" class="btn btn-default">&nbsp;歌曲添加</button>
        </form>
    </div>
    <div class="content">
        <div>
            <ul>
                <li>歌名</li>
                <li>歌手</li>
                <li>操作</li>
            </ul>
        </div>
        <div class="song-mesg">
            <ul>
                <c:forEach items="${consequence}" var="song">
                    <li class="item">
                        <ul>
                            <li>·</li>
                            <li>${song.song}</li>
                            <li>${song.singer}</li>
                            <li>
                                <form action="${ctx}/song/admindeletesong">
                                <input type="hidden" name="delete" value="${song.id}">
                                <button type="submit">删除</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
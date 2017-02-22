<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>出错啦！</title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        .content{
            margin:15% auto ;
            width:500px;
        }
        .left{
            width:360px;
            height:360px;
            float: left;
        }
        .right{
            float: left;
            font:bold 30px/300px "microsoft yahei";
        }
        img{
            width:100%;
            height:100%;
        }
    </style>
</head>
<body>
<div class="content">
    <div class="left">
        <img src="../images/wrong.JPG" alt="">
    </div>
    <div class="right" name="error">出错啦！${error}，<a href="${ctx}/index.jsp">重新登录</a></div>
</div>
</body>
</html>
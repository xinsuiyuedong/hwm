<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" http-equiv="Refresh" Content="3; Url=${ctx}/index.jsp">
    <title>注册成功！</title>
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
        <img src="../images/successful.png" alt="">
    </div>
    <div class="right">注册成功！正在跳转中...</div>
</div>
</body>
</html>
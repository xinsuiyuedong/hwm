<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <style>
        .content{
            width:1024px;
            height:751px;
            background: url(../images/musicbg.png) no-repeat center;
            /*background-color: gray;*/
            margin-top:10px;
            margin-left: auto;
            margin-right: auto;

        }
        .editInfos{
            /*padding:15px 0;*/
            width:400px;
            list-style: none;
            margin:0 auto;
            padding-top: 350px;
        }
        .editInfos li{width:90%;margin:8px auto auto;text-align: center;}
        .ipt{border:1px solid #ccc;padding:5px;border-radius:3px;-webkit-border-radius:3px;box-shadow:0 0 3px #ccc inset;-webkit-box-shadow:0 0 3px #ccc inset;margin-left:5px;}
        .ipt:focus{outline:none;border-color:#66afe9;box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(102, 175, 233, 0.6);-webkit-box-shadow:0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(102, 175, 233, 0.6);}
        .submitBtn{width:90px;height:30px;line-height:30px;font-family:"å¾®è½¯éé»","microsoft yahei";cursor:pointer;margin-top:15px;display:inline-block;border-radius:5px;-webkit-border-radius:5px;text-align:center;background-color:#428bca;color:#fff;
            border:1px solid gray;}
    </style>
</head>
<body>
<div class="content">
    <form action="${ctx}/user/backstage" method="post">
        <ul class="editInfos">
            <li><label><font color="#ff0000">* </font>用户名：<input type="text" name="id" required value="${user.id}" class="ipt" /></label></li>
            <li><label><font color="#ff0000">* </font>密&nbsp;码：<input type="password" name="password" required value="${user.password}" class="ipt" /></label></li>
            <li><input type="submit" value="管理员登录" class="submitBtn" /></li>
        </ul>
    </form>
</div>
</body>
</html>
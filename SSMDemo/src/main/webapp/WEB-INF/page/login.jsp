<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>拖动</title>
    <link href="${ctx}/css/main.css" rel="stylesheet" />
    <script src="${ctx}/js/drag.js"></script>
</head>
<body>
    <div class="loginPanel" id="loginPanel">
         <div style="position: relative; z-index: 1;">
            <div class="ui_boxyClose" id="ui_boxyClose"></div>
         </div>
         <div class="login_logo_webqq"></div>
 

         <div class="inputs">
            <div class="sign-input"><span>帐　号：</span><span><input autocomplete="on" name="u" id="u" type="text" style="ime-mode: disabled" class="input01" tabindex="1" value="请输入您的帐号" onFocus="if (value =='QQ号码或Email帐号'){value =''}" onBlur="if (value ==''){value='QQ号码或Email帐号';}" /></span></div>
            <div class="sign-input"><span>密　码：</span><span><input name="p" id="p" maxlength="16" type="password" class="input01" tabindex="2" /></span></div>
         </div>

         <div class="bottomDiv">
            <div class="btn" style="float: left"></div>
         </div>
    </div>
</body>
</html>

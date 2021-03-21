<%--
  Created by IntelliJ IDEA.
  User: yin_jianping
  Date: 2021/3/21
  Time: 1:11 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/static/css/login.css">
    <script type="text/javascript" src="<%=path%>/static/js/jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/login.js"></script>
    <meta charset="UTF-8">
    <title>登录</title>
</head>
<body>
<div id="top-panel" class="area">
    <span id="page-title">机场行李寄送系统</span>
</div>
<div id="mid-panel" class="area">
    <div id="login-panel">
        <div id="login-table-panel">
            <form id="login-info-form" action="login">
                <table id="login-info-table">
                    <tr><td colspan="2" id="login-info-title">即刻登陆</td></tr>
                    <tr class="login-info-row">
                        <td>账号:</td>
                        <td><input id="useraccount" name="userAccount" type="text" class="login-info-text" placeholder="请输入11位手机号"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="account-error-msg">${errorMsg}</td></tr>
                    <tr class="login-info-row">
                        <td>密码:</td>
                        <td><input id="password" name="userPassword" type="password" class="login-info-text" placeholder="请输入密码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="password-error-msg"></td></tr>
                    <tr class="login-info-row">
                        <td>验证码:</td>
                        <td><input id="identify" name="identifyCode" type="text" class="login-info-text" placeholder="请输入验证码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="identify-error-msg"></td></tr>
                    <tr><td colspan="2"><input id="login-button" type="submit" value="登录"></td></tr>
                    <tr><td id="register-link" colspan="2"><a href="registerPage">还没有账号？立即注册！</a></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>

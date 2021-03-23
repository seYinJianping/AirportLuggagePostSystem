<%--
  Created by IntelliJ IDEA.
  User: yin_jianping
  Date: 2021/3/21
  Time: 9:26 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/static/css/register.css">
    <script type="text/javascript" src="<%=path%>/static/js/jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/register.js"></script>
    <meta charset="UTF-8">
    <title>注册</title>
</head>
<body>
<div id="top-panel" class="area">
    <span id="page-title">机场行李寄送系统</span>
</div>
<div id="mid-panel" class="area">
    <div id="register-panel">
        <div id="register-table-panel">
            <form id="register-info-form" action="register">
                <table id="register-info-table">
                    <tr><td colspan="2" id="register-info-title">马上注册</td></tr>
                    <tr class="register-info-row">
                        <td class="register-info-name">手机号:</td>
                        <td><input id="userTel" type="text" class="register-info-text" placeholder="请输入11位手机号码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="tel-error-msg"></td></tr>
                    <tr class="register-info-row">
                        <td class="register-info-name">账户名:</td>
                        <td><input id="userName" type="text" class="register-info-text" placeholder="请输入6-16位字符"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="username-error-msg"></td></tr>
                    <tr class="register-info-row">
                        <td class="register-info-name">密码:</td>
                        <td><input id="password" type="password" class="register-info-text" placeholder="请输入8-16位密码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="password-error-msg"></td></tr>
                    <tr class="register-info-row">
                        <td class="register-info-name">确认密码:</td>
                        <td><input id="passwordConfrim" type="password" class="register-info-text" placeholder="请再次输入密码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="passwordConfrim-error-msg"></td></tr>
                    <tr class="register-info-row">
                        <td class="register-info-name">验证码:</td>
                        <td><input id="identify" type="text" class="register-info-text" placeholder="请输入验证码"></td>
                    </tr>
                    <tr class="error-msg-row"><td></td><td id="identify-error-msg"></td></tr>
                    <tr><td colspan="2"><input id="register-button" type="submit" value="注册"></td></tr>
                    <tr><td id="login-link" colspan="2"><a href="loginPage">已经有账号？点此登陆！</a></td></tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/static/css/index.css">
    <script type="text/javascript" src="<%=path%>/static/js/jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/index.js"></script>
    <title>页面</title>
</head>
<body>
<div id="top-panel" class="area"></div>
<div id="mid-panel" class="area">
    <div id="mid-panel-row">
        <div id="left-guide" class="mid-panel-cell">
            <!--            <div id="title-1" ><span></span></div>-->
            <div id="index-page-link" class="menu first-menu">首页</div>
            <div id="menu1" class="menu first-menu" onclick="firstTitleChosen(this)">个人中心</div>
            <ul id="second-menu-1" class="menu second-menu">
                <li class="link">我的信息</li>
                <li class="link">我的评价</li>
                <li class="link">3</li>
            </ul>

            <div id="menu2" class="menu first-menu" onclick="firstTitleChosen(this)">我的订单</div>
            <ul id="second-menu-2" class="menu second-menu">
                <li id="newOrder-page-link" class="link" value="newOrder">创建订单</li>
                <li class="link">查看订单</li>
                <li class="link">订单查询</li>
            </ul>
        </div>
        <div id="mid-button" class="mid-panel-cell"><button id="hide-button">隐藏</button></div>
        <div id="right-page" class="mid-panel-cell">
            <iframe id="page" src="newOrder"></iframe>
        </div>
    </div>
</div>
</body>
</html>

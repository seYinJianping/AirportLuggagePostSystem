<%--
  Created by IntelliJ IDEA.
  User: yin_jianping
  Date: 2021/3/23
  Time: 9:20 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <link rel="stylesheet" href="<%=path%>/static/css/create_order.css">
    <script type="text/javascript" src="<%=path%>/static/js/jQuery/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/create_order.js"></script>
    <title>创建新订单</title>
</head>
<body>
<h1>创建新订单</h1>
<hr>
<table id="order-info-table">
    <th>请填写收寄信息</th>
    <tr>
        <td>寄件人：</td>
        <td><input type="text" placeholder="请填写寄件人姓名"></td>
        <td>手机号码：</td>
        <td><input type="text" placeholder="请填写11位手机号码"></td>
    </tr>
    <tr>
        <td>请填写地址：</td>
        <td><select name="province" id="province-select">
            <option value="0">省/直辖市/自治区</option></select></td>
        <td><select name="city" id="city-select">
            <option value="0">城市</option></select></td>
        <td><select name="area" id="area-select">
            <option value="0">区/县</option></select></td>
        <td>详细地址：</td>
        <td><input type="text" placeholder="请填写具体地址"></td>
    </tr>
</table>
<hr>
<table>
    <th>
    <td>请填写包裹信息</td>
    <td></td>
    <td colspan="2">单笔订单最多可以附带3个包裹</td>
    </th>
</table>
<hr></hr>
<table class="package-info">
    <tr><td>包裹</td><td colspan="5"></td><td><button class="delete-package-button" onclick="deletePackage(this)">删除</button></td></tr>
    <tr>
        <td>物品种类：</td>
        <td>
            <select name="package-kind" id="kind-select">
                <option value="0">请选择物品种类</option>
                <option value="1">文件</option>
                <option value="2">服饰</option>
                <option value="3">食品</option>
                <option value="4">化妆品/护肤品</option>
                <option value="5">生活用品</option>
                <option value="6">其他</option>
            </select>
        </td>
        <td>重量：</td>
        <td><input type="text" placeholder="请填写重量"></td>
    </tr>
    <tr>
        <td>长：</td>
        <td><input type="text" placeholder="请填写包裹长度"></td>
        <td>宽：</td>
        <td><input type="text" placeholder="请填写包裹宽度"></td>
        <td>高：</td>
        <td><input type="text" placeholder="请填写包裹高度"></td>
    </tr>
</table>
<hr>
<table id="order-operate-button">
    <td><button id="add-package-button">添加包裹</button></td>
    <td><button id="save-order-button">保存订单</button></td>
    <td><button id="submit-order-button">提交订单</button></td>
</table>
</body>
</body>
</html>

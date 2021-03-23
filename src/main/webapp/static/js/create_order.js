let packageCount = 1;
$(function () {

    $("#add-package-button").click(function () {
        if (packageCount === 1 || packageCount === 2){
            $(".package-info:last").after("<hr></hr>\n" +
                "<table class=\"package-info\">\n" +
                "    <tr><td>包裹</td><td colspan=\"5\"></td><td><button class=\"delete-package-button\" onclick=\"deletePackage(this)\">删除</button></td></tr>\n" +
                "    <tr>\n" +
                "        <td>物品种类：</td>\n" +
                "        <td>\n" +
                "            <select name=\"package-kind\" id=\"kind-select\">\n" +
                "                <option value=\"0\">请选择物品种类</option>\n" +
                "                <option value=\"1\">文件</option>\n" +
                "                <option value=\"2\">服饰</option>\n" +
                "                <option value=\"3\">食品</option>\n" +
                "                <option value=\"4\">化妆品/护肤品</option>\n" +
                "                <option value=\"5\">生活用品</option>\n" +
                "                <option value=\"6\">其他</option>\n" +
                "            </select>\n" +
                "        </td>\n" +
                "        <td>重量：</td>\n" +
                "        <td><input type=\"text\" placeholder=\"请填写重量\"></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "        <td>长：</td>\n" +
                "        <td><input type=\"text\" placeholder=\"请填写包裹长度\"></td>\n" +
                "        <td>宽：</td>\n" +
                "        <td><input type=\"text\" placeholder=\"请填写包裹宽度\"></td>\n" +
                "        <td>高：</td>\n" +
                "        <td><input type=\"text\" placeholder=\"请填写包裹高度\"></td>\n" +
                "    </tr>\n" +
                "</table>");
            packageCount ++;
        } else {
            alert("单笔订单最多可以附带三个包裹！")
        }
    })


})

function deletePackage(delButton) {
    if (packageCount === 3 || packageCount === 2){
        $(delButton).parent().parent().parent().remove();
        packageCount --;
    } else {
        alert("请至少保留一个包裹！")
    }
}
$(function () {
    let phoneReg = /^[1][3,4,5,7,8][0-9]{9}$/;
    let phoneFlag = 0;

    var delay = (function(){
        var timer = 0;
        return function(callback, ms){
            clearTimeout (timer);
            timer = setTimeout(callback, ms);
        };
    })();

    $("#useraccount").keyup(function (){
        delay(function () {
            if (phoneReg.test($("#useraccount").val())){
                phoneFlag = 1;
                $("#account-error-msg").html("");
            } else {
                phoneFlag = 0;
                $("#account-error-msg").html("请输入正确的11位手机号");
            }
        },2000)
    })

    $("#login-button").click(function () {
        console.log('clicked');
        if ($("#useraccount").val() == ""){
            alert("账号不得为空！");
            return;
        }
        if ($("#password").val() == ""){
            alert("密码不得为空！");
            return;
        }
        if ($("#identify").val() == ""){
            alert("验证码不得为空！");
            return;
        }
        if (phoneFlag === 0){
            alert("请输入11位电话号码");
            return;
        }
    })
})
$(function () {
    $("#register-button").attr("disabled",true);
    let phoneReg = /^[1][3,4,5,7,8][0-9]{9}$/;
    let passwordReg = /^(?![^a-zA-Z]+$)(?!\\D+$).{8,16}$/;
    let phoneFlag = 0;
    let passwordFlag = 0;
    let passwordConfirmFlag = 0;
    let identifyFlag = 0;

    var delay = (function(){
        var timer = 0;
        return function(callback, ms){
            clearTimeout (timer);
            timer = setTimeout(callback, ms);
        };
    })();

    $("#userTel").keyup(function (){
        delay(function () {
            if (phoneReg.test($("#userTel").val())){
                phoneFlag = 1;
                $("#tel-error-msg").html("");
            } else {
                phoneFlag = 0;
                $("#tel-error-msg").html("请输入正确的11位手机号");
            }
            buttonState();
        },500)
    })

    $("#password").keyup(function () {
        delay(function () {
            if (passwordReg.test($("#password").val())){
                passwordFlag = 1;
                $("#password-error-msg").html("");
            } else {
                passwordFlag = 0;
                $("#password-error-msg").html("密码为8-16位的数字或字母");
            }
            buttonState();
        },500)
    })

    $("#passwordConfrim").keyup(function () {
        delay(function () {
            if ($("#passwordConfrim").val() == $("#password").val()){
                passwordConfirmFlag = 1;
                $("#passwordConfrim-error-msg").html("");
            } else {
                passwordConfirmFlag = 0;
                $("#passwordConfrim-error-msg").html("密码输入不一致");
            }
            buttonState();
        },500)
    })

    $("#identify").keyup(function () {
        delay(function () {
            if ($("#identify").val() !== ""){
                identifyFlag = 1;
                $("#identify-error-msg").html("");
            } else {
                identifyFlag = 0;
                $("#identify-error-msg").html("验证码不得为空");
            }
            buttonState();
        },100)
    })
    
    function buttonState() {
        if (phoneFlag === 1 && passwordFlag === 1 && passwordConfirmFlag === 1 && identifyFlag === 1){
            $("#register-button").attr("disabled",false);
        } else {
            $("#register-button").attr("disabled",true);
        }
    }


})
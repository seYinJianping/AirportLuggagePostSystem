package pers.yinjp.airportpost.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pers.yinjp.airportpost.login.service.LoginService;
import pers.yinjp.airportpost.login.service.impl.LoginServiceImpl;
import sun.rmi.runtime.Log;

import java.util.Map;
import java.util.logging.Logger;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    private static Logger logger = Logger.getLogger(String.valueOf(LoginController.class));

    @RequestMapping("index")
    public String test(){
        logger.info("using...");
        System.out.println("found");
//        int i = loginService.getUserAccount();
//        System.out.println(i);
        return "login";
    }

    @RequestMapping("login")
    public String login(@RequestParam String userAccount, @RequestParam String userPassword, @RequestParam String identifyCode, Model model){
        logger.info("进入登陆controller");
        System.out.println(userAccount);
        System.out.println(userPassword);
        int i = loginService.loginOperation(userAccount, userPassword);
        System.out.println(i);
        if (i == 1){
            return "../../index";
        } else {
            model.addAttribute("errorMsg","账号或密码错误");
            return "login";
        }
    }

    @RequestMapping("registerPage")
    public String getRegisterPage(){
        return "register";
    }

    @RequestMapping("loginPage")
    public String getLoginPage(){
        return "login";
    }
}

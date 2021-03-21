package pers.yinjp.airportpost.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pers.yinjp.airportpost.login.dao.LoginMapper;
import pers.yinjp.airportpost.login.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;

    @Override
    public Integer getUserAccount() {
        return loginMapper.getUserAccount();
    }

    @Override
    public Integer loginOperation(String userAccount,String userPassword) {
        return loginMapper.loginOperation(userAccount,userPassword);
    }
}

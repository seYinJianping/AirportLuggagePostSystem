package pers.yinjp.airportpost.login.service;

public interface LoginService {
    public Integer getUserAccount();
    public Integer loginOperation(String userAccount,String userPassword);
}

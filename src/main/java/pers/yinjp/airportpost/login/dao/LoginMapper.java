package pers.yinjp.airportpost.login.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginMapper {

    public Integer getUserAccount();

    public Integer loginOperation(String userAccount,String userPassword);

}

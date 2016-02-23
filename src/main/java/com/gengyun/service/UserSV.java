package com.gengyun.service;

import com.gengyun.dao.UserMapper;
import com.gengyun.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

/**
 * Created by root on 16-2-19.
 */
@Service("UserSV")
@Scope("singleton")
public class UserSV {
    @Autowired
    private UserMapper userMapper;

    public User getLoginUser(String uname,String upwd){
       return userMapper.findWhere("where uname='"+uname+"' and "+"pwd='"+upwd+"'");
    }
}

package com.server;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class loginServer_WQL implements loginServer {

    @Autowired
    com.dao.mapper.AdminMapper adminMapper;

    //MVC把网页的name和password做为参数传给service
    public Boolean selectadmins(String name, String password) {

        Boolean boo=false;

        //去查询数据有没有这个数据，有返回对象，没有返回空
        com.dao.pojo.Admin admin = adminMapper.selectAdmin(name,password);

        if(admin!=null){
            //不为空说明有密码返回一个true
            boo = true;
        }
    return boo;
    }


}

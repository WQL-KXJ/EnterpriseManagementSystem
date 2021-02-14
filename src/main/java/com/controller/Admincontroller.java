package com.controller;

import com.dao.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.server.admiinService_WQL;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Admincontroller {

    @Autowired
    admiinService_WQL admiinService_wql;

    @RequestMapping(value = "/updata_admin")
    @ResponseBody
    public int updata_admin(String name,String password){

       int a= admiinService_wql.updata_admin(name,password);

        return a;
    }


    @RequestMapping(value = "/select_admin")
    @ResponseBody
    public Admin select_admin(String name, String password){

        Admin a= admiinService_wql.select_admin(name,password);

        return a;
    }

}

package com.controller;

import com.dao.pojo.Bm;
import com.dao.pojo.Employee_and_BMs;
import com.server.BmService_WQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class Bmcontroller {

    @Autowired
    BmService_WQL bmService_wql;

    @RequestMapping("/select_bm")
    @ResponseBody
    //查询部门名称
    public List<Bm> select_bm(){
        List<Bm> a = bmService_wql.select_bm();
        return a;
    }

    @RequestMapping("/select_bmid")
    @ResponseBody
    public  List<Employee_and_BMs> select_bmid(int bmid){
       List<Employee_and_BMs> a= bmService_wql.select_bmid(bmid);

       return a;
    }

    @RequestMapping(value = "/insert_bmname",method = RequestMethod.POST)
    @ResponseBody
    public  int select_bmid(String bmname){
        int a= bmService_wql.insert_bmname(bmname);
        return a;
    }

}

package com.controller;

import com.dao.pojo.Bm;
import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.server.empService_WQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class Empcontroller {

    @Autowired
    empService_WQL empService_wql;

    @RequestMapping(value = "/Emp")
    @ResponseBody
    public PageInfo<Employee_and_BMs> Emps(@RequestParam(value = "pn", defaultValue = "1") int pn) {
        //设置分页
        PageHelper.startPage(pn, 9);

        List<Employee_and_BMs> emps = empService_wql.selectemp();

        PageInfo<Employee_and_BMs> pageInfo = new PageInfo<Employee_and_BMs>(emps, 5);

        return pageInfo;
    }


    @RequestMapping(value = "/ID",method = RequestMethod.GET)
    @ResponseBody
    public Employee_and_BMs selectid(@RequestParam(value = "id",defaultValue = "1") int id) {
        Employee_and_BMs a= empService_wql.selectID(id);
        return a;
    }

    @RequestMapping(value = "/BM",method = RequestMethod.GET)
    @ResponseBody
    public List<Bm> select_bm() {
        List<Bm> a= empService_wql.select_bm();
        return a;
    }


    @RequestMapping(value = "/updata_emp",method = RequestMethod.POST)
    @ResponseBody
    public Employee upata_emp(Employee employee) {
        int a= empService_wql.updata_emp(employee);
        Employee employee1=employee;
        return employee1;
    }


    @RequestMapping(value = "/delete_emp")
    @ResponseBody
    public String upata_emp(int id) {
        int a= empService_wql.delete_wql(id);

        return "[{wql:1}]";
    }


}
package com.controller;


import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;
import com.server.EmployeeService_and_FQ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmpFQcontroller {
    @Autowired
    EmployeeService_and_FQ employeeService_and_fq;

    @RequestMapping(value = "/select_name",method = RequestMethod.GET)
    @ResponseBody
    public Employee_and_BMs select_name(String name){

        Employee_and_BMs employee_and_bMs= employeeService_and_fq.select_name(name);

        return employee_and_bMs;

    }
    @RequestMapping(value = "/insert_emp",method = RequestMethod.POST)
    @ResponseBody
    public Employee select_name(Employee employee){
      int a= employeeService_and_fq.insert_emp(employee);
        Employee aa=employee;
        return aa;

    }


}

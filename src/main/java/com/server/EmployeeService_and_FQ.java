package com.server;

import com.dao.mapper.Employee_and_FQMapper;
import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService_and_FQ implements Employee_and_FQ {

    @Autowired
    Employee_and_FQMapper employee_and_fqMapper;

    public Employee_and_BMs select_name(String name) {

      Employee_and_BMs employee_and_bMs = employee_and_fqMapper.Select_name(name);
        return employee_and_bMs;
    }

    public int insert_emp(Employee employee) {

        int a=employee_and_fqMapper.insert_emp(employee);
        return a;
    }
}

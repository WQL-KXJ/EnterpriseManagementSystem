package com.dao.mapper;

import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;

public interface Employee_and_FQMapper {

    Employee_and_BMs Select_name(String name);
    int insert_emp(Employee employee);
}

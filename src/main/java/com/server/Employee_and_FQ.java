package com.server;

import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;

public interface Employee_and_FQ {
    Employee_and_BMs select_name(String name);
    int insert_emp(Employee employee);
}

package com.server;

import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;

import java.util.List;

public interface empService {
    List<Employee_and_BMs> selectemp();
    Employee_and_BMs selectID(int a);
    int updata_emp(Employee employee);
    int delete_wql(int a);
}

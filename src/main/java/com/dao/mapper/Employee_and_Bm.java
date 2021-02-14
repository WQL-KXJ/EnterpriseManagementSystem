package com.dao.mapper;

import com.dao.pojo.Bm;
import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;

import java.util.List;

public interface Employee_and_Bm {
    List<Employee_and_BMs> select_FQ();

    Employee_and_BMs select_WQL(int id);

    List<Bm> select_bm();

    int updata_FQ(Employee employee);

    int delete_WQL(int id);
}

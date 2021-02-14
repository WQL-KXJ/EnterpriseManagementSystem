package com.server;


import com.dao.mapper.Employee_and_Bm;
import com.dao.pojo.Bm;
import com.dao.pojo.Employee;
import com.dao.pojo.Employee_and_BMs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class empService_WQL implements empService{
    @Autowired
    Employee_and_Bm employee_and_bm;

    public List<Employee_and_BMs> selectemp() {
        List<Employee_and_BMs> a= employee_and_bm.select_FQ();
        return a;

}


    public Employee_and_BMs selectID(int id) {
        Employee_and_BMs a= employee_and_bm.select_WQL(id);
        return a;
    }

    public int updata_emp(Employee employee) {
        int a=employee_and_bm.updata_FQ(employee);

        return a;
    }

    public int delete_wql(int a) {
        int c =employee_and_bm.delete_WQL(a);
        return c;
    }


    public List<Bm> select_bm(){
       List<Bm> a= employee_and_bm.select_bm();
        return a;
    }
}

package com.server;

import com.dao.mapper.AdminMapper;
import com.dao.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class admiinService_WQL implements adminService {
    @Autowired
    AdminMapper adminMapper;

    public int updata_admin(String name, String password) {
       int a= adminMapper.updata_Admin(name,password);
        return a;
    }

    public Admin select_admin(String name, String password) {

        Admin a= adminMapper.selectAdmin(name,password);

        return a;
    }


}

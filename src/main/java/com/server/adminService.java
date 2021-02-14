package com.server;

import com.dao.pojo.Admin;

public interface adminService {

    int updata_admin(String name,String password);

    Admin select_admin(String name,String password);
}

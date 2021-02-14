package com.server;

import com.dao.pojo.Bm;
import com.dao.pojo.Employee_and_BMs;

import java.util.List;

public interface BmServer {

        List<Bm> select_bm();

        List<Employee_and_BMs> select_bmid(int bmid);

        int insert_bmname(String bmanme);
}

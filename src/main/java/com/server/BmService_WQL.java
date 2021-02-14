package com.server;

import com.dao.mapper.BmMapper;
import com.dao.pojo.Bm;
import com.dao.pojo.Employee_and_BMs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BmService_WQL implements BmServer {

    @Autowired
    BmMapper bmMapper;


    //查询所有的部门
    public List<Bm> select_bm() {
       List<Bm> a= bmMapper.select_BM();
        return a;
    }

    public List<Employee_and_BMs> select_bmid(int bmid) {

        List<Employee_and_BMs> a=bmMapper.select_bmid(bmid);

        return a;
    }

    public int insert_bmname(String bmanme) {
        int a=bmMapper.insert_bm(bmanme);
        return a;
    }


}

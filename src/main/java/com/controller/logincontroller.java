package com.controller;
import com.dao.pojo.Admin;
import com.server.loginServer_WQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class logincontroller {

    @Autowired
    loginServer_WQL loginServer_wql;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public  Admin anter(Admin admin, HttpServletResponse response){
        //获取ajax提交并封装了数据进入admin
        String name = admin.getName();
        String password = admin.getPassword();
        //调用loginServer_wql查询结构，查询到了返回true
        Boolean a=loginServer_wql.selectadmins(name,password);
        if(a) {
            //设置一个成功的cookie
            Cookie cookie = new Cookie("name","OKKK520");
            cookie.setPath("SSMXM/index.jsp");
            response.addCookie(cookie);
            //设置对象的admin的Name属性为WQL
            admin.setName("WQL");
        }
        return admin;
    }


    @RequestMapping(value = "/login_WQL",method = RequestMethod.GET)
    public  String anter1(HttpServletResponse response, HttpServletRequest request) throws IOException {

            Boolean a=false;
            Cookie[] cookies=request.getCookies();
            for (Cookie cookie:cookies){
                    if(cookie.getValue().equals("520FQ") && cookie.getName().equals("WQL")){
                        a=true;
                    }
            }

            if(a){
                response.sendRedirect(" http://localhost:8080/SSMXM/seccion.jsp");
            }
        return "wrongpassword";
    }



}

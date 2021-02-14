package com.dao.pojo;

public class Employee_and_BMs {
    private Integer id;

    private String name;

  //  private Integer bmid;

    private String gender;

    private Integer age;

    private String phone;

    private String addr;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private Bm bms;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }




    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Bm getBms() {
        return bms;
    }

    public void setBms(Bm bms) {
        this.bms = bms;
    }

    @Override
    public String toString() {
        return "Employee_and_BMs{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", addr='" + addr + '\'' +
                ", bms=" + bms +
                '}';
    }
}

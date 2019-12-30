package com.bs.entity;

import java.util.Objects;

public class Course {
    private String cid;
    private String cname;
    private double credit;
    private int num;
    private String fcid;
//
    //private List<User> userList;



    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public double getCredit() {
        return credit;
    }

    public void setCredit(double credit) {
        this.credit = credit;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getFcid() {
        return fcid;
    }

    public void setFcid(String fcid) {
        this.fcid = fcid;
    }

   /* public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }*/

    public Course() {
    }

    public Course(String cid, String cname, double credit, int num, String fcid) {
        this.cid = cid;
        this.cname = cname;
        this.credit = credit;
        this.num = num;
        this.fcid = fcid;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Course course = (Course) o;
        return num == course.num &&
                Objects.equals(cid, course.cid) &&
                Objects.equals(cname, course.cname) &&
                Objects.equals(credit, course.credit) &&
                Objects.equals(fcid, course.fcid);

    }

    @Override
    public int hashCode() {
        return Objects.hash(cid, cname, credit, num, fcid);
    }

    @Override
    public String toString() {
        return "Course{" +
                "cid='" + cid + '\'' +
                ", cname='" + cname + '\'' +
                ", credit='" + credit + '\'' +
                ", num=" + num +
                ", fcid='" + fcid + '\'' +
                '}';
    }
}

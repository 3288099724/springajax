package com.bs.entity;

import java.util.List;
import java.util.Objects;

public class User {
    private String user_id;
    private String uname;
    private String pwd;
    private String sex;
    private String tel;
    private String home;
    private String u_role;
    //
    private double totalScore;
    private int courseNum;
    //
    private List<Course> courseList;


    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getHome() {
        return home;
    }

    public void setHome(String home) {
        this.home = home;
    }

    public String getU_role() {
        return u_role;
    }

    public void setU_role(String u_role) {
        this.u_role = u_role;
    }

    public double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(double totalScore) {
        this.totalScore = totalScore;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    public int getCourseNum() {
        return courseNum;
    }

    public void setCourseNum(int courseNum) {
        this.courseNum = courseNum;
    }

    public User(String user_id) {
        this.user_id = user_id;
    }

    public User(String user_id, String uname, String pwd, String sex, String tel, String home, String u_role, double totalScore, int courseNum, List<Course> courseList) {
        this.user_id = user_id;
        this.uname = uname;
        this.pwd = pwd;
        this.sex = sex;
        this.tel = tel;
        this.home = home;
        this.u_role = u_role;
        this.totalScore = totalScore;
        this.courseNum = courseNum;
        this.courseList = courseList;
    }

    public User(String user_id, String uname, String pwd, String sex, String tel, String home, String u_role, double totalScore, int courseNum) {
        this.user_id = user_id;
        this.uname = uname;
        this.pwd = pwd;
        this.sex = sex;
        this.tel = tel;
        this.home = home;
        this.u_role = u_role;
        this.totalScore = totalScore;
        this.courseNum = courseNum;
    }

    public User() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Double.compare(user.totalScore, totalScore) == 0 &&
                courseNum == user.courseNum &&
                Objects.equals(user_id, user.user_id) &&
                Objects.equals(uname, user.uname) &&
                Objects.equals(pwd, user.pwd) &&
                Objects.equals(sex, user.sex) &&
                Objects.equals(tel, user.tel) &&
                Objects.equals(home, user.home) &&
                Objects.equals(u_role, user.u_role) &&
                Objects.equals(courseList, user.courseList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user_id, uname, pwd, sex, tel, home, u_role, totalScore, courseNum, courseList);
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id='" + user_id + '\'' +
                ", uname='" + uname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", sex='" + sex + '\'' +
                ", tel='" + tel + '\'' +
                ", home='" + home + '\'' +
                ", u_role='" + u_role + '\'' +
                ", totalScore=" + totalScore +
                ", courseNum=" + courseNum +
                ", courseList=" + courseList +
                '}';
    }
}

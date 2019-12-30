package com.bs.service;

import com.bs.entity.Course;
import com.bs.entity.User;

import java.util.List;

public interface UserService {
    //
    User queryByName(String name);
    //选课
    public boolean chooseCourse(User user,String[] cids);
   //查看学分
    public double checkScore(String uname);

    //查询
    List<User> queryOne(String u_id);
    List<User> queryAllByClass(String home);

    //查询所有课程
    public List<Course> queryAllCourse();


    public  void add(User user);
    public  void delete(String id);
    public void update(User user);

   // public List<User> selectAll();

}

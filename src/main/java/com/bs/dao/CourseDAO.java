package com.bs.dao;

import com.bs.entity.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface CourseDAO {

    //public  void add(Course course);
    //public  void delete(String cid);

    //查找 某课程 剩余可选人数
    public Course selectAvailable(@Param("cid") String cid);
    //修改 某课程 剩余可选人数
    public void update(@Param("cid") String cid,@Param("num") int num);
    //查找 所有课程
    public List<Course> queryAll();
}

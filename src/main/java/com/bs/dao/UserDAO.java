package com.bs.dao;

import com.bs.entity.Conn;
import com.bs.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDAO {



     void add(User user);
     void delete(String id);
    void update(User user);
    //每一次选课之后，对选课的用户修改 用户表的totalScore项
    void updateWhen(@Param("user_id")String user_id,@Param("totalScore")double totalScore,@Param("courseNum")int courseNum);


    public User queryByName(@Param("u_name") String u_name);

    //根据班级查询所有学生
    List<User> queryAllByClass(@Param("home") String home);
    //根据用户id查询某用户，以及所选课程，
    List<User> queryOne(@Param("user_id") String user_id);

    //查询该学生是否选修了该课程
    Conn isChoosed(@Param("u_id") String u_id, @Param("c_id") String c_id);

/*    //查看选择的课程数目
     int selectCourseNum(@Param("u_id") String u_id);*/


/*   // 修改学生表的 totalScore之前 需要先查出学分，再修改
    double queryScores(@Param("u_id") String u_id);*/
}

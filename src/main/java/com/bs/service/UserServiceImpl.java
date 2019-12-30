package com.bs.service;

import com.bs.dao.ConnDAO;
import com.bs.dao.CourseDAO;
import com.bs.dao.UserDAO;
import com.bs.entity.Conn;
import com.bs.entity.Course;
import com.bs.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private CourseDAO courseDAO;
    @Autowired
    private ConnDAO connDAO;

//-----------------set/get------------------------------
    public UserDAO getUserDAO() {
        return userDAO;
    }
    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
    public CourseDAO getCourseDAO() {
        return courseDAO;
    }

    public void setCourseDAO(CourseDAO courseDAO) {
        this.courseDAO = courseDAO;
    }

    public ConnDAO getConnDAO() {
        return connDAO;
    }

    public void setConnDAO(ConnDAO connDAO) {
        this.connDAO = connDAO;
    }
//--------------------------------------------------------------------------------
    @Override
    public User queryByName(String name){
        User one = userDAO.queryByName(name);

        return one;
    }

    @Override
    public boolean chooseCourse(User user, String[] cids) {

        for(int i=0;i<cids.length;i++) {
           //1.判断该课程是否可以被选，
            // 判断该学生是否还可再选该课程（ 需满足2.之前没选过该课程，3.所选课程数没超过5）
            User u=userDAO.queryByName(user.getUname());
            int courseNum=u.getCourseNum();
            if(courseNum >= 5) break;
            //
            Course course = courseDAO.selectAvailable(cids[i]);
            int on = course .getNum();
            Conn conn1 = userDAO.isChoosed(user.getUser_id(),cids[i]);
            if (on < 1 || conn1 != null) continue;

            //if (on >= 1) {  //满足1
                //if(conn1 == null && courseNum < 5) {   //满足2，3
                    //1.修改课程表的剩余人数
                    System.out.println("------------in---------");
                    int s = on-1;
                    System.out.println("ssssssssssssssss"+s);
                    courseDAO.update(cids[i], s);

                    //2.向中间表添加行数据
                    Conn conn = new Conn(UUID.randomUUID().toString(), user.getUser_id(), cids[i]);
                    connDAO.add(conn);
                    //3.修改用户表 totalScore,  courseNum
                    double credit = course.getCredit();
                    double totalScore = user.getTotalScore();
                    userDAO.updateWhen(user.getUser_id(),totalScore+credit,courseNum+1);



        }
        System.out.println("------------out---------");
        return true;
    }

    @Override
    public double checkScore(String uname){
        User user = userDAO.queryByName(uname);
        return user.getTotalScore();
    }

    //查询所有课程
    @Override
    public List<Course> queryAllCourse(){
        System.out.println("courseDAO:"+courseDAO);
        List<Course> courseList = courseDAO.queryAll();
        return courseList;
    }

    @Override
    public List<User> queryOne(String u_id) {
        List<User> userList = userDAO.queryOne(u_id);
        return userList;
    }

    @Override
    public List<User> queryAllByClass(String home) {
        List<User> userList = userDAO.queryAllByClass(home);
        return userList;
    }


    @Override
    public void add(User user) {
        user.setUser_id(UUID.randomUUID().toString());
        userDAO.add(user);
    }

    @Override
    public void delete(String id) {
        userDAO.delete(id);
    }

    @Override
    public void update(User user) {
        userDAO.update(user);
    }








/*@Override
    @Transactional(propagation=Propagation.SUPPORTS,readOnly = true)
    public List<User> selectAll() {
        List<User> userList = userDAO.selectAll();
        return userList;
    }*/


}

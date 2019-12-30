package com.bs.controller;

import com.bs.entity.Course;
import com.bs.entity.User;
import com.bs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller

public class UserController {
    @Autowired
    private UserService userService;

//----------------------------------------------


    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
//--------------------------------------------------------------------------------

    @RequestMapping("/login")
    public String login(User user,HttpSession session) {
        User one = userService.queryByName(user.getUname());

        System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$"+one);

        if(one != null){
            if(one.getPwd().equals(user.getPwd())){
                session.setAttribute("loginUser",one);
                System.out.println("success----------------");
                return "index";
            }
        }
        System.out.println("error----------------");
        return "login";
    }

    //选课
    @ResponseBody
    @RequestMapping("/chooseCourse")
    public void chooseCourse(HttpSession session,String[] cids,ModelAndView m,HttpServletResponse response) throws IOException {
        for (int i=0;i<cids.length;i++){
            System.out.println("cids:======================="+cids);
        }
        User loginUser = (User)session.getAttribute("loginUser");
        System.out.println("loginUser:"+loginUser);
        boolean b = userService.chooseCourse(loginUser, cids);
        PrintWriter out = response.getWriter();
        out.println("choose success");
        //m.addObject("scores",scores);
        //m.addObject("user",user);
        //return "queryStudent.jsp";
    }

    //查看学分
    @ResponseBody
    @RequestMapping("/checkScore")
    public void checkScore(String uname, HttpServletResponse response) throws IOException {
        System.out.println("----------uname-------------"+uname);
        double score = userService.checkScore(uname.trim());
        PrintWriter out = response.getWriter();
        out.println(score);
    }

    //查询所有课程
    @RequestMapping("/queryAllCourse")
    public String queryAllCourse(ModelMap m) throws IOException {
        List<Course> courseList = userService.queryAllCourse();
        m.addAttribute("courseList",courseList);
        return "/student/course";
    }
    //展示
    @RequestMapping("/show")
    public String show(HttpSession session, ModelMap m) {
        System.out.println("----------------show-----------");
        User loginUser = (User) session.getAttribute("loginUser");
        if ("学生".equals(loginUser.getU_role())) {
            System.out.println("----------------if-----------");
            List<User> userList = userService.queryOne(loginUser.getUser_id());
            m.addAttribute("userList", userList);
            //m.addObject("user", one);
            //m.setViewName("/student/studentQuery");
            //return m;
           // return "redirect:/student/studentQuery.jsp";
            return "/student/studentQuery";
        } else if ("老师".equals(loginUser.getU_role())) {
            System.out.println("--------------else--if-----------");
            List<User> userList = userService.queryAllByClass(loginUser.getHome());
            m.addAttribute("userList", userList);
            return "/student/teacherQueryStudents";
           // m.addObject("userList", userList);
           // m.setViewName("/student/teacherQueryStudents");
            //return m;

        }
        //m.setViewName("/student/adminQueryUsers");
        return "index";

    }

}

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html lang="zh">
        <meta name="content-type" content="text/html; charset=utf-8">

  <head>
    <title>所有学生信息</title>
      <script src="js/jquery-1.8.3.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        font-family: "微软雅黑", "楷体";
      }
      
      #null{
      	height: 200px;
       font-size: 20px;
     	color: gray;
     	text-align: center;
     	}
      
    </style>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
  </head>
	
	
	
  <body>
  <hr/>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
		  					<a class="brand" href="#"><font color="Orange">Baizhi 教学互动系统</font></a>

          <div class="nav-collapse collapse">
			        

            <ul class="nav">
              <li class="active"><a href="#" style="color: aqua;">欢迎:${sessionScope.loginUser.uname}</a></li>
              <li><a href="#about">关于</a></li>
              <li><a href="#contact">联系我们</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能菜单 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">修改密码</a></li>
                  <li class="nav-header">其它功能</li>
                  <li><a href="#">离开</a></li>
                </ul>
                
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container">
		<!-- 模糊查询结束 -->
      <table class="table table-hover" style="height: 250px;">
        <thead>
       
          <tr>
            <th style="text-align: center;"><a href="javascript:void(0)"   style="text-decoration: none; text-align: c">学号</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">学生名称</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">学生性别</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">联系电话</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">所属班级</a></th>
             <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">所选课程</a></th>           
		   <th style="text-align: center;"><a href="javascript:void(0)" style="text-decoration: none;" >总学分</a></th>
          	
          </tr>
          
        </thead>
        
        	<!-- 展示数据 -->
        <tbody id="tbody">
        <tr style="display: none;"><th colspan="8">
        <div id="null">
        	<div style="margin-top: 50px">
        			亲～没有找到符合条件的互动～
        	</div>
        	<div style="font-size: 15px; margin-top: 6px"><a href="#" style="text-decoration: none; margin-left: 100px;">那我创建一条</a></div>
        	
        		</div>
        	</th>
        	<tr height="10px;" >
            <c:forEach items="${userList}" var="a">
        <tr>
            <th style="text-align: center;">${a.user_id}</th>
            <th style="text-align: center;">${a.uname}</th>
            <th style="text-align: center;">${a.sex}</th>
            <th style="text-align: center;">${a.tel}</th>
            <th style="text-align: center;">${a.home}</th>

            <th style="text-align: center;">
                <c:forEach items="${a.courseList}" var="c">
                    ${c.cname}
                </c:forEach>
            </th>
            <th>
                <a href="#" style="text-decoration: none;" onclick="func1('+${a.uname}+')">查看学分</a>
            </th>

        </tr>
        </c:forEach>
         		
        	</tbody>
          <script type="text/javascript">
              function func1(uname){

                  $.ajax({
                      type: "post",
                      url: "/springajax/checkScore.do",
                      data:"uname="+uname,
                      dataType: "json",
                      success: function (data) {
                          var json= JSON.stringify(data);
                          var person=prompt("学分：",data);
                      },
                      error: function (data) {
                          alert("系统繁忙");
                      }
                  })

              }
          </script>
      </table>
      
      <div class="row">
	<div class="pagination" style="text-align: center;">
              <ul>
                	<li class="disabled"><a href="javascript:void(0)" >上一页</a></li>
               	<li><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a></li>
                <li><a href="javascript:void(0)" >下一页</a></li>
             </ul>
        </div>
      </div> 
      <hr>
      <footer>
        <p>&copy; Company 2014</p>
      </footer>

    </div> <!-- /container -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.5.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
  </body>
</html>

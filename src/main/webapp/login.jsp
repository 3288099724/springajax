<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

  <head>
    <title>欢迎使用zpark学生信息系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="content-type" content="text/html; charset=utf-8">
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        font-family: "微软雅黑" ,"楷体";
      }
    </style>
    <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css">
    <link rel="shortcut icon" href="favicon.ico">
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
		  					<a class="brand" href="#"><font color="Orange">zpark 学生信息系统</font></a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">首页</a></li>
              <li><a href="#about">关于</a></li>
              <li><a href="#contact">联系我们</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能菜单 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li class="nav-header">其它功能</li>
                  
                </ul>
              </li>
              <li class="active"></li>
            	<li>
					<!-- 登录 -->
           			 <form class="navbar-form pull-right" action="${pageContext.request.contextPath}/login.do" method="post">
            			 	 <input class="span2" type="text" name="uname"  placeholder="请输入用户名" style="height: 30px">
             				 <input class="span2" type="password" name="pwd" placeholder="请输入密码" style="height: 30px">
             				 <input type="submit" class="btn"  value="登录">
           			</form>
           			</li>
         			
         	
            </ul>	
          </div>
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
      
        <h1>Welcome !</h1>
        <p>欢迎使用zpark 学生信息系统</p>
        <p><a href="student/queryInteract.html" class="btn btn-primary btn-large">立即体验 &raquo;</a></p>
      </div>

      <hr>
	  	<div class="alert alert-error">
        	<button type="button" class="close" data-dismiss="alert">&times;</button>
        	<strong>错误! </strong> ${param.msg }
     	 </div>
		 <div class="alert alert-success" id="success">
       		 <button type="button" class="close" data-dismiss="alert">&times;</button>
       	 <strong>消息! </strong> 保存成功
      </div>
      <footer>
        <p>&copy; Company 2013</p>
      </footer>

    </div> <!-- /container -->
    <script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
  </body>
</html>

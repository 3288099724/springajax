<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="zh">
        <meta name="content-type" content="text/html; charset=utf-8">

  <head>
    <title>所有课程</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.5.2.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
      <script type="text/javascript">
          function func(){
              var cids = $("input:checked").val();
              for(var i= 0;i<cids.length;i++){
                  console.log(cids[i]);
              }

              $.ajax({
                  url:"/springajax/chooseCourse.do",
                  type:"post",
                  data:"cids="+cids,
                  dataType:"json",
                  success:function (data) {
                      var json= JSON.stringify(data);
                      alert("@@@@@"+json);
                  },
                  error:function (data) {
                      var json= JSON.stringify(data);
                      alert(json);

                  }
              })

          }
      </script>
      <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        font-family: "微软雅黑" ,"楷体";
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
                 
                  <li><a href="#">离开</a></li>
                </ul>
                
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container">
	 <h3>欢迎选课</h3>
      <table class="table table-hover" style="height: 250px;">
        <thead>
       
          <tr>
		    <th>多选</th>
            <th style="text-align: center;"><a href="javascript:void(0)"   style="text-decoration: none; text-align: c">课程编号</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">课程名称</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">课程学分</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">剩余可选（人）</a></th>
          	
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
        <c:forEach items="${courseList}" var="a">
        	<tr>
           			<th><input type="checkbox" name="choose" value="${a.cid}"/></th>
                    <th style="text-align: center;">${a.cid}</th>
           			<th style="text-align: center;">${a.cname}</th>
          			<th style="text-align: center;">${a.credit}</th>
		            <th style="text-align: center;">${a.num}</th>
            </tr>
        </c:forEach>
         		
        	</tbody>
      </table>
	  <button onclick="func()">确认选课</button>
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

  </body>
</html>

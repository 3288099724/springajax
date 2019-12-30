<html lang="zh">
        <meta name="content-type" content="text/html; charset=GBK">

  <head>
    <title>所有学生信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        font-family: "微软雅黑" "楷体";
      }
      
      #null{
      	height: 200px;
       font-size: 20px;
     	color: gray;
     	text-align: center;
     	}
      
    </style>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.min.css">
    <link rel="shortcut icon" href="../favicon.ico">
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
              <li class="active"><a href="#">欢迎：xxx</a></li>
              <li><a href="#about">关于</a></li>
              <li><a href="#contact">联系我们</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能菜单 <b class="caret"></b></a>
                <ul class="dropdown-menu">
                 <!-- <li><a href="#">修改密码</a></li>-->
                 
                  <li><a href="#">离开</a></li>
                </ul>
                
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container">
		<!-- 模糊查询开始 -->
      <form action="#" method="post" id="queryForm">
       
        <div class="input-append" style="padding-left:40px">
        
         <select class="span3" id="sele" style="width: 150px;margin-left: 10px; border-radius:4px;" >
       			 <option value="sname" selected>学生名称</option>
       			 <option value="cname">班级名称</option>
        </select>
       
         <input value="" class="span2" type="text" placeholder="请输入姓名" name="name" style="width: 250px; height: 30px;margin-left: 10px; border-radius:4px;">&nbsp;
         	<button class="btn" type="submit" style="margin-left: 10px; border-radius:10px;" >搜索</button>
         	
          </div>
      </form> 
		<!-- 模糊查询结束 -->
      <table class="table table-hover" style="height: 250px;">
        <thead>
       
          <tr>
            <th style="text-align: center;"><a href="javascript:void(0)"   style="text-decoration: none; text-align: c">编号</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">姓名</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">性别</a></th>
            <th style="text-align: center;"><a href="javascript:void(0)"  style="text-decoration: none;">联系电话</a></th>          
		    <th style="text-align: center;"><a href="javascript:void(0)" style="text-decoration: none;" >操作</a></th>
          	
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
        	<tr>
           			<th style="text-align: center;">1</th>
           			<th style="text-align: center;">邹先锋</th>
          			<th style="text-align: center;">女</th>
		            <th style="text-align: center;">13756045843</th>
		            
		           <th>
		          <a href="update.html" style="text-decoration: none;" >修改信息</a>
		            
		            <a href="#" >删除</a> 
					</th>
		            
         		 </tr>
         		</tr>
				<tr height="10px;" >
        	<tr>
           			<th style="text-align: center;">2</th>
           			<th style="text-align: center;">张伟东</th>
          			<th style="text-align: center;">男</th>
		            <th style="text-align: center;">13827232223</th>
		            
		           <th>
		          <a href="update.html" style="text-decoration: none;" >修改信息</a>
		            
		            <a href="javascript:void(0)" >删除</a> 
					</th>
		            
         		 </tr>
         		</tr>
				<tr height="10px;" >
        	  <tr>
           			<th style="text-align: center;">3</th>
           			<th style="text-align: center;">小花</th>
          			<th style="text-align: center;">女</th>
		            <th style="text-align: center;">13672322321</th>
		            
		           <th>
		          <a href="update.html" style="text-decoration: none;" >修改信息</a>
		            
		            <a href="javascript:void(0)" >删除</a> 
					</th>
		            
         		 </tr>
         		</tr>
        	</tbody>
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
    <script type="text/javascript" src="../js/jquery-1.5.2.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
  </body>
</html>

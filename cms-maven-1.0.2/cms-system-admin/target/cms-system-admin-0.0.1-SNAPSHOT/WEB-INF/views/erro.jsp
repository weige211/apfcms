<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	      <!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

  </head>
  
  <body>
   <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="http://www.tjhic.cn">HIC</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
          <ul class="nav navbar-nav navbar-right">
          <li><a href="<%=basePath%>user/users"><span class="glyphicon glyphicon-user"></span><%=s.getAttribute("user") %></a></li>
          <li><a href="<%=basePath%>user/users/signout"><span class="glyphicon glyphicon-off"></span>退出</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
   <div class="container ">
    <h3>错误页面</h3>
   <p>${erro}</p>
    </div>
   <footer id="fh5co-footer" role="contentinfo">
	
		<div class="container">
			<div class="col-md-12 fh5co-copyright text-center">
				<p>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved. </p>
			</div>
			
		</div>
	</footer>
  </body>
</html>

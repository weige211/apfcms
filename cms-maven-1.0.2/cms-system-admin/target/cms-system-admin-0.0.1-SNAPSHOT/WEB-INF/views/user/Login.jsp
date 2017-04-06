<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>天津嗨客网络科技有限公司</title>

   <!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

 <script src="js/json2.js"></script>
    	 <script type="text/javascript">
    	function send(){
   var url="<%=basePath%>admin/user/login";
   var name=document.getElementById("username").value;
   var password=document.getElementById("password").value;
   var obj={"username":name,"password":password};//此处注意属性应该对应MVC端controller 中接受的对象属性且属性大小写要一致
    $.ajax( {
    url : url,
    type : "post", 
    data:JSON.stringify(obj),
    dataType:"json",
    contentType:'application/json;charset=UTF-8',
    success : function(data) {
      if(data.status=="ok"){
      //alert(data.token);
      window.location.href="<%=basePath%>admin/user/users";
      }else{
      alert(data.erro);
      }
    },
error:function(e){
    alert("err");   
    }  
    	 });
    	 }
    	
    	 </script>
</head>

  <body>
    <div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
      <form class="form-signin" role="form" action="manager/login" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <input type="email" id="username" name="username" class="form-control" placeholder="邮箱" required autofocus>
        <input type="password" id="password" name="password"class="form-control" placeholder="密码" required>
        <div class="checkbox">
          <!--  <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>-->
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="send()">登录</button>
      </form>
      </div>
      </div>

    </div> <!-- /container -->

	
	<footer id="fh5co-footer" role="contentinfo">
	
		<div class="container">
			<!--<div class="col-md-3 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<h3>About Us</h3>
				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
			</div>
			<div class="col-md-6 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<h3>Our Services</h3>
				<ul class="float">
					<li><a href="#">Web Design</a></li>
					<li><a href="#">Branding &amp; Identity</a></li>
					<li><a href="#">Free HTML5</a></li>
					<li><a href="#">HandCrafted Templates</a></li>
				</ul>
				<ul class="float">
					<li><a href="#">Free Bootstrap Template</a></li>
					<li><a href="#">Free HTML5 Template</a></li>
					<li><a href="#">Free HTML5 &amp; CSS3 Template</a></li>
					<li><a href="#">HandCrafted Templates</a></li>
				</ul>

			</div>

			<div class="col-md-2 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<h3>Follow Us</h3>
				<ul class="fh5co-social">
					<li><a href="#"><i class="icon-twitter"></i> Twitter</a></li>
					<li><a href="#"><i class="icon-facebook"></i> Facebook</a></li>
					<li><a href="#"><i class="icon-google-plus"></i> Google Plus</a></li>
					<li><a href="#"><i class="icon-instagram"></i> Instagram</a></li>
				</ul>
			</div>
			
			-->
			<div class="col-md-12 fh5co-copyright text-center">
				<p>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved. </p>
			</div>
			
		</div>
	</footer>
	</div>
	
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>APFCMS</title>

        <meta name="description" content="APFCMS">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- END Stylesheets -->

        <!-- Modernizr (browser feature detection library) -->
        <script src="js/vendor/modernizr-3.3.1.min.js"></script>
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
      window.location.href="<%=basePath%>admin";
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
  
  <!-- Full Background -->
        <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
        <img src="img/placeholders/layout/login2_full_bg.jpg" alt="Full Background" class="full-bg animation-pulseSlow">
        <!-- END Full Background -->

        <!-- Login Container -->
        <div id="login-container">
            <!-- Login Header -->
            <h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
                <i class="fa fa-cube text-light-op"></i> <strong>APF</strong>
            </h1>
            <!-- END Login Header -->

            <!-- Login Block -->
            <div class="block animation-fadeInQuick">
                <!-- Login Title -->
                <div class="block-title">
                    <h2>请登录</h2>
                </div>
                <!-- END Login Title -->

                <!-- Login Form -->
                <form id="form-login" action="index.html" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="login-email" class="col-xs-12">用户名</label>
                        <div class="col-xs-12">
                            <input type="text" id="username" name="username"  class="form-control" placeholder="用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="login-password" class="col-xs-12">密码</label>
                        <div class="col-xs-12">
                            <input type="password" id="password" name="password" class="form-control" placeholder="密码">
                        </div>
                    </div>
                    <div class="form-group form-actions">
                       <div class="col-xs-8">
                            <label class="csscheckbox csscheckbox-primary">
                                <input type="checkbox" id="login-remember-me" name="login-remember-me"><span></span> 记住我？
                            </label>
                        </div>
                        <div class="col-xs-4 text-right">
                            <button type="button" class="btn btn-effect-ripple btn-sm btn-success" onclick="send()">登录</button>
                        </div>
                    </div>
                </form>
                <!-- END Login Form -->

            </div>
            <!-- END Login Block -->

            <!-- Footer -->
            <footer class="text-muted text-center animation-pullUp">
                <small>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved. </small>
            </footer>
            <!-- END Footer -->
        </div>
  
  
  
  
  
    
	<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>

        <!-- Load and execute javascript code used only in this page -->
        <script src="js/pages/readyLogin.js"></script>
        <script>$(function(){ ReadyLogin.init(); });</script>
  </body>
</html>

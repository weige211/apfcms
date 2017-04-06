<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>天津嗨客网络科技有限公司</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="天津嗨客网络科技有限公司" />
	<meta name="keywords" content="HIC,天津嗨客网络科技有限公司,嗨客" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<![endif]-->

	</head>
	<body>
	
	
	<div id="fh5co-page">
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
				<h1><img src="images/logo.bmp"/> <a href="<%=basePath%>">天津嗨客网络科技有限公司</a></h1>
				<nav role="navigation">
					<ul>
					    <c:forEach items="${list}" var="item">
						    <c:choose>
						 	<c:when test="${item.id == 21}">
						 	<li><a class="active" href="<%=basePath%>${item.href}">${item.text}</a></li>
                           </c:when>
                            <c:otherwise>
                            <li><a  href="<%=basePath%>${item.href}">${item.text}</a></li>
                            </c:otherwise>
						 	</c:choose>
						</c:forEach>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<div id="fh5co-intro-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<h2>HIC（Use Heart Innovate &amp; Change）用心创新</h2>
				</div>
			</div>
		</div>
	</div>
	<!--
    	作者：offline
    	时间：2016-12-26
    	描述：九宫格
    -->
	<!--<div id="fh5co-featured-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<a href="#" class="featured-grid" style="background-image: url(images/image_6.jpg);">
						<div class="desc">
							<h3>Work with love</h3>
							<span>Web Design</span>
						</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_2.jpg);">
						<div class="desc">
							<h3>Music Lover</h3>
							<span>Application</span>
						</div>
					</a>
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_3.jpg);">
								<div class="desc">
									<h3>Travel</h3>
									<span>Illustration</span>
								</div>
							</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_8.jpg);">
								<div class="desc">
									<h3>Captured</h3>
									<span>Photo</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>-->
	<div id="fh5co-services-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>HIC购物新模式</h2>
					<p>我们重新定义网络购物的模式，我们认为将产品送到客户手中并不是购物的终结，而只是一个服务开始。</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-graph"></i></span>
					<h3>服务模式</h3>
					<p>我们是一家面向中高端人群提供线上订购，线下体验式购物的服务机构。依托独特的经营理念和业务架构，借助移动通信和网络技术为客户提供全新的购物体验。</p>
					
				</div>
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-heart"></i></span>
					<h3>服务理念</h3>
					<p>HIC（Use Heart Innovate &amp; Change）用心创新，用心服务！</p>
				</div>
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-key"></i></span>
					<h3>服务体系</h3>
					<p>
					  我们采用线上线下相结合的服务体系：<br />
					  购买环节采用B2C商城+线下服务网点的模式为用户提供全新的购物体验;使用环节采用CMS客户服务系统+线下服务网点为产品提供养护，保养服务;回收环节采用绿色回收系统+线下服务网点+绿色回收机构的模式提供绿色有偿回收服务。
				  </p>
				</div>
			</div>
		</div>
	</div>
	<!--
    	作者：offline
    	时间：2016-12-26
    	描述：blog
    -->
	<!--<div id="fh5co-blog-section" class="fh5co-grey-bg-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Our Recent Blog</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_4.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">New iPhone 6 Released</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_5.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">Start your day with a beautiful appearance</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_6.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">Bookmarksgrove right</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-client-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Our Happy Clients</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 text-center">
					<div class="testimony">
						<span class="quote"><i class="icon-quote-right"></i></span>
						<blockquote>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<span>Athan Smith, via <a href="#" class="icon-twitter twitter-color"></a></span>
						</blockquote>
					</div>
				</div>
				<div class="col-md-6 text-center">
					<div class="testimony">
						<span class="quote"><i class="icon-quote-right"></i></span>
						<blockquote>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<span>Athan Smith, via <a href="#" class="icon-google-plus googleplus-color"></a></span>
						</blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<footer id="fh5co-footer" role="contentinfo">
	
		<div class="container">
			<!--<div class="col-md-3 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<h3>主页</h3>
				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
			</div>
			<div class="col-md-6 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
				<h3>公司简介</h3>
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
				<h3>关于我们</h3>
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
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>


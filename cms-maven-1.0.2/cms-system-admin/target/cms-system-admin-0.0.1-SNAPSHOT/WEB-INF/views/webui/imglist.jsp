<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>天津嗨客网络科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="天津嗨客网络科技有限公司" />
<meta name="keywords" content="HIC,天津嗨客网络科技有限公司,嗨客" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>

<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="<%=basePath%>css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="<%=basePath%>css/icomoon.css">
<!-- Simple Line Icons -->
<link rel="stylesheet" href="<%=basePath%>css/simple-line-icons.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
<!-- Theme style  -->
<link rel="stylesheet" href="<%=basePath%>css/style.css">

<!-- Modernizr JS -->
<script src="<%=basePath%>js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<![endif]-->

</head>
<body>
	<div id="fh5co-page">
		<header id="fh5co-header" role="banner">
			<div class="container">
				<div class="header-inner">
					<h1>
						<img src="<%=basePath%>images/logo.bmp" /> <a href="<%=basePath%>">天津嗨客网络科技有限公司</a>
					</h1>
					<nav role="navigation">
						<ul>
							<c:forEach items="${list}" var="item">
								<c:choose>
									<c:when test="${item.id == curmenu}">
										<li><a class="active" href="<%=basePath%>${item.href}">${item.text}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="<%=basePath%>${item.href}">${item.text}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<div id="fh5co-blog-section">
			<div class="container">
				<c:forEach items="${page.page}" var="item">
					<c:choose>
						<c:when test="${not empty item.imgurl}">
							<div class="row ">
								<div class="col-md-12 text-left ">
									<div class="blog-inner ">
										<div class="col-sm-6 col-md-4 thumbnail ">
											<a href="<%=basePath%>content/${item.aid}?curmenu=${curmenu}">
											<img style="height: 255px;" src="<%=basePath%>uploads/${item.imgurl}" />
											</a>
										</div>
										<div class="col-sm-6 col-md-8 ">
											<a href="<%=basePath%>content/${item.aid}?curmenu=${curmenu}">
												<h3>${item.title}</h3>
											
											<p>${item.summary}</p>
											</a>
										</div>
										<footer class="text-right ">
											<button class=" btn btn-default ">
												<span class=" sl-icon-user "> 作者：${item.author}</span>
											</button>
										</footer>
									</div>
								</div>
							</div>
						</c:when>


						<c:otherwise>
							<div class="row">
								<div class="col-md-12 text-left">
									<div class="blog-inner">
										<div class="desc">
											<a href="<%=basePath%>content/${item.aid}?curmenu=${curmenu}" class=""><h3>${item.title}</h3>
											<p>${item.summary}</p></a>
										</div>
										<footer class="text-right">
											<a class="btn btn-default"><span class=" sl-icon-user">
													作者：${item.author}</span></a>
										</footer>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>

				</c:forEach>



				<c:choose>
					<c:when test="${page.nowPage-1>0}">
						<a href="<%=basePath%>imglist/${page.nowPage-1}/page?cid=${cid}&curmenu=${curmenu}"
							class="btn btn-default">上一页</a>
					</c:when>
				</c:choose>
				<c:forEach var="i" begin="1" end="${page.count}" step="1">
					<c:choose>
						<c:when test="${i==page.nowPage}">
							<a href="<%=basePath%>imglist/${i}/page?cid=${cid}&curmenu=${curmenu}"
								class="btn btn-default active">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="<%=basePath%>imglist/${i}/page?cid=${cid}&curmenu=${curmenu}"
								class="btn btn-default">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${page.nowPage+1<=page.count}">
						<a href="<%=basePath%>imglist/${page.nowPage+1}/page?cid=${cid}&curmenu=${curmenu}"
							class="btn btn-default">下一页</a>
					</c:when>
				</c:choose>


			</div>
		</div>
		<footer id="fh5co-footer" role="contentinfo">

			<div class="container">
				<div class="col-md-12 fh5co-copyright text-center">
					<p>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved.津ICP备17002115号</p>
				</div>
			</div>
		</footer>
	</div>


	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<%=basePath%>js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<%=basePath%>js/jquery.waypoints.min.js"></script>
	<!-- MAIN JS -->
	<script src="<%=basePath%>js/main.js"></script>

</body>
</html>


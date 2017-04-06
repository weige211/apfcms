
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
HttpSession s = request.getSession(); 
%>
<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

	<!-- Custom styles for this template -->
	<link href="<%=basePath%>css/dashboard.css" rel="stylesheet">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					<a class="navbar-brand" href="<%=basePath%>">HIC</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
				
					<ul class="nav navbar-nav navbar navbar-right">
						<li>
							<a href="<%=basePath%>admin/user/<%=s.getAttribute("uid")%>/update"><span class="glyphicon glyphicon-user"></span><%=s.getAttribute("username")%></a>
						</li>
						<li>
							<a href="<%=basePath%>admin/user/signout"><span class="glyphicon glyphicon-off"></span>退出</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar">
					<div id="treeview1" class="nav nav-sidebar"></div>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

					<h2 class="sub-header">角色列表</h2>
					<div class="table-responsive">
						<table class="table table-striped">
							<a class="btn btn-success" href="<%=basePath%>admin/role/add"><span class="glyphicon glyphicon-plus"></span>添加</a>
							<thead>
								<tr>
									<th>角色名称</th>
									<th>备注</th>
									<th>创建时间</th>
									<th>创建人</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${list}" var="item">
								<tr>
									<td>${item.rolename}</td>
									<td>${item.remark}</td>
									<td>${item.createtime}</td>
									<td>${item.createuser}</td>
									<td>
										<a class="btn btn-warning btn-sm" href="<%=basePath%>admin/role/${item.rid }/update"><span class="glyphicon glyphicon-pencil"></span>修改</a>|
										<a class="btn btn-danger btn-sm" href="<%=basePath%>admin/role/${item.rid }/del"><span class="glyphicon glyphicon-remove"></span>删除</a>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<script src="<%=basePath%>js/bootstrap-treeview.js"></script>
		<script type="text/javascript">
			$(function() {

				var url = "<%=basePath%>admin/menu/menus/trees";
				//var obj={"uid":"1","name":"weige"};//此处注意属性应该对应MVC端controller 中接受的对象属性且属性大小写要一致
				$.ajax({
					url: url,
					type: "get",
					dataType: "json",
					contentType: 'application/json;charset=UTF-8',
					success: function(data) {
						if(data != null) {
							if(data.status == "ok") {
								//alert(JSON.stringify(data.data));
								$("#treeview1").treeview({

									backColor: "#FFFFFF",

									//backColor: "black",
									color: "#428bca",
									
									expandIcon: 'glyphicon glyphicon-chevron-right',

					                collapseIcon: 'glyphicon glyphicon-chevron-down',

					                nodeIcon: 'glyphicon glyphicon-th-large',

									enableLinks: false,
									onNodeSelected : function(event, node) {
														window.location.href="<%=basePath%>"+node.href;
														},

									data: data.data[0].nodes

								});
							} else {
								alert(data.erro);
							}

							//document.getElementById("content").innerHTML=content;
						} else {
							alert("获取失败！");
						}
					},
					error: function(e) {
						alert("err");
					}
				});

			});
		</script>
		<footer id="fh5co-footer" role="contentinfo">

			<div class="container">
				<div class="col-md-12 copyright text-center">
					<p>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved. </p>
				</div>

			</div>
		</footer>

	</body>

</html>


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
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- Custom styles for this template -->
<link href="<%=basePath%>css/dashboard.css" rel="stylesheet">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- ajax 提交form-->
 <script type="text/javascript" src="<%=basePath%>/js/jquery.form.js"></script>

<!-- 配置文件 -->
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/ueditor.all.js"></script>
    
   <script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor("uecontainer");
        function send(){
        var html = ue.getContent();
        document.getElementById("content").value=html;
        document.getElementById("formid").submit();
        
        }
        
        
         function upload(){
 $("#upload").ajaxSubmit({
            type : "POST",
            url : "<%=basePath%>admin/article/upload",
            success : function(data) {
            if(data.status="ok"){
            //alert("上传成功"+data.data);
                $("#imgDiv").empty();
                $("#imgDiv").html("<img class='img-responsive img-thumbnail' src='<%=basePath%>uploads/"+data.data+"'/>");
                $("#imgDiv").show();
                 document.getElementById("imgurl").value=data.data;
                
            }else{alert(data.erro);}
            },
            error : function() {
                alert("上传失败，请检查网络后重试");
            }
        });

					}
        
    </script>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=basePath%>">HIC</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">

				<ul class="nav navbar-nav navbar navbar-right">
					<li><a
						href="<%=basePath%>admin/user/<%=s.getAttribute("uid")%>/update"><span
							class="glyphicon glyphicon-user"></span><%=s.getAttribute("username")%></a></li>
					<li><a href="<%=basePath%>admin/user/signout"><span
							class="glyphicon glyphicon-off"></span>退出</a></li>
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

				<h2 class="sub-header">撰写文章</h2>
				
				<form id="upload" class="form-horizontal" role="form"
					enctype="multipart/form-data" method="post">
					上传图片：<input class="form-control" id="file" type="file" name="file" /><br>
					<div id="imgDiv"></div>
					<br> <input type="button" class="btn btn-primary"
						onclick="upload()" value="上传图片" />
				</form>
				
				<form class="form-horizontal" id="formid" role="form"
					action="<%=basePath%>admin/article/add" method="post">
					      <input type="hidden" id="imgurl" name="imgurl" value=""/>
						 标题:<input type="text" class="form-control" name="title" value="" /> 
						 类别：<select class="form-control" name="cid">
						       <c:forEach items="${list}" var="item">
						        <option value="${item.cid}" >${item.catename}</option>
						       </c:forEach>
					          </select>
						 摘要:<input type="text" class="form-control" name="summary" value="" /> 
						 内容:<input type="hidden" id="content" class="form-control" name="content" value="" />
						  <!-- 加载编辑器的容器 -->
                        <script id="uecontainer" type="text/plain">
                                                                 请在此输入内容
                       </script>
						  
						 备注:<input type="text" class="form-control" name="remark" value="" /> <br>
					    <button onclick="send()" class="btn btn-lg btn-primary btn-block">
						<span class="glyphicon glyphicon-plus"></span>添加
					</button>
				</form>
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
				<p>&copy; 2016 天津嗨客网络科技有限公司. All Rights Reserved.</p>
			</div>

		</div>
	</footer>

</body>

</html>

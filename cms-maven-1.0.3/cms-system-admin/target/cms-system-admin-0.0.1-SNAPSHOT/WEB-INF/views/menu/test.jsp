
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	HttpSession s = request.getSession();
%>

			

				<h2 class="sub-header">菜单管理</h2>
				<p class="sub-header">
					<a href="<%=basePath%>menu/add" class="btn btn-success"><span
						class="glyphicon glyphicon-plus"></span>添加</a>
						| <a id="modify"
						class="btn btn-warning"><span
						class="glyphicon glyphicon-pencil"></span>修改</a>
						| <a id="delete"
						 class="btn btn-danger"><span
						class="glyphicon glyphicon-remove"></span>删除</a>
						<!--  | <a-->
						<!-- href="<%=basePath%>menu/addroot" class="btn btn-success"><span -->
						<!--  class="glyphicon glyphicon-zoom-in"></span>添加根节点</a>-->
				</p>


	




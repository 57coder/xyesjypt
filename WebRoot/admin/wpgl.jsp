<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<%=path%>/admin/css/base.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=path%>/admin/css/jquery.dialog.css" />
		<link rel="stylesheet" href="<%=path%>/admin/css/index.css" />

		<title>物品管理</title>
	</head>

	<body>
		<div id="container">
			<div id="hd">
				<div class="hd-wrap ue-clear">
					<div class="top-light"></div>
					<h1 class="logo"></h1>
				 
				</div>
			</div>
			<div id="bd">
				<div class="wrap " style="padding-left:0px;">
					
					<div class="content">
						<iframe src="<%=path%>/goods?type=goodsMana" id="iframe"
							width="100%" height="100%" frameborder="0"></iframe>
					</div>
				</div>
			</div>
			<div id="ft" class="ue-clear">

			</div>
		</div>
	 
	</body>
	<script type="text/javascript" src="<%=path%>/admin/js/jquery.js">
</script>
	<script type="text/javascript" src="<%=path%>/admin/js/common.js">
</script>
	<script type="text/javascript" src="<%=path%>/admin/js/core.js">
</script>
	<script type="text/javascript"
		src="<%=path%>/admin/js/jquery.dialog.js">
</script>
	<script type="text/javascript" src="<%=path%>/admin/js/index.js">
</script>

</html>


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

		<title>校园二手物品交易平台后台</title>
	</head>

	<body>
		<div id="container">
			<div id="hd">
				<div class="hd-wrap ue-clear">
					<div class="top-light"></div>
					<h1 class="logo"></h1>
					<div class="login-info ue-clear">
						<div class="welcome ue-clear">
							<span>欢迎您,${admin.userName}</span>
						</div>

					</div>
					<div class="toolbar ue-clear">
						<a href="<%=path%>/admin/index.jsp" class="home-btn">首页</a>
						<a href="javascript:;" class="quit-btn exit"></a>
					</div>
				</div>
			</div>
			<div id="bd">
				<div class="wrap ue-clear">
					<div class="sidebar">
						<h2 class="sidebar-header">
							<p>
								功能导航
							</p>
						</h2>
						<ul class="nav">
							 
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>基本信息管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/admin/userinfo/userPw.jsp" date-src="<%=path%>/admin/userinfo/userPw.jsp">修改个人密码</a>
									</li>
									 
								</ul>
							</li>
							 
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>通知公告管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/gonggao?type=gonggaoMana" date-src="<%=path%>/gonggao?type=gonggaoMana">通知公告</a>
									</li>
									 
								</ul>
							</li>
							
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>商品管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/catelog?type=catelogMana" date-src="<%=path%>/catelog?type=catelogMana">类别管理</a>
									</li>
									<li>
										<a href="<%=path%>/goods?type=goodsManaHou" date-src="<%=path%>/goods?type=goodsManaHou">物品管理</a>
									</li>
									 
								</ul>
							</li>
							 
							 
							 
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>会员管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/user?type=userMana" date-src="<%=path%>/user?type=userMana">会员管理</a>
									</li> 
									 
								</ul>
							</li>
							
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>订单管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/order?type=orderMana" date-src="<%=path%>/order?type=orderMana">订单管理</a>
									</li> 
									 
								</ul>
							</li>
							
							
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>互动交流</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/order?type=orderMana" date-src="<%=path%>/message?type=messageMana">互动交流</a>
									</li> 
									 
								</ul>
							</li>
							
							
							 
							 
							 
							<li>
								<div class="nav-header">
									<a href="javascript:;" class="ue-clear"><span>管理员管理</span><i
										class="icon"></i>
									</a>
								</div>
								<ul class="subnav"> 
									<li>
										<a href="<%=path%>/admin?type=adminMana" date-src="<%=path%>/admin?type=adminMana">管理员管理</a>
									</li> 
									 
								</ul>
							</li>
							 
							 
						</ul>
					</div>
					<div class="content">
						<iframe src="<%=path%>/admin/version.jsp" id="iframe"
							width="100%" height="100%" frameborder="0"></iframe>
					</div>
				</div>
			</div>
			<div id="ft" class="ue-clear">

			</div>
		</div>
		<div class="exitDialog">
			<div class="dialog-content">
				<div class="ui-dialog-icon"></div>
				<div class="ui-dialog-text">
					<p class="dialog-content">
						你确定要退出系统？
					</p>
					<p class="tips">
						如果是请点击“确定”，否则点“取消”
					</p>

					<div class="buttons">
						<input type="button" class="button long2 ok" value="确定" />
						<input type="button" class="button long2 normal" value="取消" />
					</div>
				</div>

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


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script language="JavaScript" src="<%=path%>/js/public.js"
			type="text/javascript">
</script>
		<script type='text/javascript'
			src='<%=path%>/dwr/interface/loginService.js'>
</script>
		<script type='text/javascript' src='<%=path%>/dwr/engine.js'>
</script>
		<script type='text/javascript' src='<%=path%>/dwr/util.js'>
</script>
		<script type="text/javascript">
function admin() {
	var url = "<%=path%>/login.jsp";
	window.open(url, "_blank");
}

function reg() {
	var url = "<%=path%>/qiantai/userinfo/userReg.jsp";
	var n = "";
	var w = "480px";
	var h = "500px";
	var s = "resizable:no;help:no;status:no;scroll:yes";
	openWin(url, n, w, h, s);
}

function myXinxi() {
<c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path%>/qiantai/userinfo/userXinxi.jsp";
                var n="";
                var w="480px";
                var h="500px";
                var s="resizable:no;help:no;status:no;scroll:yes";
			    openWin(url,n,w,h,s);
            </c:if>
         } 
         
         function getPwd()
         {
             
                var url="<%=path%>/qiantai/userinfo/getPwd.jsp";
                var n="";
                var w="480px";
                var h="500px";
                var s="resizable:no;help:no;status:no;scroll:yes";
			    openWin(url,n,w,h,s);
            
         } 
         
         function mycart()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path%>/qiantai/cart/mycart.jsp";
                window.open(url,"_self");
            </c:if>
         } 
         
         function check()
			{                                                                                         
			     if(document.ThisForm.loginname.value=="")
				 {
				 	alert("请输入用户名");
					return false;
				 }
				 if(document.ThisForm.loginpw.value=="")
				 {
				 	alert("请输入密码");
					return false;
				 }
				 
				 loginService.login(document.ThisForm.loginname.value,document.ThisForm.loginpw.value,'11',1,callback);
			}
		
			function callback(data)
			{
			    
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {   
			        window.location.href="<%=path %>/index";
			    }
			    
			}
         
         function myorder()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path%>/buy?type=myorder";
                window.open(url,"_self");
            </c:if>
         } 
         
         function myAdr()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path%>/shouhuo?type=myshouhuo";
                window.open(url,"_self");
            </c:if>
         } 
         
         function myGoods()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path%>/admin/wpgl.jsp";
                window.open(url,"_blank");
            </c:if>
         }
         
         function reg()
	        {
	                var url="<%=path%>/qiantai/userinfo/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
      </script>
		<LINK href="<%=path%>/css/css.css" type=text/css rel=stylesheet>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<title>校园二手物品交易平台</title>
			<link rel="stylesheet" type="text/css"
				href="<%=path%>/css1/style.css" />
			<link rel="stylesheet" type="text/css"
				href="<%=path%>/css1/list.css" />
			<!-- 导航部分 -->
			<script type="text/javascript" src="<%=path%>/js/jquery.min.js">
</script>
			<script type="text/javascript" src="<%=path%>/js/script.js">
</script>
			<script type="text/javascript" src="<%=path%>/js/mY_neirong.js">
</script>
			<script src="js/FengTab.js" type="<%=path%>/text/javascript">
</script>

			<script type="text/javascript">
$(document).ready(function() {

	$(".navbg").capacityFixed();

	$("#navul > li").not(".navhome").hover(function() {
		$(this).addClass("navmoon");
	}, function() {
		$(this).removeClass("navmoon");
	});

});
</script>
			<script type="text/javascript">
function setContentTab(name, curr, n) {
	for (i = 1; i <= n; i++) {
		var menu = document.getElementById(name + i);
		var cont = document.getElementById("con_" + name + "_" + i);
		menu.className = i == curr ? "hover" : "";
		if (i == curr) {
			cont.style.display = "block";
		} else {
			cont.style.display = "none";
		}
	}
}
</script>

		</head>
		<body>
			<!-- 头部 -->
			<div class="topbox">
				<div class="top">
					<div class="top-left">

					</div>
					<div class="top-right">
					<c:if test="${sessionScope.user==null}">
						<a href="<%=path%>/qiantai/login.jsp">登录</a>|
						<a href="#" onclick="reg()">注册</a>|<a href="#" onclick="getPwd()">找回密码</a>
					 
					</c:if>
					<c:if test="${sessionScope.user!=null}">
						欢迎你：${sessionScope.user.loginname } 
						<a href="#" onclick="mycart()">购物车</a>|
						<a href="#" onclick="myorder()">我的订单</a>|
						<a href="#" onclick="myXinxi()">我的信息</a>|
						<a href="#" onclick="myAdr()">地址管理</a>|
						<a href="#" onclick="myGoods()">物品管理</a>|
						<a href="<%=path%>/user?type=userLogout">注销</a>
					</c:if>	
					</div>
				</div>
			</div>
			<!-- logo -->
	 
			
			<div class="logobox"  style="background-image:url(<%=path %>/images/logo.png) ">
	
 
	<div class="sousuo">
		 <div class="dis_right">
      <style>
	  .txtsea{ border:none; width:130px; margin-left:15px; display:inline; float:left; line-height:20px; background:#fff;}
	
      </style>
        <form  name="formsearch" method="post" action="<%=path %>/goods?type=goodsByKey"  >
        <div class="search">
        <input class="txtsea" value="搜一下" onBlur="this.value =(this.value=='') ? '搜一下' : this.value;" onFocus="this.value =(this.value=='搜一下') ? '' : this.value;" maxlength="150" id="key" name="key" type="text">
        <button type="submit" class="search-submit">搜索</button>
        </div>
        </form>
    </div>
	</div>
</div>
			
			<!-- 导航 -->
			<body>

				<div class="navbg">
					<div class="col960" style="margin: auto">
						<ul id="navul" class="cl">
							<li>
								<a href="<%=path%>/qiantai/default.jsp">首页</a>
							</li>
							<li>
								<a href="<%=path%>/gonggao?type=gonggaoManaQian">通知公告</a>
							</li>
							<li>
								<a href="<%=path%>/qiantai/default.jsp">物品展示</a>
							</li>
							<li>
								<a href="<%=path%>/message?type=messageManaQian">互动交流</a>
							</li>
							<li>
								<a href="#" onclick="admin()">后台管理</a>
							</li>

						</ul>
					</div>
				</div>

				<!-- banner -->


				 

			</body>
</html>

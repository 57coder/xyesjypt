<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
        <script type='text/javascript' src='<%=path %>/js/jquery.min.js'></script>
        
        <link rel="stylesheet" href="<%=path %>/admin/css/base.css" />
	    <link rel="stylesheet" href="<%=path %>/admin/css/login.css" />
        
        	 

		
		<script type="text/javascript">
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c) {
		$('.message').fadeOut('slow', function(c) {
			$('.message').remove();
		});
	});
});
</script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 
			  if(document.ThisForm.vercode.value=="")
			 {
			 	alert("请输入验证码");
				document.ThisForm.vercode.focus();
				return false;
			 }
			
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.vercode.value,0,callback);
			 
		}
		
		function callback(data)
		{
		    if(data=="no")
		    {
		        alert("工号或密码错误");
		    }
		    if(data=="codeerror")
		    {
		        alert("验证码有误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	    </script>
	<title>校园二手物品交易平台后台</title>
</head>
<body>
<form name="ThisForm" action="loginuser!logon.action" method="post">
	<div id="container">
		<div id="bd">
			<div class="login1">
            	<div class="login-top"><h1 class="logo"></h1></div>
                <div class="login-input">
                	<p class="user ue-clear">
                    	<label>用户名</label>
                        <input type="text" id="userName" name="userName"/>
                    </p>
                    <p class="password ue-clear">
                    	<label>密&nbsp;&nbsp;&nbsp;码</label>
                        <input  id="userPw" name="userPw" type="password" />
                    </p>
                    <p class="yzm ue-clear">
                    	<label>验证码</label>
                        <input id="vercode" name="vercode"/>
                        <cite><img src="<%=path %>/ImageServlet" title="点击更换" onclick="javascript:refresh(this);"/></cite>
                    </p>
                </div>
                <div class="login-btn ue-clear">
                	<a href="#" class="btn"  onclick=" check1()">登录</a>
                    <div class="remember ue-clear">
                    	
                    </div>
                </div>
            </div>
		</div>
	</div>
</form>	
    <div id="ft">CopyRight&nbsp;2017&nbsp;&nbsp;版权所有&nbsp;&nbsp</div>
</body>
<script type="text/javascript" src="<%=path %>/admin/js/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/admin/js/common.js"></script>
<script type="text/javascript">
var height = $(window).height();
$("#container").height(height);
$("#bd").css("padding-top",height/2 - $("#bd").height()/2);

$(window).resize(function(){
	var height = $(window).height();
	$("#bd").css("padding-top",$(window).height()/2 - $("#bd").height()/2);
	$("#container").height(height);
	
});

$('#remember').focus(function(){
   $(this).blur();
});

$('#remember').click(function(e) {
	checkRemember($(this));
});

function checkRemember($this){
	if(!-[1,]){
		 if($this.prop("checked")){
			$this.parent().addClass('checked');
		}else{
			$this.parent().removeClass('checked');
		}
	}
}

function refresh(obj) {
        obj.src = "ImageServlet?"+Math.random();
    }
</script>
</html>
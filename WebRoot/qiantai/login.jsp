<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>

	<style>
.login-input {
	margin-top: 21px;
	padding-left: 165px;
}

.login-input p {
	margin-top: 11px;
	line-height: 39px;
}

.login-input p label {
	float: left;
	text-align: right;
	width: 51px;
	color: #000000;
	font-size: 16px;
}

.login-input p input {
	padding: 0 0 0 49px;
	margin-left: 16px;
	width: 195px;
	height: 39px;
	line-height: 39px\0; *
	line-height: 39px;
	border: none;
	outline: none;
}

.login-input p.user input {
	background: url(<%=path%>/admin/images/login_user.png);
}

.login-input p.password input {
	background: url(<%=path%>/admin/images/login_password.png);
}

.login-btn {
	margin-top: 18px;
	padding-left: 232px;
	line-height: 38px;
}

.login-btn .btn {
	float: left;
	width: 117px;
	height: 39px;
	background: url(<%=path%>/admin/images/login_btn.png);
	color: #fff;
	text-align: center;
	font-size: 16px;
}
</style>




	<!-- banner -->

	<!-- zhuanjia -->
	<div class="zhuanjia-box">
		<div class="title">
			<span> </span>
			<h3>
				登录
				<img src="<%=path%>/images/sxian.png">
			</h3>
		</div>
		<div class="zhuanjia">
			<ul>
				<li class="zhuanjia-li1">
					<img src="<%=path%>/images/timg.jpg">
				</li>
				<li class="zhuanjia-li3">
					<p>
						<form id="ThisForm" name="ThisForm" method="post"
							action="<%=path%>/userinfo!logon.action">
							<div id="container">


								<div class="login-input">
									<p class="user ue-clear">
										<label>
											用户名
										</label>
										<input type="text" id="loginname" name="loginname" />
									</p>
									<p class="password ue-clear">
										<label>
											密&nbsp;&nbsp;&nbsp;码
										</label>
										<input type="password" id="loginpw" name="loginpw"
											type="password" />
									</p>

								</div>
								<div class="login-btn ue-clear">
									<a href="#" class="btn" onclick=" check()">登录</a>
									<div class="remember ue-clear">

									</div>
								</div>
						</form>
					</p>
				</li>

			</ul>
		</div>
	</div>



	<!-- footer -->
	<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>

	</body>
</html>


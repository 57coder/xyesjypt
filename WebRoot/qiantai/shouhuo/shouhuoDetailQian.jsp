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



	<script type="text/javascript">

function delshouhuo(obj) {
	window.location.href = "<%=path%>/shouhuo?type=delshouhuo&id=" + obj;
}
</script>



	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
	<!-- main -->
	<div class="nr-main">

		<!-- main-center -->
		<div class="nr-main-lf">
			<div class="title">
				<span></span>
				<h3>
					收货地址添加
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>

			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					<form action="shouhuo?type=addshouhuo" method="post">
						<table width='98%' border='0'
							style="margin-top: 8px; margin-left: 5px;">
							<tr>
								<td>
									姓名：
									<input type="text" name="name" size="40" />

								</td>
							</tr>
							<tr>
								<td>
									电话：
									<input type="text" name="tel" size="40" />

								</td>
							</tr>
							<tr>
								<td>
									邮编：
									<input type="text" name="youbian" size="40" />

								</td>
							</tr>
							<tr>
								<td>
									地址：
									<input type="text" name="adr" size="40" />

								</td>
							</tr>
							<tr>
								<td>
									<input type="submit" value="添加" style="width: 80px;" />
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="title">
				<span></span>
				<h3>
					收货地址管理
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
						border=0>
						<TR>
							<TD class=head>
								<span style="float: left">收货地址管理</span>
							</TD>
						</TR>
						<TR align="left">
							<TD height="5"></TD>
						</TR>
						<TR align="left" height="500">
							<TD>
								<table width="98%" border="0" cellpadding="8" cellspacing="8"
									align="center" style="margin-top: 8px">
									<tr height="26">
										<td class="blackTitle" align="center">
											姓名
										</td>
										<td class="blackTitle" align="center">
											电话
										</td>
										<td class="blackTitle" align="center">
											邮编
										</td>

										<td class="blackTitle" align="center">
											地址
										</td>

										<td class="blackTitle" align="center">
											操作
										</td>
									</tr>

									<c:forEach items="${requestScope.shouhuoList}"
										var="shouhuoItem">
										<tr class="text" align="center" bgcolor="#FFFFFF">
											<td>
												${shouhuoItem.name}
											</td>
											<td>
												${shouhuoItem.tel}
											</td>
											<td>
												${shouhuoItem.youbian}
											</td>
											<td>
												${shouhuoItem.adr}
											</td>
											<td>
												<input type="button" onclick="delshouhuo(${shouhuoItem.id})"
													value="删除" />
											</td>
										</tr>
									</c:forEach>

								</table>


							</TD>
						</TR>
						<TR align="left">
							<TD height="5"></TD>
						</TR>
					</TABLE>


				</div>
			</div>




		</div>
		<!-- main-right -->
		<div class="jianjia">
			<div class="title">
				<span> </span>
				<h3>
					物品类别
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="jianjia-p">
				<jsp:include flush="true" page="/qiantai/inc/incCat.jsp"></jsp:include>
			</div>


		</div>


		<div class="jianjia">
			<div class="title">
				<span> </span>
				<h3>
					通知公告
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="jianjia-p">
				<jsp:include flush="true" page="/qiantai/inc/incNews.jsp"></jsp:include>
			</div>


		</div>
	</div>


	<!-- footer -->
	<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>

	</body>
</html>


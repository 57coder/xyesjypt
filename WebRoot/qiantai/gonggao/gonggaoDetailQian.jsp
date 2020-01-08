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
	<!-- main -->
	<div class="nr-main">

		<!-- main-center -->
		<div class="nr-main-lf" style="height: 500px">
			<div class="title">
				<span></span>
				<h3>
					${requestScope.gonggao.title}
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					 <c:out value="${requestScope.gonggao.content}" escapeXml="false"></c:out>


				</div>
			</div>

			<script>
$(".main").FengTab( {
	titCell : ".tab",
	mainCell : ".con",
	defaultIndex : 0,
	trigger : "click",
	titOnClassName : "on",
	showtime : 0
});
</script>
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


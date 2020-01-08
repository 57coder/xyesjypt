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
		<div class="main-about">

			<!-- main-center -->
			<div class="main-center">
				<div class="title">
					<span><a href="#">更多</a> </span>
					<h3>
						物品信息
						<img src="<%=path%>/images/sxian.png">
					</h3>
				</div>
				<div class="jjimg">
					<table cellspacing="8" cellpadding="1" width="700px" align="center"
						border="0">
						<tr>
							<c:forEach items="${requestScope.goodsList}" var="goods"
								varStatus="sta">
								<c:if test="${sta.index%4==0}">
						</tr>
						<tr>
							</c:if>
							<td>



								<table>
									<tr>
										<td height="110">
											<a
												href="<%=path%>/goods?type=goodsDetailQian&id=${goods.id }">
												<img width="160" height="110"
													src="<%=path%>/${goods.fujian }"
													style="border: 1px solid #ccc; padding: 3px;" /> </a>
										</td>
									</tr>
									<tr>
										<td height="50" align="center" valign="top">
											${goods.mingcheng } (￥:${goods.shichangjia }元)
										</td>
									</tr>
								</table>
							</td>
							</c:forEach>
						</tr>
					</table>
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


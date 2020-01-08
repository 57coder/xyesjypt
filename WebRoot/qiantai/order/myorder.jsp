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

     
    <script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	<script type="text/javascript">
function orderDetailQian(order_id) {
	var url = "<%=path%>/buy?type=orderDetailQian&order_id=" + order_id;
	var n = "";
	var w = "600px";
	var h = "500px";
	var s = "resizable:no;help:no;status:no;scroll:yes";
	openWin(url, n, w, h, s);
}

function orderDetail(order_id) {
	var url = "<%=path%>/buy?type=orderDetail&order_id=" + order_id;
	var n = "";
	var w = "600px";
	var h = "500px";
	var s = "resizable:no;help:no;status:no;scroll:yes";
	openWin(url, n, w, h, s);
}
function orderPing(order_id) {
	var url = "<%=path%>/buy?type=orderPing&order_id=" + order_id;
	var n = "";
	var w = "600px";
	var h = "500px";
	var s = "resizable:no;help:no;status:no;scroll:yes";
	openWin(url, n, w, h, s);
	window.location.reload();
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
					我的订单
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
							border=0>
							<TR>
								<TD class=head>
									<span style="float: left">我的订单</span>
								</TD>
							</TR>
							<TR align="left">
								<TD height="5"></TD>
							</TR>
							<TR align="left" height="500">
								<TD>
									<table width="98%" border="0" cellpadding="8" cellspacing="8"
										align="center" style="margin-top: 8px">
										<tr align="center" bgcolor="#FAFAF1" height="22">
											<td width="15%">
												订单编号
											</td>
											<td width="15%">
												下单时间
											</td>
											<td width="8%">
												状态
											</td>

											<td width="15%">
												送货地址
											</td>
											<td width="10%">
												付款方式
											</td>
											<td width="5%">
												总金额
											</td>
											<td width="15%">
												操作
											</td>
										</tr>
										<c:forEach items="${requestScope.orderList}" var="order">
											<tr align='center' bgcolor="#FFFFFF" height="22">
												<td bgcolor="#FFFFFF" align="center">
													${order.bianhao}
												</td>
												<td bgcolor="#FFFFFF" align="center">
													${order.shijian}
												</td>
												<td bgcolor="#FFFFFF" align="center">
													<c:if test="${order.zhuangtai=='no'}">
												         未受理
												     </c:if>
													<c:if test="${order.zhuangtai=='yes'}">
												        已受理
												     </c:if>
													<c:if test="${order.zhuangtai=='shou'}">
												        已收货
												     </c:if>
													<c:if test="${order.zhuangtai=='ping'}">
												        已评价
												     </c:if>
													<c:if test="${order.zhuangtai=='hui'}">
												     双方已评
												     </c:if>
												</td>

												<td bgcolor="#FFFFFF" align="center">
													${order.songhuodizhi}
												</td>
												<td bgcolor="#FFFFFF" align="center">
													${order.fukuanfangshi}
												</td>
												<td bgcolor="#FFFFFF" align="center">
													${order.jine}
												</td>
												<td>
												    <c:if test="${order.zhuangtai=='no'||order.zhuangtai=='ping'||order.zhuangtai=='hui'}">
												       <input value="明细" type="button"
														onclick="orderDetail(${order.id})" />
												    </c:if> 
												     <c:if test="${order.zhuangtai=='yes'||order.zhuangtai=='shou'}">
												       <input value="明细" type="button"  onclick="orderDetailQian(${order.id})" />
												    </c:if>
												   
													
													<c:if test="${order.zhuangtai=='yes'}">
														<input value="收货" type="button"
															onclick="window.location.href='order?type=orderShouhuo&id=${order.id}'" />
													</c:if>
													<c:if test="${order.zhuangtai=='shou'}">
														<input value="评价" type="button"
															onclick="orderPing(${order.id})" />
													</c:if>
													
												</td>
											</tr>
										</c:forEach>
									</table>
									<form action="buy?type=myorder" method="post">
										<table width='98%' border='0'
											style="margin-top: 8px; margin-left: 5px;">
											<tr>
												<td>
													订单编号：
													<input type="text" name="name" size="40" />
													<input type="submit" value="搜索" style="width: 80px;" />
												</td>
											</tr>
										</table>
									</form>
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


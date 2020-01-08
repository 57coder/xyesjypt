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
		<script type="text/javascript">
	        function buy1(kucun)
	        {
	            <c:if test="${sessionScope.user==null}">
	                alert("请先登录");
	            </c:if>
	            <c:if test="${sessionScope.user!=null}">
		            if(document.buy.quantity.value=="")
		            {
		                alert("请输入购买数量");
		                return false;
		            }
		            document.buy.submit();
	            </c:if>
	        }
	</script>
		<!-- main -->
		<div class="main-about">

			<!-- main-center -->
			<div class="main-center" >
				<div class="title">
					<span><a href="#">更多</a> </span>
					<h3>
						物品详情
						<img src="<%=path%>/images/sxian.png">
					</h3>
				</div>
				<div class="jjimg" >
					   <form action="<%=path %>/buy?type=addToCart" method="post" name="buy">
			                                  <table width="100%" border="0" cellpadding="9" cellspacing="9">
												    <tr>
												       <td align="center"><img width="220" height="180" src="<%=path %>/${requestScope.goods.fujian }" style="border:1px solid #ccc; padding:3px;"/></td>
												    </tr>
												    <tr>
												       <td align="left">物品编号：${requestScope.goods.bianhao }</td>
												    </tr>
												    <tr>
												       <td align="left">物品名称：${requestScope.goods.mingcheng }</td>
												    </tr>
												    <tr>
												       <td align="left">物品描述：<c:out value="${requestScope.goods.jieshao }" escapeXml="false"></c:out></td>
												    </tr>
												    <tr>
												       <td align="left">成色：${requestScope.goods.pinpai }</td>
												    </tr>
												    <tr>
												       <td align="left">价格：${requestScope.goods.shichangjia }</td>
												    </tr>
												    <tr>
												       <td align="left">
												           <hr>
												           物品评价：
												           <hr style="border: 1px dashed #ccc; width: 100%; height: 1px;" />
												      <c:forEach items="${requestScope.ping}" var="pingItem">      
												           ${pingItem.info}&nbsp;&nbsp;&nbsp;${pingItem.adddate} &nbsp;&nbsp;&nbsp; ${pingItem.loginname}
												           <c:if test="${pingItem.reply!=null}">
												     <font color="red"><br></br>客服回复：${pingItem.reply}&nbsp;&nbsp;&nbsp;${pingItem.replydate}</font></c:if>
												           <hr style="border: 1px dashed #ccc; width: 100%; height: 1px;" />
												      </c:forEach>     
												           <hr>
												             购买数量：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
												           <input type="hidden" name="goods_id" value="${requestScope.goods.id }"/><br/>
												           <img onclick="buy1(${requestScope.goods.kucun })" src="<%=path %>/img/goumai.jpg"/>
												       </td>
												    </tr>
						                      </table>
			                            </form>
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


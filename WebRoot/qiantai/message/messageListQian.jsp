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
		<div class="nr-main-lf">
			<div class="title">
				<span></span>
				<h3>
					互动交流
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					<ul>
						<c:forEach items="${requestScope.messageList}" var="message"
							end="5">
							<li>
								<div class="cll_info">
									<div class="cll_tit">
										<span>${message.adate}</span>
										<a
											href="<%=path%>/message?type=messageDetailQian&id=${message.id}">◆${message.title}</a>
									</div>

								</div>
							</li>
						</c:forEach>

					</ul>
					
					<c:if test="${sessionScope.user!=null}">
					<br />

					<div class="title">
						<span></span>
						<h3>
							我要留言
							<img src="<%=path%>/images/sxian.png">
						</h3>
					</div>



					<form id="form2" name="form2" method="post"
						action="message?type=messageAdd">
						<p>
							标题：<input type="text" size="50" name="title" id="title"></input>
						</p>
						<p>
							内容：<textarea name="info" id="info" cols="80" rows="5"
								class="text_mes"></textarea>
						</p>
						<p class="btn_box">
							<input type="submit" name="button2" id="button2" value="提交"
								class="btn" />
						</p>
					</form>
					
					</c:if>


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


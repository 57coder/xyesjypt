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
            function back1()
	        {
	           window.history.go(-1);
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
					订单确认
					<img src="<%=path%>/images/sxian.png">
				</h3>
			</div>
			<div class="nr-main-lf-cen">
				<div class="nr-liebiao">
					    <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<span style="float:left">支付金额为<%=request.getAttribute("jine") %>，请选择银行：</span>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left" height="500">
									<TD>
									    <form action="<%=path %>/buy?type=orderSubmit" name="f" method="post">
					                        <table width="98%" align="center" border="0" cellpadding="9" cellspacing="9">
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												            <a href="qiantai/order/orderBankQueren.jsp?bk=zg&jine=<%=request.getAttribute("jine") %>"> 中国银行</a>
												    </td>
												   
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												            <a href="qiantai/order/orderBankQueren.jsp?bk=gs&jine=<%=request.getAttribute("jine") %>">中国工商银行</a>
												    </td>
												   
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          <a href="qiantai/order/orderBankQueren.jsp?bk=ny&jine=<%=request.getAttribute("jine") %>"> 中国农业银行</a>
												    </td>
												   
												</tr>
												<tr align='center'>
												    <td width="20%" bgcolor="#FFFFFF" align="left">
												          <a href="qiantai/order/orderBankQueren.jsp?bk=js&jine=<%=request.getAttribute("jine") %>">支付宝</a>
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


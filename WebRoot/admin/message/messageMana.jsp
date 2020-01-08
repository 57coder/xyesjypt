<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function messageAdd()
           {
              var url="<%=path %>/admin/message/messageAdd.jsp";
              window.location.href=url;
           }
           
           function messageDetail(id)
           {
                 var url="<%=path %>/message?type=messageDetail&id="+id;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="44" background="<%=path %>/img/tbg.gif">&nbsp;互动交流&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">标题</td>
					<td width="20%">内容</td>
					<td width="10%">发布时间</td>
					<td width="5%">发布人</td>
					<td width="20%">回复内容</td>
					<td width="10%">回复时间</td> 
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.messageList}" var="message">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						 ${message.title}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${message.info}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${message.adate}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${message.auser}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${message.rinfo}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${message.rdate}
					</td> 
					<td bgcolor="#FFFFFF" align="center">
						<a class="pn-loperator" href="<%=path %>/message?type=messageDel&id=${message.id}">删除</a>|
						<a class="pn-loperator" href="<%=path %>/admin/message/messageReply.jsp?id=${message.id}">回复</a>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			 
	</body>
</html>

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
<TABLE width="100%"  border=0 cellPadding=0 cellSpacing=0
	class=dragTable>

	<TR>
		<TD class=middle align=left>
			<table width="100%" cellpadding="8" cellspacing="8">
				<c:forEach items="${sessionScope.catelogList}" var="catelog">
					<tr>
						<td align="left">
							<img src="<%=path%>/img/head-mark4.gif" align="middle"
								class="img-vm" border="0" />
							<a
								href="<%=path%>/goods?type=goodsByCatelog&catelog_id=${catelog.id}"
								title="">${catelog.name}</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</TD>
	</TR>
</TABLE>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<body>
<c:forEach var="human" items="${human }">
<tr style="background-color:white;">
	<td>${human.ID }</td>
	<td>${human.DEPART }</td>
	<td>${human.NAME }</td>
	<td>${human.TEL }</td>
	<td colspan="2">${human.EMAIL }</td>
</tr>
</c:forEach>
</body>
</html>
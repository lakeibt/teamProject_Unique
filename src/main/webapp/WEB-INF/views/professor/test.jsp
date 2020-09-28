<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script>

$(document).ready(function(){
	$.ajax({
		url : '${professor}messageSimple',
		type : 'GET',
		dataType : 'html'
	});
	
});

</script>
</head>
<body>


<ul>
<c:forEach var="dto" items="${dtos}">
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<c:set var="nowTime">
		<fmt:formatDate value="${now}" pattern="mm" />
	</c:set>
	<c:set var="t" value="${dto.getReg_date()}" />
	<c:set var="time" value="${t}">
		<fmt:formatDate value="${time}" pattern="mm" />
	</c:set>



	<li class="message-item" style="padding: 5px 5px;">
		<a class="dropdown-item" style="height: 100%; padding:10px 10px;">
			<span class="message-info">
			    <span class="time">${rt}</span>
				<span>${dto.getSender()}</span>
			</span>
			<span class="message"> ${dto.getContent()} </span>
		</a>
	</li>
</c:forEach>
</ul>


</body>
</html>
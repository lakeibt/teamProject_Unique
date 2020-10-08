<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<body>
<table class="table table-striped jambo_table" style="font-size:15px;">
	<tr class="headings">
		<th class="column-title" colspan="8"><h5>검색 목록</h5></th>
	</tr>
	<tr>
		<th style="width:5%;">번호</th>
		<th style="width:10%;">차량번호</th>
		<th style="width:20%;">이름(소속)</th>
		<th style="width:15%;">날짜</th>
		<th style="width:25%;">입차시간</th>
		<th style="width:25%;">출차시간</th>
	</tr>
<c:if test="${parkCnt > 0}">
<c:forEach var="dto" items="${dtos}">
<c:set var="TextValue" value="${dto.pintime}"/>
	<tr>
		<td>${dto.num}</td>
		<td>${dto.carNum}</td>
		<td>${dto.name}(${dto.depart_name})</td>
		<td>${fn:substring(TextValue,0,15)}</td>
		<td>${dto.pintime}</td>
		<td>${dto.pouttime}</td>
	</tr>
</c:forEach>
</c:if>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<table class="table">
	<thead class="text-primary">
		<tr>
			<th style="width:10%;">이수구분</th>
			<th style="width:25%;">교과목명</th>
			<th style="width:15%;">담당교수</th>
			<th style="width:20%;">강의시간</th>
			<th style="width:10%;">학점</th>
			<th style="width:15%;">수업계획서</th>
		</tr>
	</thead>
	<tbody>
	<c:if test="${cnt > 0}" >
		<c:forEach var="dto" items="${study}">
		<tr>
			<td style="width:10%;">${dto.P_CODE}</td>
			<td style="width:25%;">${dto.CO_NAME}</td>
			<td style="width:15%;">${dto.P_NAME}</td>
			<td style="width:20%;">${dto.DAY}/${dto.TIME}-${dto.TIME + dto.GRADE - 1}</td>
			<td style="width:10%;">${dto.GRADE}</td>
			<td style="width:15%;"><button class="btn btn-primary pull-left" onclick="syllabus('${dto.CO_CODE}');">조회</button></td>
		</tr>
		</c:forEach>
	</c:if>
	<c:if test="${cnt == 0}" >
		<tr>
			<td colspan="6" align="center">
				수강 중인 강의가 없습니다.
			</td>
		</tr>
	</c:if>
	</tbody>
</table>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
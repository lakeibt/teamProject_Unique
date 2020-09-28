<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id=attendance>
		<table class="table">
			<thead style="color: #73879C;">
				<tr align="center">
					<th>출근</th>
					<th>퇴근</th>
					<th>사원번호</th>
					<th>날짜</th>
					<th>출근시간</th>
					<th>퇴근시간</th>
					<th>근무 시간</th>
					<th>OT</th>
					<th>특근</th>
				</tr>
			</thead>
			<tbody id="salarySearch" style="color: grey;">
				<c:if test="${search_Cnt > 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr align="center">
							<c:if test="${dto.inState == 1}">
								<td>출근</td>
							</c:if>
							<c:if test="${dto.inState == 2}">
								<td>지각</td>
							</c:if>
							<c:if test="${dto.outState == 1}">
								<td>퇴근</td>
							</c:if>
							<c:if test="${dto.outState != 1}">
								<td>-</td>
							</c:if>
							<td>${dto.id}</td>
							<td><fmt:formatDate value="${dto.inDay}"
									pattern="yyyy-MM-dd" /></td>
							<td><fmt:formatDate value="${dto.inTime}" pattern="HH:mm" /></td>
							<c:if test="${empty dto.outTime}">
								<td>-</td>
							</c:if>
							<c:if test="${not empty dto.outTime}">
								<td><fmt:formatDate value="${dto.outTime}" pattern="HH:mm" /></td>
							</c:if>
							<fmt:formatDate var="inTime_hour" value="${dto.inTime}"
								pattern="HH" />
							<fmt:formatDate var="outTime_hour" value="${dto.outTime}"
								pattern="HH" />
							<c:if test="${outTime_hour-inTime_hour > 0}">
								<td>${outTime_hour-inTime_hour}</td>
							</c:if>
							<c:if test="${outTime_hour-inTime_hour < 0}">
								<td>-</td>
							</c:if>
							<c:if test="${outTime_hour-inTime_hour<9}">
								<td>-</td>
							</c:if>
							<c:if test="${outTime_hour-inTime_hour>=9}">
								<td>${(outTime_hour-inTime_hour)-8}</td>
							</c:if>
							<fmt:formatDate var="dayOfTheWeek" value="${dto.inDay}"
								pattern="E" />
							<c:if test="${dayOfTheWeek == '토' || dayOfTheWeek == '일'}">
								<td>O</td>
							</c:if>
							<c:if
								test="${dayOfTheWeek == '월' || dayOfTheWeek == '화' || dayOfTheWeek == '수' || dayOfTheWeek == '목' || dayOfTheWeek == '금'}">
								<td>-</td>
							</c:if>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>
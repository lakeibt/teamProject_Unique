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
	<div id="month">
		<table class="table">
			<thead style="color: #73879C;" align="center">
				<tr align="center">
					<th>귀속연월</th>
					<th>사원번호</th>
					<th>성명</th>
					<th>부서</th>
					<th>지급총액</th>
					<th>급여</th>
					<th>식대</th>
					<th>차량유지비</th>
					<th>특근수당(휴일)</th>
				</tr>
			</thead>
			<tbody style="color: grey;">
				<c:if test="${salary_list_cnt > 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr align="center">
							<td><fmt:formatDate value="${dto.salary_InDay}"
									pattern="YY/MM" /></td>
							<td>${dto.id}</td>
							<td>${dto.name}</td>
							<td>${dto.depart_name}</td>
							<td>${dto.sal+dto.over+dto.meals+dto.car}</td>
							<td>${dto.sal}</td>
							<td>${dto.meals}</td>
							<td>${dto.car}</td>
							<td>${dto.over}</td>
							<!-- 기본급:1, 연장근무:2, 식대:3, 차량유지비:4 -->
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>
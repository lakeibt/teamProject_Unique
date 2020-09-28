<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title" style="padding-bottom: 40px;"><h4 style="width: 300px; float:left;">2020/7 정규 (급여)</h4><a onclick="modifyRoll('id')" class="btn btn-app" style="height:30px; padding:5px; float:right;">수정</a></div>
				<div class="x_content">
				<form action="salary_roll" method="post" name="salaryRoll">
					<table class="table">
						<thead style="color:#73879C;">
							<tr>
								<th>사원번호</th>
								<th>성명</th>
								<th>직급</th>
								<th>부서명</th>
								<th>급여</th>
								<th>식대</th>
								<th>차량유지비</th>
								<th>총합계</th>
							</tr>
						</thead>
						<tbody style="color:grey;">
							<c:forEach var="stos" items="${stos}">
								<input type="hidden" id="id" name="id" value="${stos.id}">
								<tr>
									<td>${stos.id}</td>
									<td>${stos.name}</td>
									<td>${stos.rank}</td>
									<td>${stos.depart}</td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.salary}" /></td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.meal}" /></td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.contract_vehicle}" /></td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.salary+stos.meal+stos.contract_vehicle}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
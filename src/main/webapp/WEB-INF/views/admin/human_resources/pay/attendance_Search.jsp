<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
<script>
	var pageNum = ${pageNum}
	$("[id^=btn]").on('click',
		function(nextValue) {
			var id = $(this).attr("id");
			var number = id.replace("btn", "");
			
			pageNum = number;
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/human_resources/pay/attendance_Search", // 응답페이지  ==> 컨트롤러/basic.
				data : {"st" : st, "et" : et, "pageNum" : pageNum},
				type : 'GET', //전송 방식("get", "post")
				dataType : 'text',//요청한 데이터 형식("html", "xml", "json", "text")
				success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
					$('#attendance').html(data);
				},
				error : function(request, status, error) {
					console.log("@code : "+ request.status);
					console.log("@message : "+ request.responseText);
					console.log("@error : " + error);
				}
			});
		});
</script>
</head>
<style>
.form-control {
	font-size: 12px;
}

.btn {
	width: 100px;
	background-color: #68A4C4;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	cursor: pointer;
}
</style>
<body>
	<div id="attendance">
		<!-- 출력 위치 -->
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
					<th>특근</th>
				</tr>
			</thead>
			<tbody id="attendance_Search1" style="color: grey;">
				<c:if test="${search_Cnt >= 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr align="center">
							<c:if test="${!empty dto.tagintime}">
								<td>출근</td>
							</c:if>
							<c:if test="${!empty dto.tagouttime}">
								<td>퇴근</td>
							</c:if>
							<c:if test="${empty dto.tagouttime}">
								<td>-</td>
							</c:if>
							<td>${dto.id}</td>
							<fmt:parseDate var="intime" value="${dto.tagintime}" pattern="yyyy/MM/dd/(E) HH:mm" />
							<fmt:parseDate var="outtime" value="${dto.tagouttime}" pattern="yyyy/MM/dd/(E) HH:mm" />
							<!-- 날짜 -->
							<td><fmt:formatDate value="${intime}" pattern="yyyy-MM-dd" /></td> 
							<!-- 출근시간 -->
							<td><fmt:formatDate value="${intime}" pattern="HH:mm" /></td>
							<!-- 퇴근시간 -->
							<c:if test="${empty outtime}">
							<td>-</td>
							</c:if>
							<c:if test="${!empty outtime}">
							<td><fmt:formatDate value="${outtime}" pattern="HH:mm" /></td>
							</c:if>
							<!-- 근무시간 -->
							<fmt:formatDate var="it" value="${intime}" pattern="HH" />
							<fmt:formatDate var="ot" value="${outtime}" pattern="HH" />
							<fmt:parseNumber var="i" type="number" value="${it}" />
							<fmt:parseNumber var="o" type="number" value="${ot}" />
							<c:if test="${empty ot}">
								<td>-</td>
							</c:if>
							<c:if test="${!empty ot}">
								<td>${o-i}시간</td>
							</c:if>
							<fmt:formatDate var="dayOfTheWeek" value="${intime}"
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
		<table style="width: 1000px" align="center">
			<tr align="center">
				<th align="center">
					<!-- 게시글이 있으면 --> <c:if test="${search_Cnt > 0}">
						<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
						<c:if test="${startPage > pageBlock}">
							<a href="attendance_Search"> [◀◀] </a>
							<a href="attendance_Search?pageNum=${startPage - pageBlock}">
								[◀] </a>
						</c:if>

						<!-- 블록내의 페이지 번호 -->
						<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
							<input type="button" class="a" id="btn${i}" value="${i}" onclick="nextValue();">
						</c:forEach>

						<!-- 다음블록[▶] / 마지막[▶▶] -->
						<c:if test="${pageCount > endPage}">
							<a href="attendance_Search?pageNum=${startPage + pageBlock}">
								[▶]</a>
							<a href="attendance_Search?pageNum=${pageCount}"> [▶▶]</a>
						</c:if>
					</c:if>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var pageNum = ${pageNum}

	$("[id^=btn]").on('click', function(nextValue){ 
		var id = $(this).attr("id"); 
		var number = id.replace("btn", ""); 
			pageNum = number;

		$.ajax({
			url : "${pageContext.request.contextPath}/admin/human_resources/pay/attendance_Search", // 응답페이지  ==> 컨트롤러/basic.
			data : {"st" : st,"et" : et, "pageNum" : pageNum},
			type : 'GET', //전송 방식("get", "post")
			dataType : 'text',//요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#attendance').html(data);
			},
			error : function(request, status, error) {
				console.log("@code : " + request.status);
				console.log("@message : " + request.responseText);
				console.log("@error : " + error);
			}
		});
	});

</script>
</head>
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
					<th>OT</th>
					<th>특근</th>
				</tr>
			</thead>
			<tbody id="attendance_Search" style="color: grey;">
				<c:if test="${search_Cnt >= 0}">
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
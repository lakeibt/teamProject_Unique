<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var pageNum = ${pageNum}
	$("[id^=btn]").on('click', function(nextValue){ 
		var id = $(this).attr("id"); 
		var number = id.replace("btn", ""); 
			pageNum = number;
	
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/human_resources/pay/month_Search",
			data : {"sm" : sm, "em" : em, "pageNum" : pageNum},
			type : 'GET',
			dataType : 'text',
			success : function(data) { 
				$('#month').html(data);
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
				<c:if test="${monthSearch_Cnt > 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr align="center">
							<td><fmt:formatDate value="${dto.salary_month}"
									pattern="YY/MM" /></td>
							<td>${dto.id}</td>
							<td>${dto.name}</td>
							<td>${dto.depart_name}</td>
							<td>${dto.paytotal}</td>
							<td>${dto.pay}</td>
							<td>${dto.meal}</td>
							<td>${dto.contract_vehicle}</td>
							<td>${dto.overtime}</td>
							<!-- 기본급:1, 연장근무:2, 식대:3, 차량유지비:4 -->
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<table id="month_Search" style="width: 1000px" align="center">
			<tr align="center">
				<th align="center">
					<!-- 게시글이 있으면 --> <c:if test="${monthSearch_Cnt> 0}">
						<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
						<c:if test="${startPage > pageBlock}">
							<a href="month_Search"> [◀◀] </a>
							<a href="month_Search?pageNum=${startPage - pageBlock}">
								[◀] </a>
						</c:if>

						<!-- 블록내의 페이지 번호 -->
						<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
							<input type="button" class="a" id="btn${i}" value="${i}" onclick="nextValue();">
						</c:forEach>
							
						<!-- 다음블록[▶] / 마지막[▶▶] -->
						<c:if test="${pageCount > endPage}">
							<a href="human_Search?pageNum=${startPage + pageBlock}">
								[▶]</a>
							<a href="human_Search?pageNum=${pageCount}"> [▶▶]</a>
						</c:if>
					</c:if>
				</th>
			</tr>
		</table>
	</div>
</body>
</html>
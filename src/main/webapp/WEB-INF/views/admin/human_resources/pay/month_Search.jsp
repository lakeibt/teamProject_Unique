<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
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
<div class="table-responsive" id="month">
	<table class="table table-striped jambo_table">
		<thead>
			<tr class="headings">
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">귀속연월</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">사원번호</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">성명</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">부서</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">지급총액</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">급여</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">식대</font>
					</font>
				</th>
				<th class="column-title">
					<font style="vertical-align:inherit;">
						<font style="vertical-align:inherit;">차량유지비</font>
					</font>
				</th>
				<th class="column-title no-link last">
					<span class="nobr">
						<font style="vertical-align:inherit;">
							<font style="vertical-align:inherit;">특근수당(휴일)</font>
						</font>
					</span>
				</th>
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
	<table class="table table-striped jambo_table">
		<tbody id="attendance_Search1">
			<tr align="center">
				<th align="center">
					<!-- 게시글이 있으면 --> 
					<c:if test="${search_Cnt > 0}">
					<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
					<c:if test="${startPage > pageBlock}">
						<a href="attendance_Search"> [◀◀] </a>
						<a href="attendance_Search?pageNum=${startPage - pageBlock}"> [◀] </a>
					</c:if>
					<!-- 블록내의 페이지 번호 -->
					<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
						<input type="button" class="a" id="btn${i}" value="${i}" onclick="nextValue();">
					</c:forEach>
					<!-- 다음블록[▶] / 마지막[▶▶] -->
					<c:if test="${pageCount > endPage}">
						<a href="attendance_Search?pageNum=${startPage + pageBlock}"> [▶]</a>
						<a href="attendance_Search?pageNum=${pageCount}"> [▶▶]</a>
					</c:if>
				</c:if>
				</th>
			</tr>
		</tbody>
	</table>
</div>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>근태관리</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<script>
var st;
var et;
var startNum;
var cnt;
var pageNum = ${pageNum}
console.log("pageNum > " + pageNum)
$(function() {
	$('#attendance_Search').click(
	function() {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/human_resources/pay/attendance_Search", // 응답페이지  ==> 컨트롤러/basic.
			data : {"st" : st, "et" : et},
			type : 'GET', //전송 방식("get", "post")
			dataType : 'text',//요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#attendance').html(data);
			},
			error : function(request, status, error) {
				console.log("st : " + typeof (st))
				console.log("et : " + typeof (et))
				console.log("@code : "+ request.status);
				console.log("@message : "+ request.responseText);
				console.log("@error : " + error);
			}
		});
	});
});
function startSelect() {
	st = document.getElementById("startDate").value;
	st = st.replace(/-/gi,"/");
	console.log(st);
}
function endSelect() {
	et = document.getElementById("endDate").value;
	et = et.replace(/-/gi,"/");
	console.log(et);
}
</script>
<style>
.form-control { font-size: 12px; }
.btn { width: 100px; background-color: #68A4C4; border: none; color: #fff; padding: 15px 0; text-align: center; text-decoration: none;
	   display: inline-block; font-size: 15px; cursor: pointer; }
</style>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
			</div>
			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="/WEB-INF/views/include/admin_top_nav.jsp"%>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main" style="min-height:934px;">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">근태관리</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_content">
									<table class="table">
										<thead style="color: #73879C;">
											<tr align="center">
												<th>대상기간</th>
												<th><input class="form-control" type="date"
													id="startDate" onchange="startSelect()"></th>
												<th><input class="form-control" type="date"
													id="endDate" onchange="endSelect()"></th>
												<th><input type="button" class="btn"
													style="padding: 6px 6px;" id="attendance_Search" value="검색">
													<input type="button" class="btn" style="padding: 6px 6px;"
													onclick="location.reload();" value="초기화"></th>
											</tr>
										</thead>
									</table>
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<tbody>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">대상기간</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input class="form-control" type="date" id="startDate" onchange="startSelect()">
															</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input class="form-control" type="date" id="endDate" onchange="endSelect()">
															</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input type="button" class="btn" style="padding: 6px 6px;" id="attendance_Search" value="검색">
																<input type="button" class="btn" style="padding: 6px 6px;" onclick="location.reload();" value="초기화">
															</font>
														</font>
													</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="x_content" id="attendance">
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings" align="center">	
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">출근</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">퇴근</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">이름(소속)</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">날짜</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">출근시간</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">퇴근시간</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">근무시간</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">특근</font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody id="attendance_Search1">
												<c:if test="${cnt >= 0}">
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
															<td>${dto.name}(${dto.depart_name})</td>
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
										<table class="table table-striped jambo_table">
											<tbody id="attendance_Search1">
												<tr align="center">
													<th>
														<!-- 게시글이 있으면 --> 
														<c:if test="${cnt > 0}">
															<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
															<c:if test="${startPage > pageBlock}">
																<a href="attendance"> [◀◀] </a>
																<a href="attendance?pageNum=${startPage - pageBlock}"> [◀] </a>
															</c:if>
															<!-- 블록내의 페이지 번호 -->
															<c:forEach var="i" begin="${startPage}" end="${endPage}">
																<c:if test="${i == currentPage}">
																	<span>	
																		<a href="attendance?pageNum=${i}"><input type="button" value="${i}"></a>
																	</span>
																</c:if>
																<c:if test="${i != currentPage}">
																	<a href="attendance?pageNum=${i}"><input type="button" value="${i}"></a>
																</c:if>
															</c:forEach>
															<!-- 다음블록[▶] / 마지막[▶▶] -->
															<c:if test="${pageCount > endPage}">
																<a href="attendance?pageNum=${startPage + pageBlock}"> [▶]</a>
																<a href="attendance?pageNum=${pageCount}"> [▶▶]</a>
															</c:if>
														</c:if>
													</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<!-- /page content -->
		</div>
		<!-- /page content -->

	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
	</div>
<!-- footer content -->
<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
<!-- /footer content -->
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>월별 급/상여지급현황</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="${resources}js/admin.js"></script>
<script>
var sm;
var em;
$(function() {
	$('#month_Search').click(
		function() {
			console.log(sm);
			console.log(em);
			$.ajax({
					url : "${pageContext.request.contextPath}/admin/human_resources/pay/month_Search", // 응답페이지  ==> 컨트롤러/basic.
					data : {"sm" : sm, "em" : em},
					type : 'GET', //전송 방식("get", "post")
					dataType : 'text',//요청한 데이터 형식("html", "xml", "json", "text")
					success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
						$('#month').html(data);
					},
					error : function(request, status, error) {
						console.log("@code : "+ request.status);
						console.log("@message : "+ request.responseText);
						console.log("@error : " + error);
					}
				});
		});
});

function startMonthSelect() {
	sm = document.getElementById("startMonth").value;
	sm = sm.replace(/-/gi,"");
	console.log(sm);
}
function endMonthSelect() {
	em = document.getElementById("endMonth").value;
	em = em.replace(/-/gi,"");
	console.log(em);
}
</script>
</head>
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
									<font style="vertical-align:inherit;">월별 급/상여지급현황</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_content">
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
																<input class="form-control" type="month" id="startMonth" onchange="startMonthSelect()">
															</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input class="form-control" type="month" id="endMonth" onchange="endMonthSelect()">
															</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input type="button" class="btn" style="padding: 6px 6px;" id="month_Search" value="검색" onclick="humanSearch()">
																<input type="button" class="btn" style="padding: 6px 6px;" onclick="location.reload();" value="초기화">
															</font>
														</font>
													</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="x_content" id="month">
									<div class="table-responsive">
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
											<tbody id="attendance_Search1">
												<c:if test="${salary_list_cnt > 0}">
													<c:forEach var="dto" items="${dtos}">
														<tr align="center">
															<td><fmt:formatDate value="${dto.salary_month}" pattern="YY/MM" /></td>
															<td>${dto.id}</td>
															<td>${dto.name}</td>
															<td>${dto.depart_name}</td>
															<td><fmt:formatNumber type="number" maxFractionDigits = "3" value="${dto.paytotal}" /></td>
															<td><fmt:formatNumber type="number" maxFractionDigits = "3" value="${dto.pay}" /></td>
															<td><fmt:formatNumber type="number" maxFractionDigits = "3" value="${dto.meal}" /></td>
															<td><fmt:formatNumber type="number" maxFractionDigits = "3" value="${dto.contract_vehicle}" /></td>
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
													<th>
														<!-- 게시글이 있으면 --> 
														<c:if test="${salary_list_cnt > 0}">
															<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
															<c:if test="${startPage > pageBlock}">
																<a href="salary_list_month"> [◀◀] </a>
																<a href="salary_list_month?pageNum=${startPage - pageBlock}"> [◀] </a>
															</c:if>
															<!-- 블록내의 페이지 번호 -->
															<c:forEach var="i" begin="${startPage}" end="${endPage}">
																<c:if test="${i == currentPage}">
																	<span>	
																		<a href="salary_list_month?pageNum=${i}"><input type="button" value="${i}"></a>
																	</span>
																</c:if>
																<c:if test="${i != currentPage}">
																	<a href="salary_list_month?pageNum=${i}"><input type="button" value="${i}"></a>
																</c:if>
															</c:forEach>
															<!-- 다음블록[▶] / 마지막[▶▶] -->
															<c:if test="${pageCount > endPage}">
																<a href="salary_list_month?pageNum=${startPage + pageBlock}"> [▶]</a>
																<a href="salary_list_month?pageNum=${pageCount}"> [▶▶]</a>
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
	</div>
</div>
<!-- footer content -->
<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
<!-- /footer content -->
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
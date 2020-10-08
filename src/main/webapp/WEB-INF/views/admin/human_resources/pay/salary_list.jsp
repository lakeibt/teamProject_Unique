<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여대장</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
<script>
$(document).ready(function() {
	$('#delete').click(function() {
		var num = $("#salaryNum").val();
		window.location = "salary_delete?salary_input_num=" + num;

	})
});
$(document).ready(function() {
	$('#modify').click(function() {
		/* var num = $("#salaryNum").val();
		window.location="salary_modify?salary_input_num="+num; */
		modi_sal();
	})
});
function modi_sal(){
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/human_resources/pay/salary_modify', // 응답페이지  ==> 컨트롤러/basic.
		type : 'GET', //전송 방식("get", "post")
		data : {
			salary_input_num : $("#salaryNum").val()
		},
		success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
			$('#pay_payroll').html(data);
		},
		error : function() {
			alert('오류');
		}
	});
}
$(document).ready(function(){
	$('#cntAndTotal').click(function(){
		divisioncnt();
		salarytotal();

	})
});
function divisioncnt(){
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/human_resources/pay/divisioncnt', // 응답페이지  ==> 컨트롤러/basic.
		type : 'GET', //전송 방식("get", "post")
		data : {
			salary_input_num : $("#salaryNum").val(),
			payments_division : $("#divisionNum").val()
		}, //요청한 데이터 형식("html", "xml", "json", "text")
		success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
			$('#divi_cnt').html(data);
		},
		error : function() {
			alert('오류');
		}
	});
}
function salarytotal(){
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/human_resources/pay/salarytotal', // 응답페이지  ==> 컨트롤러/basic.
		type : 'GET', //전송 방식("get", "post")
		data : {
			salary_input_num : $("#salaryNum").val(),
			payments_division : $("#divisionNum").val()
		}, //요청한 데이터 형식("html", "xml", "json", "text")
		success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
			$('#total_all').html(data);
		},
		error : function() {
			alert('오류');
		}
	});
}
$(document).ready(function(){
	$('#payroll').click(function(){
		selectSalary();
	})
});
function selectSalary(){
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/human_resources/pay/payroll', // 응답페이지  ==> 컨트롤러/basic.
		type : 'GET', //전송 방식("get", "post")
		data : {
			salary_input_num : $("#salaryNum").val()
		}, //요청한 데이터 형식("html", "xml", "json", "text")
		success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
			$('#pay_payroll').html(data);
		},
		error : function() {
			alert('급여계산을 클릭해주세요.');
		}
	});
}

$(document).ready(function() {
	$('#confirm_payroll').click(function() {
		selectSalaryConfirm();
	})
});

function selectSalaryConfirm() {
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/human_resources/pay/confirm_payroll', // 응답페이지  ==> 컨트롤러/basic.
		type : 'GET', //전송 방식("get", "post")
		data : {
			salary_input_num : $("#salaryNum").val()
		}, //요청한 데이터 형식("html", "xml", "json", "text")
		success : function(data) { //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
			$('#pay_payroll').html(data);
		},
		error : function() {
			alert('급여계산을 클릭해주세요.');
		}
	});
}
	
</script>
</head>
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
			<div class="right_col" role="main">
				<div>
					<div class="row">
						<div class="col-md-12 col-sm-12  ">
							<div class="x_panel">
								<div class="x_title">
									<h2>급여대장</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<div class="dropdown-menu"
												aria-labelledby="dropdownMenuButton"
												x-placement="bottom-start"
												style="position: absolute; transform: translate3d(-5px, 30px, 0px); top: 0px; left: 0px; will-change: transform;">
												<a class="dropdown-item"
													href="${path}admin/human_resources/pay/salary">신규등록</a>
											</div></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

									<div class="table-responsive">
										<table class="table table-striped jambo_table bulk_action">
											<thead>
												<tr class="headings">

													<th class="column-title">순서</th>
													<th class="column-title no-link last"><span
														class="nobr">급여구분</span>
													<th class="column-title">지급구분</th>
													<th class="column-title">대장명칭</th>
													<th class="column-title">지급일</th>
													<th class="column-title">급여계산</th>
													<th class="column-title">인원수</th>
													<th class="column-title">급여대장</th>
													<th class="column-title">명세서</th>
													<th class="column-title">지급총액</th>

													<th class="bulk-actions" colspan="7"><a class="antoo"
														style="color: #fff; font-weight: 500;">Bulk Actions (
															<span class="action-cnt"> </span> ) <i
															class="fa fa-chevron-down"></i>
													</a></th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${cnt > 0 }">
													<c:forEach var="atos" items="${mtos}">
														<input type="hidden" id="salaryNum" name="salaryNum"
															value="${atos.salary_input_num}">
														<input type="hidden" id="divisionNum" name="divisionNum"
															value="${atos.payments_division}">
														<tr class="even pointer">

															<td>${atos.salary_input_num}</td>
															<c:if test="${atos.salary_division==1}">
																<td>급여</td>
															</c:if>
															<c:if test="${atos.salary_division!=1}">
																<td>상여</td>
															</c:if>
															<c:if test="${atos.payments_division==1}">
																<td>정규</td>
															</c:if>
															<c:if test="${atos.payments_division==2}">
																<td>비정규</td>
															</c:if>
															<c:if test="${atos.payments_division==3}">
																<td>교수</td>
															</c:if>
															<td>${atos.salary_name}</td>
															<td><fmt:formatDate type="both" pattern="yyyy-MM-dd"
																	value="${atos.salary_inday}" /></td>
															<c:if test="${atos.salary_confirm==1}">
																<td><a class="btn btn-app"
																	style="height: 30px; padding: 5px;" id="cntAndTotal">급여계산</a>
															</c:if>
															<c:if test="${atos.salary_confirm!=1}">
																<td><a style="color: red;">급여 확정</a><br></td>
															</c:if>
															<td>
																<div id="divi_cnt">${atos.division_cnt}</div>
															</td>
															<c:if test="${atos.salary_confirm==1}">
																<td><a id="payroll" class="btn btn-app"
																	style="height: 30px; padding: 5px;">조회</a><br> <a
																	class="btn btn-app" style="height: 30px; padding: 5px;"
																	href="${path}admin/human_resources/pay/commitSalary?salary_input_num=${atos.salary_input_num}">확정</a><br>
																	<a id="modify" class="btn btn-app"
																	style="height: 30px; padding: 5px;">수정</a><br>
																	<a class="btn btn-app"
																	style="height: 30px; padding: 5px;" id="delete">삭제</a></td>
															</c:if>
															<c:if test="${atos.salary_confirm!=1}">
																<td><a id="confirm_payroll" class="btn btn-app"
																	style="height: 30px; padding: 5px;">조회</a><br>
																	<a class="btn btn-app"
																	style="height: 30px; padding: 5px;" id="delete">삭제</a></td>
															</c:if>
															<td>
																<a class="btn btn-app"
																style="height: 30px; padding: 5px;">email</a></td>
															<td>
																<div id="total_all">
																	<fmt:formatNumber type="number" maxFractionDigits="3"
																		value="${atos.salary_total}" /> 원
																</div>
															</td>
														</tr>

													</c:forEach>

												</c:if>


												<%-- 회원이 없으면 --%>
												<c:if test="${cnt == 0 }">
													<tr>
														<td colspan="10" align="center">급여 지급한 사원이 없습니다.</td>
													</tr>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
								<!-- 페이지 컨트롤  -->
								<table style="width: 100%; margin: auto;">
									<tr style="width: 100%; margin: auto; algin: center">
										<td colspan="9" algin="center">
											<!-- 게시글이 있으면 --> <c:if test="${cnt>0 }">
												<!-- 처음[◀◀] /이전 블록 [◀] -->
												<c:if test="${startPage > pageBlock }">
													<a href="salary_list">[◀◀]</a>
													<a href="salary_list?pageNum=${startPage-pageBlock }">[
														◀ ]</a>
												</c:if>

												<!-- 블록내의 페이지 번호  -->
												<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<c:if test="${i ==  currentPage}">
														<span><b>[${i}]</b></span>
													</c:if>

													<c:if test="${i !=  currentPage}">
														<a href="salary_list?pageNum=${i}">[${i}]</a>
													</c:if>
												</c:forEach>

												<!-- 다음 블록 [▶] /마지막  [▶▶] -->
												<c:if test="${pageCount > endPage }">
													<a href="salary_list?pageNum=${startPage+pageBlock}">[
														▶ ]</a>
													<a href="salary_list?pageNum=${pageCount}">[▶▶]</a>
												</c:if>

											</c:if>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>


				<br>

				<div id="pay_payroll"></div>

			</div>

		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>

</body>
</html>
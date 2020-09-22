<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여대장</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>

<script>

$(function(){
	$('#payroll').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/pay/payroll',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#pay_payroll').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});
	
$(function(){
	$('#payslip').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/pay/payslip',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#pay_payslip').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});
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
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title" style="padding-bottom: 20px;">
									<h4 style="width: 300px; float: left;">급여 계산/대장</h4>
									<a class="btn btn-app"
										style="height: 30px; padding: 5px; float: right;">수정</a><a
										class="btn btn-app"
										href="${path}admin/human_resources/pay/salary"
										style="height: 30px; padding: 5px; float: right;">신규등록</a><br>
								</div>
								<div class="x_content">
									<form action="salary_List" method="post" name="salaryList">
									<table class="table">
										<thead style="color: #73879C;">
											<tr>
												<th>순서</th>
												<th>급여구분</th>
												<th>지급구분</th>
												<th>대장명칭</th>
												<th>지급일</th>
												<th>급여계산</th>
												<th>인원수</th>
												<th>급여대장</th>
												<th>명세서</th>
												<th>지급총액</th>
											</tr>
										</thead>
										<tbody style="color: grey;">

											<c:if test="${cnt > 0 }">
												
												<c:forEach var="atos" items="${mtos}">
													<input type="hidden" id="salaryNum" name="salaryNum" value="${atos.salary_input_num}">
													<tr>
														<td>
														${atos.salary_input_num}
														</td>
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
																style="height: 30px; padding: 5px;"
																onclick="salTotalIn('${atos.salary_input_num}','${atos.payments_division}');">전체계산</a><br> <a
																class="btn btn-app" style="height: 30px; padding: 5px;">개인별계산</a>
															</td>
														</c:if>
														<c:if test="${atos.salary_confirm!=1}">
															<td><a style="color: red;">급여 확정</a><br></td>
														</c:if>
														<td>${adminCnt}</td>

														<c:if test="${atos.salary_confirm==1}">
															<td><a id="payroll" class="btn btn-app"
																style="height: 30px; padding: 5px;">조회</a><br> <a
																class="btn btn-app" style="height: 30px; padding: 5px;">확정</a><br>
																<a class="btn btn-app"
																style="height: 30px; padding: 5px;">삭제</a></td>
														</c:if>
														<c:if test="${atos.salary_confirm!=1}">
															<td><a class="btn btn-app"
																style="height: 30px; padding: 5px;">삭제</a></td>
														</c:if>
														<td><a id="payslip" class="btn btn-app"
															style="height: 30px; padding: 5px;">조회</a><br> <a
															class="btn btn-app" style="height: 30px; padding: 5px;">email</a>
														</td>
														<td><fmt:formatNumber type="number"
																maxFractionDigits="3" value="" /></td>
													</tr>
												</c:forEach>
											</c:if>


											<%-- 회원이 없으면 --%>
											<c:if test="${cnt == 0 }">
												<tr>
													<td colspan="8" align="center">사원이 없습니다.</td>
												</tr>
											</c:if>

										</tbody>
									</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 페이지 컨트롤  -->
				<table style="width: 100%; margin: auto;">
					<tr style="width: 100%; margin: auto; algin:center">
						<td colspan="9" algin="center">
							<!-- 게시글이 있으면 --> <c:if test="${cnt>0 }">
								<!-- 처음[◀◀] /이전 블록 [◀] -->
								<c:if test="${startPage > pageBlock }">
									<a href="salary_list">[◀◀]</a>
									<a href="salary_list?pageNum=${startPage-pageBlock }">[ ◀ ]</a>
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
									<a href="salary_list?pageNum=${startPage+pageBlock}">[ ▶ ]</a>
									<a href="salary_list?pageNum=${pageCount}">[▶▶]</a>
								</c:if>

							</c:if>
						</td>
					</tr>
				</table>

				<br>

				<div id="pay_payroll">
					<!-- 결과 출력 위치 -->
				</div>

				<div id="pay_payslip">
					<!-- 결과 출력 위치 -->
				</div>
			</div>
			<!-- /page content -->


			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
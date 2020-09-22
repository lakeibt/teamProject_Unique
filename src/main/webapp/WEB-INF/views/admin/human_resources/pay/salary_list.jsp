<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>급여대장</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<!-- Template Main JS File -->
<script src="${resources}js/admin.js"></script>

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
								<div class="x_title"><h4>급여 계산/대장</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
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
										<tbody style="color:grey;">
											<tr>
												<th scope="row">급여</th>
												<td>정규</td>
												<td>2020/7 정규 (급여)</td>
												<td>2020/08/15</td>
												<td>
													<a class="btn btn-app" style="height:30px; padding:5px;">전체계산</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">개인별계산</a>
												</td>
												<td>3</td>
												<td>
													<a id="payroll" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">수정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">확정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">삭제</a>
												</td>
												<td>
													<a id="payslip" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">email</a>
												</td>
												<td>25,500,505</td>
											</tr>
											<tr>
												<th scope="row">급여</th>
												<td>정규</td>
												<td>2020/6 정규 (급여)</td>
												<td>2020/07/15</td>
												<td>
													<a class="btn btn-app" style="height:30px; padding:5px;">전체계산</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">개인별계산</a>
												</td>
												<td>7</td>
												<td>
													<a id="payroll" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">수정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">확정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">삭제</a>
												</td>
												<td>
													<a id="payslip" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">email</a>
												</td>
												<td>25,500,505</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="btn btn-app" href="${path}admin/human_resources/pay/salary" style="height:30px; padding:5px;">신규등록</a>

				<br>
				
				<div id="pay_payroll">
					<!-- 결과 출력 위치 -->
				</div >
							
				<div id="pay_payslip">
					<!-- 결과 출력 위치 -->
				</div >
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
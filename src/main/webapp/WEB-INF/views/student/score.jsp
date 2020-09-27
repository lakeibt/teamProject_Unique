<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]성적조회</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../student/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../student/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">성적 조회</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class="text-primary">
											<tr>
												<th>
													<select class="form-control">
														<option>2020</option>		
													</select>
												</th>
												<th colspan="5">
													<select id="select1" class="form-control" onchange="content()" style="width:130px;">
														<option selected disabled>학기를 선택하세요</option>
														<option value="1">1학기</option>
														<option value="2">2학기</option>
													</select>
												</th>
											</tr>
										</thead>
										<thead class="text-primary">
											<tr>
												<td>학과</td>
												<td><input class="form-control" type="text" value="${vo.m_code}" disabled></td>
												<td>학번</td>
												<td><input class="form-control" type="text" value="${vo.id}" disabled></td>
												<td>이름</td>
												<td><input class="form-control" type="text" value="${vo.name}" disabled></td>
											</tr>
										</thead>
									</table>
									<div id="info"></div>
									<script type="text/javascript">
									function content() {
										var yourSelect = document.getElementById("select1");
										console.log(yourSelect);
										var value = yourSelect.options[yourSelect.selectedIndex].value;
										console.log(value);
										var param = "value=" + value;
	
										sendRequest(content_callback, "${student}scoreInfo", "get", param);
										console.log(param);
									}
	
									function content_callback() {
										var result = document.getElementById("info");
										if (httpRequest.readyState == 4) {
											if (httpRequest.status == 200) {
												var data = httpRequest.responseText;
												result.innerHTML = data;
											} else result.innerHTML = "Error!";
										} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
									}
									</script>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
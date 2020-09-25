<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]수강강의목록</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../guest/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../guest/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">수강강의목록</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class="text-primary">
											<tr>
												<th style="width:10%;">이수구분</th>
												<th style="width:25%;">교과목명</th>
												<th style="width:15%;">담당교수</th>
												<th style="width:20%;">강의시간</th>
												<th style="width:10%;">학점</th>
												<th style="width:15%;">수업계획서</th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${cnt > 0}" >
											<c:forEach var="dto" items="${dtos}">
											<tr>
												<td style="width:10%;">${dto.P_CODE}</td>
												<td style="width:25%;">${dto.CO_NAME}</td>
												<td style="width:15%;">${dto.P_NAME}</td>
												<td style="width:20%;">${dto.DAY}/${dto.TIME}-${dto.TIME + dto.GRADE - 1}</td>
												<td style="width:10%;">${dto.GRADE}</td>
												<td style="width:15%;"><button class="btn btn-primary pull-left" onclick="content('${dto.CO_CODE}');">조회</button></td>
											</tr>
											</c:forEach>
										</c:if>
										<c:if test="${cnt == 0}" >
											<tr>
												<td colspan="6" align="center">
													수강 중인 강의가 없습니다.
												</td>
											</tr>
										</c:if>
										</tbody>
									</table>
									<script type="text/javascript">
									function content(code) {
										var param = "code=" + code;
										sendRequest(content_callback, "${guest}course_syllabus", "get", param);
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
				<div id="info"></div>
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
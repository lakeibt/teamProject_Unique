<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
	<script src="/uni/resources/js/request.js"></script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>수강과목</h2>
				</div>
			</div>
		</section>
		<!-- 수강과목 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="contact">
				<form class="php-email-form" style="background:rgba(0,0,0,0);">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<table class="table" style="font-size:12px; text-align:center;">
										<thead>
											<tr>
												<th colspan="8">강의 리스트</th>
											</tr>
										</thead>
										<thead>
											
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
												<td style="width:10%;">${dto.p_code}</td>
												<td style="width:25%;">${dto.co_name}</td>
												<td style="width:15%;">${dto.name_1}</td>
												<td style="width:20%;">${dto.co_day}/${dto.le_code}-${dto.grade_1 + dto.le_code - 1}</td>
												<td style="width:10%;">${dto.grade_1}</td>
												<td style="width:15%;"><button type="submit" onclick="content('${dto.co_code}');">조회</button></td>
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
								</div>
							</div>
						</div>
					</div>
				</form> 
				<div id="display">
				
				</div>
				<!-- 강의 계획서 AJAX -->
				<script type="text/javascript">
					function content(code) {
						var param = "code=" + code;
						sendRequest(content_callback, "course_syllabus", "get", param);
					}
					function content_callback() {
						var result = document.getElementById("display");
						if (httpRequest.readyState == 4) {
							if (httpRequest.status == 200) {
								var data = httpRequest.responseText;
								result.innerHTML = data;
							} else result.innerHTML = "Error!";
						} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
					}
				</script>
			</div>
		</section>
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500"></section>
		<!-- End Contact Section -->

		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->
	<%@ include file="../include/footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
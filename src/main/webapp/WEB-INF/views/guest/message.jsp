<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Contact - Moderna Bootstrap Template</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/venobox/venobox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Moderna - v2.0.1
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<style>
.form-control {font-size:12px;}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>쪽지</h2>
				</div>
				<!-- 쪽지 확인 페이지 -->
				<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="container">
					<div class="contact">
						<div class="row">
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<div class="icon-box">
									<form class="php-email-form">
										<table class="table" style="font-size:12px;">
											<thead>
												<tr>
													<th colspan="8">쪽지리스트</th>
												</tr>
											</thead>
											<thead>
												<tr>
													<th style="width:10%;">번호</th>
													<th style="width:60%;">제목</th>
													<th style="width:15%;">발신자</th>
													<th style="width:15%;">발신일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td style="width:10%;">1</td>
													<td style="width:60%;">Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다</td>
													<td style="width:15%;">Mr.Ar</td>
													<td style="width:15%;">2020.09.03</td>
												</tr>
												<tr>
													<td style="width:10%;">2</td>
													<td style="width:60%;">김건축이 알려주는 건축 이야기 학점이 등록되었습니다</td>
													<td style="width:15%;">김건축</td>
													<td style="width:15%;">2020.09.03</td>
												</tr>
												<tr>
													<td style="width:10%;">3</td>
													<td style="width:60%;">하리보는 맛있을까? 2주차 강의가 등록되었습니다</td>
													<td style="width:15%;">이리보</td>
													<td style="width:15%;">2020.09.03</td>
												</tr>
											</tbody>
										</table>
										</form>
									</div>
								</div>
							</div>
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<div class="icon-box">
										<form class="php-email-form">
											<table class="table" style="font-size:12px;">
												<thead>
													<tr>
														<th colspan="8">내용</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>번호</th>
														<td>1</td>
														<th>제목</th>
														<td>Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다</td>
														<th>발신자</th>
														<td>Mr.Ar</td>
														<th>발신일</th>
														<td>2020.09.03</td>
													</tr>
													<tr>
														<td colspan="8" style="display:table-cell; vertical-align: middle;"> <!-- 세로 중앙 정렬이 안 먹힘... -->
															<p class="form-control" style="width:100%; height:400px;">
																Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다.<br><br>동영상 강의를 100% 시청한 경우에 출석이 인정되므로 이점 유의하여 주시기 바랍니다.
															</p>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</section>
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

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script	src="${pageContext.request.contextPath}/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/venobox/venobox.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/counterup/counterup.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
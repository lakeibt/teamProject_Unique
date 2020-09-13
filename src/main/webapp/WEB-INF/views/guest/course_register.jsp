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
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>수강신청</h2>
				</div>
			</div>
		</section>
		<!-- 수강신청 페이지 -->
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
												<th style="width:10%;">학년</th>
												<th style="width:25%;">교과목명</th>
												<th style="width:15%;">담당교수</th>
												<th style="width:20%;">강의시간 및 강의실</th>
												<th style="width:10%;">학점</th>
												<th style="width:15%;">수업계획서</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th style="width:10%;">전필</th>
												<th style="width:10%;">1</th>
												<th style="width:25%;">물리야 놀자!</th>
												<th style="width:15%;">김물리</th>
												<th style="width:20%;">수1-3 / 영301</th>
												<th style="width:10%;">3</th>
												<th style="width:15%;"><button type="submit">조회</button></th>
											</tr>
											<tr>
												<th style="width:10%;">전필</th>
												<th style="width:10%;">1</th>
												<th style="width:25%;">AR의 이야기를 한 번 들어볼래?</th>
												<th style="width:15%;">Mr.Ar</th>
												<th style="width:20%;">월7-9 / 성302</th>
												<th style="width:10%;">3</th>
												<th style="width:15%;"><button type="submit">조회</button></th>
											</tr>
											<tr>
												<th style="width:10%;">전필</th>
												<th style="width:10%;">3</th>
												<th style="width:25%;">안녕!나는 유아이패스라고해!</th>
												<th style="width:15%;">박패스</th>
												<th style="width:20%;">목4-6 / 중403</th>
												<th style="width:10%;">3</th>
												<th style="width:15%;"><button type="submit">조회</button></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<table class="table" style="font-size:12px; text-align:center;">
										<thead>
											<tr>
												<th colspan="8">수강신청 리스트</th>
											</tr>
										</thead>
										<thead>
											<tr>
												<th style="width:10%;">이수구분</th>
												<th style="width:10%;">학년</th>
												<th style="width:25%;">교과목명</th>
												<th style="width:15%;">담당교수</th>
												<th style="width:20%;">강의시간 및 강의실</th>
												<th style="width:10%;">학점</th>
												<th style="width:15%;">수업계획서</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="8" style="display:table-cell; vertical-align: middle;">
													여기는 그리드로 가져와야 할 공간
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</form>
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
	<script src="${pageContext.request.contextPath}/vendor/jquery.easing/jquery.easing.min.js"></script>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Contact - Moderna Bootstrap Template</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${img}favicon.png" rel="icon">
<link href="${img}apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${resources}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${resources}vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="${resources}vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${resources}vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${resources}vendor/venobox/venobox.css" rel="stylesheet">
<link href="${resources}vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${resources}vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${resources}css/style.css" rel="stylesheet">

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
					<h2>내 정보 페이지</h2>
				</div>
			</div>
		</section>
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
			<!-- 학생 메인 페이지 -->
			<section class="services">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 entries">
						<div class="entry">
							<div class="member">
								<div class="member-img">
									<img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:400px;"alt>
								</div>
								<div class="member-info">
									<h4>이름 어쩌고(학번 어쩌고)</h4>
									<span>학과 어쩌고</span>
									<p>블라블라 어쩌고</p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-8 entries">
						<div class="title">취업·공모전 정보</div>
						<div class="icon-box icon-box">
							<table class="table">
								<tbody>
									<tr>
										<th style="width:20%">글번호</th>
										<th style="width:40%">제목</th>
										<th style="width:20%">출처</th>
										<th style="width:20%">작성일자</th>
									</tr>
									<tr>
										<td style="width:10%">1</td>
										<td style="width:60%">어쩌고 출판사 공모전</td>
										<td style="width:20%">뭐뭐출판</td>
										<td style="width:10%">2020.09.01</td>
									</tr>
									<tr>
										<td style="width:10%">2</td>
										<td style="width:60%">저쩌고 기업 공채 모집</td>
										<td style="width:20%">블라기업</td>
										<td style="width:10%">2020.09.01</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-6 entries">
								<div class="title" style="width:70%; float:left;">수강정보</div>
								<select style="width:30%;">
									<option>2019-1</option>
									<option>2019-2</option>
									<option>2020-1</option>
									<option>2020-2</option>
								</select>
								<div class="icon-box icon-box" style="clear:left;">
									<table class="table" style="font-size:14px;">
										<tbody>
											<tr>
												<th style="width:60%">과목명</th>
												<th style="width:30%">담당교수</th>
											</tr>
											<tr>
												<td style="width:60%">쉽고재밌게즐기는건축학</td>
												<td style="width:30%">김건축</td>
											</tr>
											<tr>
												<td style="width:60%">몸으로배우는모션인식AR</td>
												<td style="width:30%">Mr.Ar</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-lg-6 entries">
								<div class="title" style="width:70%; float:left;">학점정보</div>
								<select style="width:30%;">
									<option>2019-1</option>
									<option>2019-2</option>
									<option>2020-1</option>
									<option>2020-2</option>
								</select>
								<div class="icon-box icon-box" style="clear:left;">
									<table class="table" style="font-size:14px;">
										<tbody>
											<tr>
												<th style="width:60%">과목명</th>
												<th style="width:20%">담당교수</th>
												<th style="width:20%">학점</th>
											</tr>
											<tr>
												<td style="width:60%">쉽고재밌게즐기는건축학</td>
												<td style="width:20%">김건축</td>
												<td style="width:20%">A</td>
											</tr>
											<tr>
												<td style="width:60%">몸으로배우는모션인식AR</td>
												<td style="width:20%">Mr.Ar</td>
												<td style="width:20%">C++</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			</section>
		</section>
		<!-- End Contact Section -->
		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->

	<%@ include file="../include/footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="${resources}vendor/jquery/jquery.min.js"></script>
	<script src="${resources}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script	src="${resources}vendor/jquery.easing/jquery.easing.min.js"></script>
	<script	src="${resources}vendor/php-email-form/validate.js"></script>
	<script	src="${resources}vendor/venobox/venobox.min.js"></script>
	<script	src="${resources}vendor/waypoints/jquery.waypoints.min.js"></script>
	<script	src="${resources}vendor/counterup/counterup.min.js"></script>
	<script	src="${resources}vendor/owl.carousel/owl.carousel.min.js"></script>
	<script	src="${resources}vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${resources}vendor/aos/aos.js"></script>
	<!-- Template Main JS File -->
	<script src="${resources}js/main.js"></script>
</body>
</html>
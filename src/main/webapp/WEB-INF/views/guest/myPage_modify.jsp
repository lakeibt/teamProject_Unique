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
					<h2>내 정보 페이지</h2>
				</div>
			</div>
		</section>
		<!-- 학생 정보 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="container">
			<div class="contact">
				<div class="row">
					<div class="col-lg-2 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:150px;"alt>
						</div>
					</div>
					<div class="col-lg-10 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<div class="icon-box">
							<form class="php-email-form">
								<table class="table" style="font-size:12px;">
									<thead>
										<tr>
											<th colspan="8">학생정보</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>이름</th>
											<td><input class="form-control" type="text" value="김학생" readOnly></td>
											<th>학번</th>
											<td><input class="form-control" type="text" value="E20208090" readOnly></td>
											<th>학과</th>
											<td><input class="form-control" type="text" value="무슨무슨과" readOnly></td>
											<th>전공</th>
											<td><input class="form-control" type="text" value="무슨무슨공학" readOnly></td>
										</tr>
										<tr>
											<th>영문이름</th>
											<td><input class="form-control" type="text" value="Kim Haksang" readOnly></td>
											<th>생년월일</th>
											<td><input class="form-control" type="text" value="001225" readOnly></td>
											<th>학적상태</th>
											<td><input class="form-control" type="text" value="재학" readOnly></td>
											<th>입학년도</th>
											<td><input class="form-control" type="text" value="2020.3" readOnly></td>
										</tr>
										<tr>
											<th>집 주소</th>
											<td colspan="3"><input class="form-control" type="text" value="서울 어쩌구 저쩌구 1-234"></td>
											<th>휴대폰번호</th>
											<td><input class="form-control" type="text" value="010-1234-5678"></td>
											<th>이메일</th>
											<td><input class="form-control" type="text" value="khs@naver.com"></td>
										</tr>
										<tr>
											<th>취미/특기</th>
											<td><input class="form-control" type="text" value="잠자기, 놀기, 자기"></td>
											<th>동아리 가입 여부</th>
											<td><input class="form-control" type="text" value="무"></td>
											<th>종교</th>
											<td><input class="form-control" type="text" value="무교"></td>
											<th>상담여부</th>
											<td><input class="form-control" type="text" value="무"></td>
										</tr>
									</tbody>
									<thead>
										<tr>
											<th colspan="8">상담 기초 조사지</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th colspan="2">졸업 후 계획</th>
											<td colspan="6"><input class="form-control" type="text" value="취업"></td>
										</tr>
										<tr>
											<th colspan="2">희망 직종(3가지)</th>
											<td colspan="2"><input class="form-control" type="text" value="작가"></td>
											<td colspan="2"><input class="form-control" type="text" value="개발자"></td>
											<td colspan="2"><input class="form-control" type="text" value="PD"></td>
										</tr>
										<tr>
											<th colspan="2">학업 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">진로 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">학교 적응 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">대인 관계 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">학생생활상담소에 요청하고 싶은 프로그램이 있다면?</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
									</tbody>
								</table>
								
									<div class="text-center">
										<button class="php-email-form" type="submit">
											<font style="vertical-align:inherit;">
												<font style="vertical-align:inherit;">정보수정</font>
											</font>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
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
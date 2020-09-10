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
					<h2>테스트용 회원가입</h2>
				</div>
				<!-- 성적조회 페이지 -->
				<section class="services" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="contact">
						<form action = "${resources}guest/testSignInPro" method = "post" name = "signform" style = "margin : 0 auto; width : 500px;" onsubmit = "return signInCheck()">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type = "hidden" name = "hiddenId" value = "0">
							<fieldset>
								<legend> 회원가입 </legend>
								<table id = "sign_table">
									<tr>
										<th align = "center"><label for = "userID"><b style = "color:red;">* </b>아이디 </label></th>
										<td>
											<input type = "text" name = "userID" size = "26" style = "height:30px;" placeholder = "공백없이 입력">
										</td>
									</tr>
									<tr>
										<th align = "center"><label for = "userPWD"><b style = "color:red;">* </b>비밀번호 </label></th>
										<td><input type = "password" name = "userPWD" size = "40" style = "height:30px;" placeholder = "비밀번호 입력"></td>
									</tr>
									<tr>
										<th align = "center"><label for = "userName"><b style = "color:red;">* </b>이름 </label></th>
										<td><input type = "text" name = "userName" size = "40" style = "height:30px;" placeholder = "이름 입력"></td>
									</tr>
									
									<tr>
										<th> 사용권한 </th>
										<td>
											<select name="authority">
												<option value="ROLE_STUDENT">학생</option>
												<option value="ROLE_PROFESSOR">교수</option>
												<option value="ROLE_ADMIN">관리자</option>
											</select>
										</td>
									</tr>
									<tr height = 70px>
										<td colspan = "2" align = "center">
											<br>
											<input type = "submit" style = "font-size:15px; color:white; background:#333; width:90%; height:30px; margin:3px;" value = "회원가입">
											<input type = "button" style = "font-size:15px; color:white; background:#333; width:90%; height:30px; margin:3px;" value = "가입취소">
										</td>
									</tr>
								</table>
							</fieldset>
						</form>
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
	<script src="${resources}vendor/jquery/jquery.min.js"></script>
	<script src="${resources}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${resources}vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${resources}vendor/php-email-form/validate.js"></script>
	<script src="${resources}vendor/venobox/venobox.min.js"></script>
	<script src="${resources}vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="${resources}vendor/counterup/counterup.min.js"></script>
	<script src="${resources}vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="${resources}vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${resources}vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="${resources}js/main.js"></script>

</body>
</html>
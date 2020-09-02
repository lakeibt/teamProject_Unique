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
<<<<<<< HEAD:src/main/webapp/WEB-INF/views/guest/login.jsp

  <%@ include file = "../include/header.jsp" %>

  <main id="main">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>메인 페이지</h2>
          
        </div>

      </div>
    </section><!-- End Contact Section -->
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      
      	<div style = "width:30%; margin:0 auto">
      		<b style = "font-size: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통합로그인</b>
      	</div>
      <div class = "container">
      	<p style = "font-weight: normal;"><img src = "${pageContext.request.contextPath}/img/phone.png" style = "width:30px;">시스템 문의처</p>
      	<p style = "color:#003cbc; font-size:30px; font-weight: normal;"><img src = "${pageContext.request.contextPath}/img/lock2.png" style = "width:30px;">LOGIN</p>
      	<hr width = "100%">
      	<form action = "${pageContext.request.contextPath}/guest/loginPro" method = "post">
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<input type = "text" name = "userid" placeholder = "학번/교직원번호" style = "width:100%; height:50px; margin:3px;">
      	<input type = "password" name = "userpwd" placeholder = "비밀번호" style = "width:100%; height:50px; margin:3px;">
      	<table style = "width:100%; margin-top:10px; margin-bottom:30px;">
      		<tr>
      			<td>
      				<input type = "checkbox">학번/교직원번호 저장
      			</td>
      			<td style = "float:right; text-decoration: none;">
      				<a href = "#" style = "color:black;">비밀번호 초기화</a>
      			</td>
      		</tr>
      		<tr>
      			<td colspan = "2" style = "text-align:right; text-decoration: none;">
      				<a href = "#" style = "color:black;">학번/교직원번호 조회</a>
      			</td>
      		</tr>
      		<tr>
      			<td colspan = "2" style = "text-align:right; text-decoration: none;">
      				<a href = "#" style = "color:black;">로그인/로그아웃 요구사항</a>
      			</td>
      		</tr>
      	</table>
      	<input type = "submit" value = "로그인" style = "width:100%; background-color: #003cbc; margin:0 auto; color: white; height:50px;">
      	</form>
      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
  </main><!-- End #main -->

  <%@ include file = "../include/footer.jsp" %>

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

=======
	<%@ include file="../include/header.jsp"%>
	<main id="main">

		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>시간표 조회</h2>
				</div>
				<!-- 시간표 조회 -->
				<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="container">
						<table class="table" style="border:1px solid lightgrey; text-align:center; font-size:13px;" rules="all">
							<tbody>
								<tr style="background-color:#1e4356; color:white">
									<td style="width:15%">교시/시간</td>
									<td style="width:17%">월요일</td>
									<td style="width:17%">화요일</td>
									<td style="width:17%">수요일</td>
									<td style="width:17%">목요일</td>
									<td style="width:17%">금요일</td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">1교시<br>(09:00-10:00)</td>
									<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
									<td></td>
									<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">2교시<br>(10:00-11:00)</td>
									<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
									<td></td>
									<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">3교시<br>(11:00-12:00)</td>
									<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
									<td></td>
									<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">4교시<br>(12:00-13:00)</td>
									<td></td>
									<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">5교시<br>(13:00-14:00)</td>
									<td></td>
									<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">6교시<br>(14:00-15:00)</td>
									<td></td>
									<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">7교시<br>(15:00-16:00)</td>
									<td></td>
									<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
									<td></td>
									<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
									<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">8교시<br>(16:00-17:00)</td>
									<td></td>
									<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
									<td></td>
									<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
									<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
								</tr>
								<tr>
									<td style="background-color:#1e4356; color:white">9교시<br>(17:00-18:00)</td>
									<td></td>
									<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
									<td></td>
									<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
									<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
								</tr>
							</tbody>
						</table>
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
>>>>>>> 9537fbc5a9096059de14510ed18d8c209855edc0:src/main/webapp/WEB-INF/views/guest/main6.jsp
</body>
</html>
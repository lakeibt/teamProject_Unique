<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
      	<form action = "guest" method = "post">
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

</body>

</html>
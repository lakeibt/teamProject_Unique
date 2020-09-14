<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">

		<!-- ======= Contact Section ======= -->
	<section class="breadcrumbs">
		<div class="container">
			<div class="d-flex justify-content-between align-items-center">
				<h2>USB > 통합로그인</h2>
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>Contact</li>
				</ol>
			</div>
		</div>
	</section><!-- End Contact Section -->
    
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      
      	<div style = "width:30%; margin:0 auto">
      		<b style = "font-size: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통합로그인</b>
      	</div>
      <div class = "container">
      	<p style = "font-weight: normal;"><img src = "${img}phone.png" style = "width:30px;">시스템 문의처</p>
      	<p style = "color:#003cbc; font-size:30px; font-weight: normal;"><img src = "${img}lock2.png" style = "width:30px;">LOGIN</p>
      	<hr width = "100%">
      	<form action = "${path}guest/loginPro" method = "post">
      	<input type = "hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
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
	</main>
	<!-- End #main -->

	<%@ include file="../include/footer.jsp"%>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
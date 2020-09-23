<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">

		<!-- ======= Contact Section ======= -->
	<section class="breadcrumbs">
		<div class="container">
			<div class="d-flex justify-content-between align-items-center">
				<h2>접속 거부 페이지</h2>
				<ol>
					<li><a href="${guest}main">Home</a></li>
					<li>Contact</li>
				</ol>
			</div>
		</div>
	</section><!-- End Contact Section -->
    
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
    	<div style = "width:50%; margin:0 auto;">
	      	<img src = "${img}sample/authority.jpg" style = "width:100%;"/>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<head>
	<link href="${assets}img/favicon.png" rel="icon">
  <link href="${assets}img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${assets}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${assets}vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${assets}vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${assets}vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${assets}vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${assets}vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${assets}css/style.css" rel="stylesheet">
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<body>

	<%@ include file="../include/header.jsp"%>
	<header id="header" style = "height:100%;">
    <div class="d-flex flex-column">

      <div class="profile">
        <img src="${assets}img/profile-img.jpg" alt="" class="img-fluid rounded-circle">
        <h1 class="text-light"><a href="index.html">Alex Smith</a></h1>
        <div class="social-links mt-3 text-center">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div>

      <nav class="nav-menu">
        <ul>
          <li><a href="index.html"><i class="bx bx-home"></i> <span>Home</span></a></li>
          <li><a href="#about"><i class="bx bx-user"></i> <span>About</span></a></li>
          <li><a href="#resume"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
          <li><a href="#portfolio"><i class="bx bx-book-content"></i> Portfolio</a></li>
          <li><a href="#services"><i class="bx bx-server"></i> Services</a></li>
          <li><a href="#contact"><i class="bx bx-envelope"></i> Contact</a></li>

        </ul>
      </nav><!-- .nav-menu -->
      <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

    </div>
  </header><!-- End Header -->
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>성적조회</h2>
				</div>
			</div>
		</section>
		<!-- 성적조회 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="contact">
				<form class="php-email-form" style="background:rgba(0,0,0,0);">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<table class="table" style="font-size:13px;">
										
										<tr>
											<td colspan="6">
												<select id="select1" class="form-control" style="width:30%; float:right;" onchange="content()">
															<option selected disabled>학기를 선택하세요</option>
															<option value="1">1학기</option>
															<option value="2">2학기</option>
												</select>
												<select class="form-control" style="width:30%; float:right;">
													<option>2020</option>		
												</select>
											</td>
										</tr>
										
										<tr>
											<th>학과</th>
											<td><input class="form-control" type="text" value="${vo.m_code}" readOnly></td>
											<th>학번</th>
											<td><input class="form-control" type="text" value="${vo.entrancedate}" readOnly></td>
											<th>이름</th>
											<td><input class="form-control" type="text" value="${vo.name}" readOnly></td>
										</tr>
									</table>
									<div id="info">
								
									</div>
								</div>
							</div>
							<script type="text/javascript">
	   
							function content  () {
		                           var yourSelect = document.getElementById("select1");
		                           console.log(yourSelect);
		                           var value = yourSelect.options[yourSelect.selectedIndex].value;
		                           console.log(value);
		                           var param = "value=" + value;
		                           
		                           sendRequest(content_callback,"${guest}scoreInfo", "get", param);
		                           console.log(param);
		                        }
		                        function content_callback() {
		                           var result = document.getElementById("info");
		                           if(httpRequest.readyState == 4) { 
		                              if(httpRequest.status == 200) { 
		                                 
		                              var data = httpRequest.responseText;
		                              result.innerHTML = data;
		                              
		                              } else result.innerHTML = "Error!";
		                           } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
		                        }
							</script>
							
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
	<%-- <%@ include file="../include/footer.jsp"%> --%>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="${assets}vendor/jquery/jquery.min.js"></script>
  <script src="${assets}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${assets}vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${assets}vendor/php-email-form/validate.js"></script>
  <script src="${assets}vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${assets}vendor/counterup/counterup.min.js"></script>
  <script src="${assets}vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${assets}vendor/venobox/venobox.min.js"></script>
  <script src="${assets}vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${assets}vendor/typed.js/typed.min.js"></script>
  <script src="${assets}vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${assets}js/main.js"></script>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
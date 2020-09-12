<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  <%@ include file = "../include/professor_header.jsp" %>
  <main id="main">
    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <div class="d-flex justify-content-between align-items-center">
          <h4>홈</h4>
        </div>
      </div>
    </section><!-- End Contact Section -->
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="padding:30px 0px">
 		<section class="services"  style="padding:0">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 entries">
						<div class="entry">
							<div class="member">
								<div class="member-info">
								<div class="icon-box icon-box">
									<img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:50%; align:center">
									<br><br>
									<table class="table" style="font-size:14px; width:100%">
											<tr>
												<td style="width:30%;">이름</td>
												<td style="width:60%">김건축</td>
											</tr>
											<tr>
												<td style="width:30%;">교번</td>
												<td style="width:60%">20202020</td>
											</tr>
											<tr>
												<td style="width:30%;">학과</td>
												<td style="width:60%">건축학과</td>
											</tr>
											<tr>
												<td style="width:30%;">직책</td>
												<td style="width:60%">교수</td>
											</tr>											
									</table>
								</div>
							</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-8 entries">
						<div class="title">공지사항</div>
						<div class="icon-box icon-box">
							<table class="table">
								<tbody>
									<tr>
										<th style="width:20%">글번호</th>
										<th style="width:50%">제목</th>
										<th style="width:30%">작성일자</th>
									</tr>
									<tr>
										<td style="width:20%">3</td>
										<td style="width:50%">제목3</td>
										<td style="width:30%">작성일자</td>
									</tr>
									<tr>
										<td style="width:20%">2</td>
										<td style="width:50%">제목2</td>
										<td style="width:30%">작성일자</td>
									</tr>
									<tr>
										<td style="width:20%">1</td>
										<td style="width:50%">제목1</td>
										<td style="width:30%">작성일자</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="title">강의현황</div>
						<div class="icon-box icon-box">
							<table class="table">
								<tbody>
									<tr>
										<th style="width:10%">요일</th>
										<th style="width:20%">교시</th>
										<th style="width:50%">강의명</th>
										<th style="width:20%">인원</th>
									</tr>
									<tr>
										<td style="width:10%">월</td>
										<td style="width:20%">1,2</td>
										<td style="width:50%">건축학개론</td>
										<td style="width:20%">25/30</td>
									</tr>
									<tr>
										<td style="width:10%">화</td>
										<td style="width:20%">4,5</td>
										<td style="width:50%">회계원리</td>
										<td style="width:20%">20/30</td>
									</tr>
									<tr>
										<td style="width:10%">수</td>
										<td style="width:20%">4,5</td>
										<td style="width:50%">재무관리</td>
										<td style="width:20%">25/30</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</div>
		</section>     
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

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
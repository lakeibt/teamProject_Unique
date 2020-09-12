<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

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
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${resources}vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${resources}vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="${resources}vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${resources}vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${resources}vendor/venobox/venobox.css" rel="stylesheet">
<link href="${resources}vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="${resources}vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${resources}css/style.css" rel="stylesheet">
<link href="${resources}css/professor.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Moderna - v2.0.1
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>
	$(document).ready(function() {
		$(".coures_plan_title_button1").click(function() {
			var submenu = $("#course_plan_article");
			submenu.slideDown();
			$('.coures_plan_title_button1').hide();
			$('.coures_plan_title_button2').show();
		});
	});

	$(document).ready(function() {
		$(".coures_plan_title_button2").click(function() {
			var submenu = $("#course_plan_article");
			submenu.slideUp();
			$('.coures_plan_title_button2').hide();
			$('.coures_plan_title_button1').show();
		});
	});

	$(document).ready(function() {$(".coures_plan_plus_button").click(
		function() {
			var addtr = '<tr class="plan_tr">'
					+ '	<td class="coures_plan_minus_button_td">'
					+ '		<button onclick="deleteTr(this);" class="coures_plan_minus_button">'
					+ '    	<i class="fas fa-minus"></i>'
					+ '		</button>'
					+ '	</td>'
					+ '	<th class="coures_plan_weeks_th"><input type="text" placeholder="주차"></th>'
					+ '	<td><input type="text" placeholder="강의내용"></td>'
					+ '</tr>';
			var trHtml = $('.plan_tr:last');

			trHtml.after(addtr);

		});
	});

	function deleteTr(obj) {
		var tr = $(obj).parent().parent();

		tr.remove();
	}
</script>
</head>

<body>

	<%@ include file="../include/professor_header.jsp"%>

	<main id="main">

		<!-- ======= Blog Section ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>성적관리</h2>

					<ol>
						<li><a href="${professor}main">홈</a></li>
						<li>성적관리</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Blog Section -->

		<!-- ======= Blog Section ======= -->
		<section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out"
			data-aos-duration="500">


			<div class="container">

				<select class="custom-select" style="width: 150px">
					<option selected>전체</option>
					<option value="1">2020-2학기</option>
					<option value="2">2020-1학기</option>
				</select> <br>
				<br>

				<div class="row">

					<div class="col-lg-12 entries">

						<article class="entry">

							<button class="coures_plan_title_button1">
								<i class="fas fa-angle-down"></i>
							</button>
							<button class="coures_plan_title_button2">
								<i class="fas fa-angle-up"></i>
							</button>

							<h2 class="entry-title">
								<a href="#">강의 계획서</a>
							</h2>
							<article class="entry" id="course_plan_article">
								<div class="course_plan">
									<table class="table"
										style="font-size: 15px; text-align: center;">
										<tr>
											<th>강의설명</th>
										</tr>
										<tr>
											<td colspan="8"
												style="display: table-cell; vertical-align: middle;"><textarea
													style="width: 100%; height: 250px;"></textarea></td>
										</tr>
										<tr>
											<th>주차별 강의내용
												<button class="coures_plan_plus_button">
													<i class="fas fa-plus"></i>
												</button>
											</th>
										</tr>
										<tr>
											<td>
												<table class="table" style="border: 1px solid lightgrey; text-align: center; font-size: 13px;" rules="all">
													<tr class="plan_tr">
														<td class="coures_plan_minus_button_td"></td>
														<th class="coures_plan_weeks_th"><input type="text"
															placeholder="주차"></th>
														<td><input type="text" placeholder="강의내용"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tfoot>
											<tr>
												<td style='border: none;'>
													<button class="btn btn-outline-secondary">취소</button>
													<button class="btn btn-outline-info">저장</button>
												</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</article>
						</article>

						<article class="entry">

							<h2 class="entry-title">
								<a href="#">수업목록</a>
							</h2>

							<article class="entry">

								<h2 class="entry-title">
									<a href="#">1주차</a>
								</h2>

								<div class="entry-content">
									<table class="table" style="font-size: 15px; text-align: center;">
										<tr>
											<th>수업목록</th>
										</tr>
										<tr>
											<td>
												<table class="table" style="border: 1px solid lightgrey; text-align: center; font-size: 13px;" rules="all">
													<tr>
														<th>비고</th>
														<th>제목</th>
														<th>분류</th>
													</tr>
													<tr>
														<td class="coures_plan_minus_button_td">
															<button onclick="deleteTr(this);" class="coures_plan_minus_button">
														    	<i class="fas fa-minus"></i>
															</button>
														</td>
														<td>1강. 수업제목</td>
														<td>수업</td>
													</tr>
													<tr>
														<td class="coures_plan_minus_button_td">
															<button onclick="deleteTr(this);" class="coures_plan_minus_button">
														    	<i class="fas fa-minus"></i>
															</button>
														</td>
														<td>1강. 과제</td>
														<td>과제</td>
													</tr>
												</table>
											</td>
										</tr>
										<tfoot>
											<tr>
												<td style='border: none;'>
													<button class="btn btn-outline-info">추가</button>
												</td>
											</tr>
										</tfoot>
									</table>
								</div>

							</article>
							<!-- End blog entry -->
						</article>
						<!-- End blog entry -->
					</div>
					<!-- End blog entries list -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container -->
		</section>
		<!-- End Blog Section -->

	</main>
	<!-- End #main -->

	<%@ include file="../include/professor_footer.jsp"%>

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
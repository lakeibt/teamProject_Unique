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
					<h2>수강과목</h2>
				</div>
				<!-- 수강과목 페이지 -->
				<section class="services" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="contact">
						<form class="php-email-form" style="background:rgba(0,0,0,0); box-shadow:none;">
							<div class="container">
								<div class="row">
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<table class="table" style="font-size:12px; text-align:center;">
												<thead>
													<tr>
														<th colspan="8">강의 리스트</th>
													</tr>
												</thead>
												<thead>
													<tr>
														<th style="width:10%;">이수구분</th>
														<th style="width:10%;">학년</th>
														<th style="width:25%;">교과목명</th>
														<th style="width:15%;">담당교수</th>
														<th style="width:20%;">강의시간 및 강의실</th>
														<th style="width:10%;">학점</th>
														<th style="width:15%;">수업계획서</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th style="width:10%;">전필</th>
														<th style="width:10%;">1</th>
														<th style="width:25%;">물리야 놀자!</th>
														<th style="width:15%;">김물리</th>
														<th style="width:20%;">수1-3 / 영301</th>
														<th style="width:10%;">3</th>
														<th style="width:15%;"><button type="submit">조회</button></th>
													</tr>
													<tr>
														<th style="width:10%;">전필</th>
														<th style="width:10%;">1</th>
														<th style="width:25%;">AR의 이야기를 한 번 들어볼래?</th>
														<th style="width:15%;">Mr.Ar</th>
														<th style="width:20%;">월7-9 / 성302</th>
														<th style="width:10%;">3</th>
														<th style="width:15%;"><button type="submit">조회</button></th>
													</tr>
													<tr>
														<th style="width:10%;">전필</th>
														<th style="width:10%;">3</th>
														<th style="width:25%;">안녕!나는 유아이패스라고해!</th>
														<th style="width:15%;">박패스</th>
														<th style="width:20%;">목4-6 / 중403</th>
														<th style="width:10%;">3</th>
														<th style="width:15%;"><button type="submit">조회</button></th>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<table class="table" style="font-size:12px; text-align:center;">
												<thead>
													<tr>
														<th colspan="8">강의 계획서</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>교과목명</th>
														<td><input class="form-control" type="text" value="물리야 놀자!" readOnly></td>
														<th>담당교수</th>
														<td><input class="form-control" type="text" value="김물리" readOnly></td>
														<th>교수연락처</th>
														<td><input class="form-control" type="text" value="010-1234-1234" readOnly></td>
														<!-- 메세지 이미지는 쪽지 보내기로 사용하기 위함 / 추후 이미지 수정 -->
														<th><a href="#"><img style="width:50px; height:40px;"src="https://image.winudf.com/v2/image/YXBwaW52ZW50b3IuYWlfbHloMjMxNTIzMTUuZDA4MDhfaWNvbl8xNTM0MzAwODY0XzA3NA/icon.png?w=170&fakeurl=1"></a></th>
													</tr>
													<tr>
														<td colspan="8" style="display:table-cell; vertical-align: middle;">
															<div class="form-control" style="width:100%; height:100%; text-align:left; font-size:13px;">
																강의 목표 : 물리에 대한 이해도를 높이고 입문 단계에서 심화 단계까지의 물리 과정을 익혀 물리 전공자의 기반을 다지기 위해 강의 수료를 목적으로 한다. <br>
																<br>
																[학점 기준]<br>
																출석 : 10%<br>
																시험(중간) : 30%<br>
																시험(기말) : 30%<br>
																과제(개별 레포트/프레젠테이션) : 10%<br>
																과제(팀 프로젝트) : 20%<br><br>
																<table class="table" style="border:1px solid lightgrey; text-align:center; font-size:13px;" rules="all">
																	<tbody>
																		<tr>
																			<th>1주차</th>
																			<td>전기 - 전기와 자기 현상의 발견</td>
																		</tr>
																		<tr>
																			<th>2주차</th>
																			<td>전기 - 옴의 법칙</td>
																		</tr>
																		<tr>
																			<th>3주차</th>
																			<td>전기 - 전기 저항/비저항</td>
																		</tr>
																		<tr>
																			<th>4주차</th>
																			<td>자기 - 외르스테드의 위대한 발명</td>
																		</tr>
																		<tr>
																			<th>5주차</th>
																			<td>자기 - 물질이 자성을 띠는 이유</td>
																		</tr>
																		<tr>
																			<th>6주차</th>
																			<td>자기 - 렌츠의 법칙</td>
																		</tr>
																		<tr>
																			<th>7주차</th>
																			<td>고체와 반도체의 전기적 성질 - 반도체에는 어떤 전하 운반자들이 있을까?</td>
																		</tr>
																		<tr>
																			<th>8주차</th>
																			<td>고체와 반도체의 전기적 성질 - 불순물 반도체 : n형/p형 반도체</td>
																		</tr>
																		<tr>
																			<th>9주차</th>
																			<td>고체와 반도체의 전기적 성질 - p-n 접합 다이오드</td>
																		</tr>
																		<tr>
																			<th>10주차</th>
																			<td>빛은 입자인가, 파동인가? - 반사</td>
																		</tr>
																		<tr>
																			<th>11주차</th>
																			<td>빛은 입자인가, 파동인가? - 굴절에 의한 현상</td>
																		</tr>
																		<tr>
																			<th>12주차</th>
																			<td>빛은 입자인가, 파동인가? - 변위와 진폭</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
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
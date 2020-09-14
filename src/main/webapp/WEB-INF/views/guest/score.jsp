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
												<select class="form-control" style="width:30%; float:right;">
													<option>2019-1</option>
													<option>2019-2</option>
													<option>2020-1</option>
													<option>2020-2</option>
												</select>
											</td>
										</tr>
										<tr>
											<th>학과</th>
											<td><input class="form-control" type="text" value="소프트웨어학과" readOnly></td>
											<th>학번</th>
											<td><input class="form-control" type="text" value="S20200123" readOnly></td>
											<th>이름</th>
											<td><input class="form-control" type="text" value="이학생" readOnly></td>
										</tr>
									</table>
								</div>
							</div>
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<table class="table" style="font-size:13px;">
										<thead>
											<tr>
												<th style="width:10%;">이수구분</th>
												<th style="width:10%;">학년</th>
												<th style="width:25%;">교과목명</th>
												<th style="width:15%;">담당교수</th>
												<th style="width:10%;">학점</th>
												<th style="width:10%;">성적</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td style="width:10%;">전필</td>
												<td style="width:10%;">1</td>
												<td style="width:25%;">물리야 놀자!</td>
												<td style="width:15%;">김물리</td>
												<td style="width:10%;">3</td>
												<td style="width:10%;">A+</td>
											</tr>
											<tr>
												<td style="width:10%;">전필</td>
												<td style="width:10%;">1</td>
												<td style="width:25%;">AR의 이야기를 한 번 들어볼래?</td>
												<td style="width:15%;">Mr.Ar</td>
												<td style="width:10%;">3</td>
												<td style="width:10%;">C</td>
											</tr>
											<tr>
												<td style="width:10%;">전필</td>
												<td style="width:10%;">3</td>
												<td style="width:25%;">안녕!나는 유아이패스라고해!</td>
												<td style="width:15%;">박패스</td>
												<td style="width:10%;">3</td>
												<td style="width:10%;">F</td>
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
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500"></section>
		<!-- End Contact Section -->

		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->
	<%@ include file="../include/footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
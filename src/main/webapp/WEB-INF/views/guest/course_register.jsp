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
					<h2>수강신청</h2>
				</div>
			</div>
		</section>
		<!-- 수강신청 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="contact">
				<form class="php-email-form" style="background:rgba(0,0,0,0);">
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
												<th colspan="8">수강신청 리스트</th>
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
												<td colspan="8" style="display:table-cell; vertical-align: middle;">
													여기는 그리드로 가져와야 할 공간
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
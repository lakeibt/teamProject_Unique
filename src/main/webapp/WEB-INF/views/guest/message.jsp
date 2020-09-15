<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<style>
.form-control {font-size:12px;}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>쪽지</h2>
				</div>
			</div>
		</section>
		<!-- 쪽지 확인 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="container">
			<div class="contact">
				<div class="row">
					<div class="col-lg-12 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<div class="icon-box">
							<form class="php-email-form">
								<table class="table" style="font-size:12px;">
									<thead>
										<tr>
											<th colspan="8">쪽지리스트</th>
										</tr>
									</thead>
									<thead>
										<tr>
											<th style="width:10%;">번호</th>
											<th style="width:60%;">제목</th>
											<th style="width:15%;">발신자</th>
											<th style="width:15%;">발신일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td style="width:10%;">1</td>
											<td style="width:60%;">Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다</td>
											<td style="width:15%;">Mr.Ar</td>
											<td style="width:15%;">2020.09.03</td>
										</tr>
										<tr>
											<td style="width:10%;">2</td>
											<td style="width:60%;">김건축이 알려주는 건축 이야기 학점이 등록되었습니다</td>
											<td style="width:15%;">김건축</td>
											<td style="width:15%;">2020.09.03</td>
										</tr>
										<tr>
											<td style="width:10%;">3</td>
											<td style="width:60%;">하리보는 맛있을까? 2주차 강의가 등록되었습니다</td>
											<td style="width:15%;">이리보</td>
											<td style="width:15%;">2020.09.03</td>
										</tr>
									</tbody>
								</table>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-12 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<div class="icon-box">
								<form class="php-email-form">
									<table class="table" style="font-size:12px;">
										<thead>
											<tr>
												<th colspan="8">내용</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>번호</th>
												<td>1</td>
												<th>제목</th>
												<td>Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다</td>
												<th>발신자</th>
												<td>Mr.Ar</td>
												<th>발신일</th>
												<td>2020.09.03</td>
											</tr>
											<tr>
												<td colspan="8" style="display:table-cell; vertical-align: middle;"> <!-- 세로 중앙 정렬이 안 먹힘... -->
													<p class="form-control" style="width:100%; height:400px;">
														Mr.Ar과 함께하는 AR이야기 1주차 강의가 등록되었습니다.<br><br>동영상 강의를 100% 시청한 경우에 출석이 인정되므로 이점 유의하여 주시기 바랍니다.
													</p>
												</td>
											</tr>
										</tbody>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
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
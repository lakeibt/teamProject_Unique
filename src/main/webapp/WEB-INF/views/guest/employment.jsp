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
					<h2>취업지원 공고페이지</h2>
				</div>
			</div>
		</section>
		<!-- 취업지원 공고페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="service-details" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="container">
				<div style="height:40px;"></div>
				<div class="row">
					<div class="card" style="width:33%; background:rgba(0,0,0,0);">
						<div class="card-image"></div>
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">정규직채용</a>
							</h5>
						</div>
					</div>
					<div class="card" class="card" style="width:33%; background:rgba(0,0,0,0);">
						<div class="card-image"></div>									
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">인턴채용</a>
							</h5>
						</div>
					</div>
					<div class="card" class="card" style="width:33%; background:rgba(0,0,0,0);">
						<div class="card-image"></div>									
						<div class="card-body">
							<h5 class="card-title">
								<a href="#">공모전</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="services">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<table class="table" style="font-size:12px;">
									<thead>
										<tr>
											<th colspan="4">정규직채용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th style="10%">번호</th>
											<th style="60%">제목</th>
											<th style="20%">기업/기관</th>
											<th style="10%">공고일</th>
										</tr>
										<tr>
											<td style="10%">1</td>
											<td style="60%">(주)일등 상반기 정규직 채용 공고 안내</td>
											<td style="20%">(주)일등</td>
											<td style="10%">2020.09.03</td>
										</tr>
										<tr>
											<td style="10%">2</td>
											<td style="60%">하나둘셋 나라 정규직 채용 공고</td>
											<td style="20%">하나둘셋 나라</td>
											<td style="10%">2020.09.03</td>
										</tr>
										<tr>
											<td style="10%">3</td>
											<td style="60%">정규직/인턴 채용 공고 안내 - 별빛달빛</td>
											<td style="20%">별빛달빛</td>
											<td style="10%">2020.09.03</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-12 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
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
											<td>(주)일등 상반기 정규직 채용 공고 안내</td>
											<th>기업/기관</th>
											<td>(주)일등</td>
											<th>발신일</th>
											<td>2020.09.03</td>
										</tr>
										<tr>
											<td colspan="8" style="display:table-cell; vertical-align: middle;">
												<p class="form-control" style="width:100%; height:400px;">
												내용 어쩌고 저쩌고 와랄랄라 <br><br><br>
												
												<a href="#">더보기 ></a>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
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
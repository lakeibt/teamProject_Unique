<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<!DOCTYPE html>
<html>

<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/professor_bootstrap.jsp" %>
	<link href="${resources}css/professor.css" rel="stylesheet">

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
					<h2>수업관리</h2>

					<ol>
						<li><a href="${professor}main">홈</a></li>
						<li>수업관리</li>
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
								
								<div class="entry-content"><a href="http://localhost:3000/"></a>
								
								</div>

								<!-- <div class="entry-content">
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
								</div> -->

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
<%@ include file = "../bootstrap/professor_bootstrap_js.jsp" %>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/student_bootstrap.jsp" %>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">

		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>시간표 조회</h2>
				</div>
			</div>
		</section>
		<!-- 시간표 조회 -->
		<%@ include file="../include/student_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="container">
				<table class="table" style="border:1px solid lightgrey; text-align:center; font-size:13px;" rules="all">
					<tbody>
						<tr style="background-color:#1e4356; color:white">
							<td style="width:15%">교시/시간</td>
							<td style="width:17%">월요일</td>
							<td style="width:17%">화요일</td>
							<td style="width:17%">수요일</td>
							<td style="width:17%">목요일</td>
							<td style="width:17%">금요일</td>
						</tr>
						
						<c:forEach var="dto" items="${dtos}" varStatus="status">
							<c:if test="${status.index + 1 == dto.getSt_code()}">
								<tr>
									<td style="background-color:#1e4356; color:white">${status.index+1}교시<br>${status.index+1+8}:00-${status.index+1+9}:00</td>
								</tr>
							</c:if>
						</c:forEach>
							
					</tbody>
				</table>
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
<%@ include file = "../bootstrap/student_bootstrap_js.jsp" %>
</body>
</html>
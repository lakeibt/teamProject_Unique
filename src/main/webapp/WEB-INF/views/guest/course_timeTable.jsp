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
					<h2>시간표 조회</h2>
				</div>
			</div>
		</section>
		<!-- 시간표 조회 -->
		<%@ include file="../include/guest_left.jsp"%>
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
						<tr>
							<td style="background-color:#1e4356; color:white">1교시<br>(09:00-10:00)</td>
							<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
							<td></td>
							<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">2교시<br>(10:00-11:00)</td>
							<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
							<td></td>
							<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">3교시<br>(11:00-12:00)</td>
							<td style="background-color:lightblue;">즐겁게 배우는 물리화학<br>박물리<br>중301</td>
							<td></td>
							<td style="background-color:lightblue;">Mr.Ar의 AR이야기<br>Mr.Ar<br>영103</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">4교시<br>(12:00-13:00)</td>
							<td></td>
							<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">5교시<br>(13:00-14:00)</td>
							<td></td>
							<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">6교시<br>(14:00-15:00)</td>
							<td></td>
							<td style="background-color:lightblue;">안녕! AR!<br>Mr.Ar<br>영201</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">7교시<br>(15:00-16:00)</td>
							<td></td>
							<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
							<td></td>
							<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
							<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">8교시<br>(16:00-17:00)</td>
							<td></td>
							<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
							<td></td>
							<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
							<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
						</tr>
						<tr>
							<td style="background-color:#1e4356; color:white">9교시<br>(17:00-18:00)</td>
							<td></td>
							<td style="background-color:lightblue;">김건축과 함께하는 건축이야기<br>김건축<br>성301</td>
							<td></td>
							<td style="background-color:lightblue;">유아이패스 입문+활용<br>최패스<br>성204</td>
							<td style="background-color:lightblue;">하리보는 진짜 맛있을까?<br>이하리보<br>영401</td>
						</tr>
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
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
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
<link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/venobox/venobox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Moderna - v2.0.1
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<style>
.form-control {font-size:12px;}

.btn {

    width:100px;

    background-color: #68A4C4;

    border: none;

    color:#fff;

    padding: 15px 0;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 15px;

    cursor: pointer;

}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>내 정보 페이지</h2>
				</div>
				<!-- 학생 정보 페이지 -->
				<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="container">
					<div class="contact">
						<div class="row">
							<div class="col-lg-2 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:150px;"alt>
								</div>
							</div>
							<div class="col-lg-10 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<div class="icon-box">
									<form class="php-email-form">
										<table class="table" style="font-size:12px;">
											<thead>
												<tr>
													<th colspan="8">학생정보</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th style="width: 10%;">이름</th>
													<td style="width: 15%;"><input class="form-control" type="text" value="김학생" readOnly></td>
													<th style="width: 8%;">영문이름</th>
													<td colspan="2" style="width: 15%;"><input class="form-control" type="text" value="Kim Haksang" readOnly></td>
													<th style="width: 10%;">생년월일</th>
													<td colspan="2" style="width: 15%;"><input class="form-control" type="text" value="001225" readOnly></td>
												</tr>
												<tr>
													<th>학번</th>
													<td><input class="form-control" type="text" value="E20208090" readOnly></td>
													<th>학과</th>
													<td colspan="2"><input class="form-control" type="text" value="무슨무슨과" readOnly></td>
													<th>전공</th>
													<td colspan="2"><input class="form-control" type="text" value="무슨무슨공학" readOnly></td>
												</tr>
												<tr>
													<th>학적상태</th>
													<td colspan="3"><input class="form-control" type="text" value="재학" readOnly></td>
													<th style="width: 9%;">입학년도</th>
													<td colspan="3"><input class="form-control" type="text" value="2020.3" readOnly></td>
												</tr>
												<tr>
													<th>주소</th> 
													<td colspan="6">
														<input class="form-control" type="text" id="sample4_roadAddress" value="서울 어쩌구 저쩌구 1-234">
													</td>
													<td><input type="button" class="btn" style="padding: 10px 10px;" onclick="sample4_execDaumPostcode()" value="주소검색">
														<input type="hidden" id="sample4_postcode" placeholder="우편번호">
														<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
														<input type="hidden" id="sample4_detailAddress" placeholder="상세주소">
														<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
													</td>
												</tr>
												<tr>
													<th>휴대폰<br>번호</th>
													<td colspan="3"><input class="form-control" type="text" value="010-1234-5678"></td>
													<th style="width: 9%;">이메일</th>
													<td colspan="3"><input class="form-control" type="text" value="khs@naver.com"></td>
												</tr>
												<tr>
													<th>취미/<br>특기</th>
													<td colspan="3"><input class="form-control" type="text" value="잠자기, 놀기, 자기"></td>
													<th style="width: 10%;">동아리 가입<br>여부</th>
													<td colspan="3"><input class="form-control" type="text" value="무"></td>
												</tr>
												<tr>
													<th>종교</th>
													<td colspan="3"><input class="form-control" type="text" value="무교"></td>
													<th>상담여부</th>
													<td colspan="3"><input class="form-control" type="text" value="무"></td>
												</tr>
											</tbody>
											<thead>
												<tr>
													<th colspan="8">상담 기초 조사지</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th colspan="2">졸업 후 계획</th>
													<td colspan="6"><input class="form-control" type="text" value="취업"></td>
												</tr>
												<tr>
													<th colspan="2">희망 직종(3가지)</th>
													<td colspan="2"><input class="form-control" type="text" value="작가"></td>
													<td colspan="2"><input class="form-control" type="text" value="개발자"></td>
													<td colspan="2"><input class="form-control" type="text" value="PD"></td>
												</tr>
												<tr>
													<th colspan="2">학업 문제</th>
													<td colspan="6"><input class="form-control" type="text" value=""></td>
												</tr>
												<tr>
													<th colspan="2">진로 문제</th>
													<td colspan="6"><input class="form-control" type="text" value=""></td>
												</tr>
												<tr>
													<th colspan="2">학교 적응 문제</th>
													<td colspan="6"><input class="form-control" type="text" value=""></td>
												</tr>
												<tr>
													<th colspan="2">대인 관계 문제</th>
													<td colspan="6"><input class="form-control" type="text" value=""></td>
												</tr>
												<tr>
													<th colspan="2">학생생활상담소에 요청하고 싶은 프로그램이 있다면?</th>
													<td colspan="6"><input class="form-control" type="text" value=""></td>
												</tr>
											</tbody>
										</table>
										
											<div class="text-center">
												<button class="php-email-form" type="submit">
													<font style="vertical-align:inherit;">
														<font style="vertical-align:inherit;">정보수정</font>
													</font>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
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
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script	src="${pageContext.request.contextPath}/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/venobox/venobox.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/counterup/counterup.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress+" / "; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                
            }
        }).open();
    }
</script>
</body>
</html>
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
			</div>
		</section>
		<!-- 학생 정보 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
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
											<th>이름</th>
											<td><input class="form-control" type="text" value="김학생" readOnly></td>
											<th>학번</th>
											<td><input class="form-control" type="text" value="E20208090" readOnly></td>
											<th>학과</th>
											<td><input class="form-control" type="text" value="무슨무슨과" readOnly></td>
											<th>전공</th>
											<td><input class="form-control" type="text" value="무슨무슨공학" readOnly></td>
										</tr>
										<tr>
											<th>영문이름</th>
											<td><input class="form-control" type="text" value="Kim Haksang" readOnly></td>
											<th>생년월일</th>
											<td><input class="form-control" type="text" value="001225" readOnly></td>
											<th>학적상태</th>
											<td><input class="form-control" type="text" value="재학" readOnly></td>
											<th>입학년도</th>
											<td><input class="form-control" type="text" value="2020.3" readOnly></td>
										</tr>
										<tr>
											<th>집 주소</th>
											<td colspan="3"><input class="form-control" type="text" value="서울 어쩌구 저쩌구 1-234"></td>
											<th>휴대폰번호</th>
											<td><input class="form-control" type="text" value="010-1234-5678"></td>
											<th>이메일</th>
											<td><input class="form-control" type="text" value="khs@naver.com"></td>
										</tr>
										<tr>
											<th>취미/특기</th>
											<td><input class="form-control" type="text" value="잠자기, 놀기, 자기"></td>
											<th>동아리 가입 여부</th>
											<td><input class="form-control" type="text" value="무"></td>
											<th>종교</th>
											<td><input class="form-control" type="text" value="무교"></td>
											<th>상담여부</th>
											<td><input class="form-control" type="text" value="무"></td>
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
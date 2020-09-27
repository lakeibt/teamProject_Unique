<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]학생정보</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script>
function addressSearch() {
	new daum.Postcode({
		oncomplete : function(data) {
		// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
		// 각 주소의 노출 규칙에 따라 주소를 조합한다.
		// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		var fullAddr = ''; // 최종 주소 변수
		var extraAddr = ''; // 조합형 주소 변수
	
		// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			fullAddr = data.roadAddress;
	
		} else { // 사용자가 지번 주소를 선택했을 경우(J)
			fullAddr = data.jibunAddress;
		}
		// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		if (data.userSelectedType === 'R') {
			//법정동명이 있을 경우 추가한다.
			if (data.bname !== '') {
				extraAddr += data.bname;
			}
			// 건물명이 있을 경우 추가한다.
		if (data.buildingName !== '') {
			extraAddr += (extraAddr !== '' ? ', '
			+ data.buildingName : data.buildingName);
			}
			// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			fullAddr += (extraAddr !== '' ? ' (' + extraAddr
			+ ')' : '');
		}
		// 주소 정보를 해당 필드에 넣는다.
		document.getElementById('address').value = fullAddr;
	
		// 커서를 상세주소 필드로 이동한다.
		document.getElementById('de_address').focus();
		}
	}).open();
}
</script>
</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../student/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../student/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">학생 정보</h4>
								<p class="card-category">개인 정보 수정에 관한 문의는 관리자에게 문의하여 주시기 바랍니다</p>
							</div>
							<div class="card-body" style="margin-top:25px;">
								<form action="${student}myPage_modifyPro" name="stuInfoForm" method="post">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									<div class="row">
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">이름</label>
												<input type="text" class="form-control" value="${vo.name}" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학번</label>
												<input type="text" class="form-control" value="${vo.getId() }" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학과</label>
												<input type="text" class="form-control" value="${vo.getM_code()}" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">전공</label>
												<input type="text" class="form-control" value="${vo.getM_code()}" disabled>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">영문이름</label>
												<input type="text" class="form-control" value="${vo.getEng_name()}" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">생년월일</label>
												<input type="text" class="form-control" value="${vo.getJumin1()}" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학적상태</label>
												<input type="text" class="form-control" value="${vo.getR_code()}" disabled>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">입학년도</label>
												<input type="text" class="form-control" value="${vo.getEntrancedate()}" disabled>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-8">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">주소</label>
												<input id="address" name="address" type="text" class="form-control" value="${vo.getAddress()}">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group bmd-form-group">
												<div class="card-footer" style="padding:0px;">
													<div class="stats">
														<button type="button" class="btn btn-primary pull-left" onclick="addressSearch();" style="width:70px; height:30px; padding:0px;">주소찾기</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">상세주소</label>
												<input id="de_address" name="de_address" type="text" class="form-control" value="${vo.getDe_address()}">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">연락처</label>
												<input name="student_tel" type="text" class="form-control" value="${vo.getTel()}">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">이메일</label>
												<input name="student_email" type="text" class="form-control" value="${vo.getEmail()}">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<button style="width:100%; margin:auto;" class="btn btn-primary pull-left" onclick="submit();">정보수정</button>
											</div>
										</div>
									</div>
									<script>
										function submit() {
											var form = document.stuInfoForm;
											form.submit();
										}
									</script>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card card-profile">
							<div class="card-avatar">
								<img src="${stu_photo}${vo.getPhoto()}" class="img">
							</div>
							<div class="card-body" style="padding-bottom:76px;">
								<h6 class="card-category" style="margin-top:50px;">${vo.m_code } 전공 / ${vo.grade }학년</h6>
								<h4 class="card-title">${vo.name }</h4>
								<p class="card-decription" style="margin-top:50px;">
									본과는 설립 당시부터 대한민국의 교육이념인 '홍인인간'을 바탕으로 하고 있으며, 이를 달성하기 위해
									'풍부한 인간성과 창조적 지성을 지닌 인재를 양성하고, 학술 및 문화의 진흥을 도모'함으로써 '개인의 성장, 사회의 발
									전, 국가의 번영, 인류의 행복에 기여함'을 목표로 합니다.
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">상담 정보</h4>
								<p class="card-category">상담지를 작성하여 상담 신청을 해주시기 바랍니다.</p>
							</div>
							<div class="card-body" style="margin-top:25px;">
								<form action="" name="" method="post">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">취미/특기</label>
												<input type="text" class="form-control" name="hobby">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">졸업 후 계획</label>
												<input type="text" class="form-control" name="plan">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">희망 직종</label>
												<input type="text" class="form-control" name="job">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학업 문제</label>
												<input type="text" class="form-control" name="study_problem">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">진로 문제</label>
												<input type="text" class="form-control" name="plan_problem">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학교 적응 문제</label>
												<input type="text" class="form-control" name="adapt_problem">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">대인 관계 문제</label>
												<input type="text" class="form-control" name="friend_problem">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<label class="bmd-label-floating">학생생활상담소에 요청하고 싶은 프로그램이 있다면?</label>
												<input type="text" class="form-control" name="question">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group bmd-form-group">
												<button style="width:100%; margin:auto;" class="btn btn-primary pull-left" onclick="">상담신청</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress + " / "; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수
	
			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
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
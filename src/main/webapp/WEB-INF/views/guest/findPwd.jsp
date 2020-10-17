<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>[유일대]비밀번호 찾기</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${resources}images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${resources}vendor2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${resources}css/util.css">
	<link rel="stylesheet" type="text/css" href="${resources}css/main.css">
<!--===============================================================================================-->
<script type = "text/javascript">
	function goBack() {
		window.location.href = "${guest}login";
	}
</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(${resources}images/YorkHighSchool.jpg);">
					<span class="login100-form-title-1" style = "font-size: 35px;">
						비밀번호 찾기
					</span>
				</div>
				<div style = "text-align:center; margin-top:20px;">
				<c:if test = "${result == null}">
					<span style = "color:red;">이하 내용을 입력해주세요</span>
				</c:if>
				<c:if test = "${result == 0}">
					<span style = "color:red;">입력하신 정보에 맞는 계정이 존재하지 않습니다</span>
				</c:if>
				<c:if test = "${result == 2}">
					<span style = "color:red;">해당 아이디가 존재하지 않습니다</span>
				</c:if>
				</div>
				<form class="login100-form validate-form" action="${path}guest/findPwdPro" method="post" style = "padding-top:17px;">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<div data-validate="Id is required" style = "width:100%; position:relative; padding:5px; padding-left:0px;">
						<span class="label-input100">구분</span>
						<select id="select1" name = "position" style="float:left; width:50%; font-size:15px; color:#909090; border:1px solid #aaa; border-radius: 5px; padding:5px;">
							<option value="학생">학생</option>
							<option value="교수">교수</option>
							<option value="직원">직원</option>
						</select>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate="아이디를 입력해주세요">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="id" placeholder="학번/교직원번호">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "이름을 입력해주세요">
						<span class="label-input100">이름</span>
						<input class="input100" type="text" name="name" placeholder="이름">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "전화번호를 입력해주세요">
						<span class="label-input100">전화번호</span>
						<input class="input100" type="text" name="tel" placeholder="000-0000-0000">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "이메일을 입력해주세요">
						<span class="label-input100">이메일</span>
						<input class="input100" type="text" name="email" placeholder="이메일">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							비밀번호 찾기
						</button>
						<button class="login100-form-btn" style = "margin-left:10%;" onclick = "goBack()">
							돌아가기
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="${resources}vendor2/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${resources}vendor2/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${resources}vendor2/bootstrap/js/popper.js"></script>
	<script src="${resources}vendor2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${resources}vendor2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${resources}vendor2/daterangepicker/moment.min.js"></script>
	<script src="${resources}vendor2/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${resources}vendor2/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${resources}js2/main.js"></script>

</body>
</html>
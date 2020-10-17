<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>[유일대]비밀번호 재설정</title>
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
<script>
	function goBack() {
		window.location.href = "${guest}login";
	}
	
	function checkPwd() {
		var pwd = document.getElementById('pwd').value;
		var pwd_re = document.getElementById('pwd_re').value;
		if(pwd == pwd_re) {
			return true;
		} else {
			alert("비밀번호를 확인해주세요");
			return false;
		}
	}
</script>
</head>
<body>
	<c:if test = "${updateFail != null}">
		<script type = "text/javascript">
			alert("${updateFail}");
		</script>
	</c:if>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(${resources}images/YorkHighSchool.jpg);">
					<span class="login100-form-title-1" style = "font-size: 35px;">
						비밀번호 재설정
					</span>
				</div>
				<div style = "text-align:center; margin-top:20px;">
					<span style = "color:red;">&nbsp;</span>
				</div>
				<form class="login100-form validate-form" action="${path}guest/setPwdPro" method="post" style = "padding-top:17px;" onsubmit = 'return checkPwd();'>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<input type= "hidden" name = "id" value = "${id}">
					<input type= "hidden" name = "position" value = "${position}">
					<div class="wrap-input100 validate-input m-b-18" data-validate="비밀번호를 입력해주세요">
						<span class="label-input100">새 비밀번호</span>
						<input class="input100" type="password" name="pwd" id = "pwd" placeholder="새 비밀번호 입력">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "비밀번호를 입력해주세요">
						<span class="label-input100">새 비밀번호 확인</span>
						<input class="input100" type="password" name="pwd_re" id = "pwd_re" placeholder="새 비밀번호 입력">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							확인
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
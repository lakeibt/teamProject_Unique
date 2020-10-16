<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>[유일대]로그인</title>
	<script type = "text/javascript">
	function rememberCheck() {
		var rememberId = document.getElementsByName('rememberId')[0].checked;
		if(rememberId) {
			var id = document.getElementById('id').value;
			sessionStorage.setItem("rememberId", rememberId);
			sessionStorage.setItem("id", id)
		} else {
			sessionStorage.removeItem("rememberId");
			sessionStorage.removeItem("id");
		}
		return true;
	};
	
	function rememberId() {
		if(sessionStorage.getItem("rememberId")) {
			document.getElementById('id').value = sessionStorage.getItem("id");
			document.getElementsByName('rememberId')[0].checked = true;
		}
	}
	</script>
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
</head>
<body onload = "rememberId();">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(${resources}images/YorkHighSchool.jpg);">
					<span class="login100-form-title-1" style = "font-size: 35px;">
						통합 로그인
					</span>
				</div>
				<div style = "padding:5px; text-align:center">
				<c:if test = "${errMsg != null}">
					<b style = "color:red;">${errMsg}</b>
				</c:if>
				<c:if test = "${errMsg == null}">
					<span style = "color:red;">&nbsp;</span>
				</c:if>
				</div>
				<form class="login100-form validate-form" action="${path}guest/loginPro" method="post" style = "padding-top:17px;" onsubmit = 'return rememberCheck();'>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Id is required">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="id" placeholder="학번/교직원번호" id = "id">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pwd" placeholder="비밀번호">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="rememberId">
							<label class="label-checkbox100" for="ckb1">
								학번/교직원번호 저장
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							로그인
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
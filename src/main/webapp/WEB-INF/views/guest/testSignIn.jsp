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
					<h2>테스트용 회원가입</h2>
				</div>
				<!-- 성적조회 페이지 -->
				<section class="services" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="contact">
						<form action = "${guest}testSignInPro" method = "post" name = "signform" style = "margin : 0 auto; width : 500px;" onsubmit = "return signInCheck()">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<input type = "hidden" name = "hiddenId" value = "0">
							<fieldset>
								<legend> 회원가입 </legend>
								<table id = "sign_table">
									<tr>
										<th align = "center"><label for = "userID"><b style = "color:red;">* </b>아이디 </label></th>
										<td>
											<input type = "text" name = "userID" size = "26" style = "height:30px;" placeholder = "공백없이 입력">
										</td>
									</tr>
									<tr>
										<th align = "center"><label for = "userPWD"><b style = "color:red;">* </b>비밀번호 </label></th>
										<td><input type = "password" name = "userPWD" size = "40" style = "height:30px;" placeholder = "비밀번호 입력"></td>
									</tr>
									<tr>
										<th align = "center"><label for = "userName"><b style = "color:red;">* </b>이름 </label></th>
										<td><input type = "text" name = "userName" size = "40" style = "height:30px;" placeholder = "이름 입력"></td>
									</tr>
									
									<tr>
										<th> 사용권한 </th>
										<td>
											<select name="authority">
												<option value="ROLE_STUDENT">학생</option>
												<option value="ROLE_PROFESSOR">교수</option>
												<option value="ROLE_ADMIN">관리자</option>
											</select>
										</td>
									</tr>
									<tr height = 70px>
										<td colspan = "2" align = "center">
											<br>
											<input type = "submit" style = "font-size:15px; color:white; background:#333; width:90%; height:30px; margin:3px;" value = "회원가입">
											<input type = "button" style = "font-size:15px; color:white; background:#333; width:90%; height:30px; margin:3px;" value = "가입취소">
										</td>
									</tr>
								</table>
							</fieldset>
						</form>
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
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
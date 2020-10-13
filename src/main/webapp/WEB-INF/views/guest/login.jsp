<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<body class="dark-edition" onload = "rememberId();">
	<div class="wrapper">
		<%@ include file="../include/student_sidebar.jsp"%>
		<div class="main-panel">
		<%@ include file="../include/student_header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div style="width: 50%; margin: 0 auto; margin-top:200px;">
								<div style="width: 63%; margin: 0 auto;">
									<b style="font-size: 50px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;통합로그인</b>
								</div>
								<div>
									<p style="font-weight: normal;">
										<img src="${img}phone.png" style="width: 30px;">&nbsp;시스템 문의처
									</p>
									<p style="color: #003cbc; font-size: 30px; font-weight: normal;">
										<img src="${img}lock2.png" style="width: 30px;">LOGIN
									</p>
									<hr width="100%" style="margin: 0 auto; margin-bottom: 15px;">
									<c:if test="${sessionScope.auth == null}">
										<form action="${path}guest/loginPro" method="post" style="width: 100%; margin: 0 auto;" onsubmit = 'return rememberCheck();'>
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											<input type="text" id = "id" name="id" placeholder="학번/교직원번호" style="width: 100%; height: 50px; margin: 3px;">
											<input type="password" id = "pwd" name="pwd" placeholder="비밀번호" style="width: 100%; height: 50px; margin: 3px;">
											<table style="width: 100%; margin-top: 10px; margin-bottom: 30px;">
												<tr>
													<td><input type="checkbox" name = "rememberId" id = "rememberId">학번/교직원번호 저장</td>
													<td style="float: right; text-decoration: none;">
														<a class="quote" href="#" style="color: black;">비밀번호 초기화</a>
													</td>
												</tr>
												<tr>
													<td colspan="2" style="text-align: right; text-decoration: none;">
														<a href="#" style="color: black;">학번/교직원번호 조회</a>
													</td>
												</tr>
												<tr>
													<td colspan="2" style="text-align: right; text-decoration: none;">
														<a href="#" style="color: black;">로그인/로그아웃 요구사항</a>
													</td>
												</tr>
											</table>
											<input type="submit" value="로그인" style="width: 100%; background-color: #0d2735; margin: 0 auto; color: white; height: 50px;">
										</form>
									</c:if>
									<c:if test="${sessionScope.auth != null}">
										<div style="margin: 0 auto; padding-top: 30px;">
											<p style="text-align: center; font-size: 20px; font-weight: bold;">
												귀하는 로그인되어 있는 상태입니다.
											</p><br>
											<p style="text-align: center; font-size: 20px; font-weight: bold;">
												로그아웃하시려면 아래 버튼을 누르시면 됩니다.
											</p><br>
											
										</div>
										<input type="button" value="로그아웃"
											style="height: 50px; width: 100%; margin: 0 auto; color: white; background-color: #0d2735;"
											onClick="window.location = '${guest}logout'">
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container-fluid">
			<nav class="float-left">
				<ul>
					<li><a href="https://www.creative-tim.com"> Creative Tim </a>
					</li>
					<li><a href="https://creative-tim.com/presentation"> About
							Us </a></li>
					<li><a href="http://blog.creative-tim.com"> Blog </a></li>
					<li><a href="https://www.creative-tim.com/license">
							Licenses </a></li>
				</ul>
			</nav>
			<div class="copyright float-right" id="date">
				, made with <i class="material-icons">favorite</i> by <a
					href="https://www.creative-tim.com" target="_blank">Creative
					Tim</a> for a better web.
			</div>
		</div>
	</footer>
	<script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>

</html>
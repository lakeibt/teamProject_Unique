<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]로그인</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../student/student_sidebar.jsp"%>
		<div class="main-panel">
		<%@ include file="../student/student_header.jsp"%>
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
										<form action="${path}guest/loginPro" method="post" style="width: 100%; margin: 0 auto;">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											<input type="text" name="id" placeholder="학번/교직원번호" style="width: 100%; height: 50px; margin: 3px;">
											<input type="password" name="pwd" placeholder="비밀번호" style="width: 100%; height: 50px; margin: 3px;">
											<table style="width: 100%; margin-top: 10px; margin-bottom: 30px;">
												<tr>
													<td><input type="checkbox">학번/교직원번호 저장</td>
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
	</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple active"
								data-color="purple"></span> <span
								class="badge filter badge-azure" data-color="azure"></span> <span
								class="badge filter badge-green" data-color="green"></span> <span
								class="badge filter badge-warning" data-color="orange"></span> <span
								class="badge filter badge-danger" data-color="danger"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="${assets}img/sidebar-1.jpg" alt="">
				</a></li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="${assets}img/sidebar-2.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="${assets}img/sidebar-3.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="${assets}img/sidebar-4.jpg" alt="">
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard-dark"
					target="_blank" class="btn btn-primary btn-block">Free Download</a>
				</li>
				<!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
				<li class="button-container"><a
					href="https://demos.creative-tim.com/material-dashboard-dark/docs/2.0/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block"> View
						Documentation </a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/material-dashboard/tree/dark-edition"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br> <br>
				</li>
			</ul>
		</div>
	</div>
	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>시설문의</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
			</div>
			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="/WEB-INF/views/include/admin_top_nav.jsp"%>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<section class="breadcrumbs">
					<div class="container">
						<!-- 쪽지 확인 페이지 -->
						<h3>시설문의함</h3>
						<hr> 
						<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="margin-top: -40px;">
							<div class="container">
								<div class="contact">
									<div class="row">
										<div class="col-lg-12 d-flex flex-column justify-content-center-center">
											<div class="icon-box">
												<div class="icon-box">
												<form class="php-email-form" style="background-color:white;">
													<table class="table" style="font-size:14px;">
														<thead>
															<tr>
																<th colspan="8" align="left">문의/요청 목록</th>
															</tr>
														</thead>
														<thead>
															<tr>
																<th style="width:8%;">번호</th>
																<th style="width:8%;">타입</th>
																<th style="width:20%;">제목</th>
																<th style="width:13%;">부서</th>
																<th style="width:13%;">요청자</th>
																<th style="width:15%;">요청일</th>
																<th style="width:13%;">상태</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="list" items="${list }">
															<tr>
																<td style="width:8%;">${list.NUM }</td>
																<td style="width:8%;">${list.TYPE }</td>
																<td style="width:20%;">
																	<a onclick="content('${list.NUM}');">${list.TITLE }</a>
																</td>
																<td style="width:13%;">${list.DEPART }</td>
																<td style="width:13%;">${list.NAME }</td>
																<td style="width:15%;">${list.DAY }</td>
																<td style="width:13%;">${list.STATE }</td>
															</tr>
															</c:forEach>
														</tbody>
													</table>
													</form>
												</div>
											</div>
										</div>
										<div class="col-lg-12 d-flex flex-column justify-content-center-center" id="display">
										</div>
										<script>
										function content(num) {
											var param = "num="+num;
											sendRequest(content_callback, "${admin}facility/ask_content", "get", param);
										}
										function content_callback() {
											var result = document.getElementById("display");
											if (httpRequest.readyState == 4) {
												if (httpRequest.status == 200) {
													var data = httpRequest.responseText;
													result.innerHTML = data;
												} else result.innerHTML = "Error!";
											} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
										}
										</script>
									</div>
								</div>
							</div>
						</section>
					</div>
				</section>
			</div>
			<!-- /page content -->
		</div>
	</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
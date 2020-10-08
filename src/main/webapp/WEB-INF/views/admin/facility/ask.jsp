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
			<div class="right_col" role="main" style="min-height:934px;">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">시설문의함</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">문의/요청 목록</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">번호</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">타입</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">제목</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">부서</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">요청자</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">요청일</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">상태</font>
															</font>
														</span>
													</th>
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
						</div>
					</div>
					<div class="row" style="display:block">
						<div class="col-md-12 col-sm-12" id="display"></div>
					</div>
				</div>
			<!-- /page content -->
		</div>
	</div>
</div>
<!-- footer content -->
<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
<!-- /footer content -->
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
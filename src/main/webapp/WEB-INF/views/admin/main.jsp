<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
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
									<font style="vertical-align:inherit;">공지사항</font>
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
											<font style="vertical-align:inherit;">사내 공지사항</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<p>
											<font style="vertical-align:inherit;">
												<font style="vertical-align:inherit; align:right;">
													<a class="btn btn-app" onclick="openform();">
														<i class="fa fa-edit"></i>
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">공지등록</font>
														</font>
													</a>
												</font>
											</font>
										</p>
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">글번호</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">제목</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">작성자</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">작성일</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">조회수</font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${cnt > 0 }">
													<c:forEach var="dto" items="${dtos }">
														<tr>
															<td style="width:10%;">${dto.NUM }</td>
															<td style="width:50%;"><a onclick="content('${dto.NUM }');">${dto.TITLE }</a></td>
															<td style="width:15%;">${dto.WRITER }</td>
															<td style="width:15%;">${dto.REG_DATE }</td>
															<td style="width:10%;">${dto.READCNT }</td>
														</tr>
													</c:forEach>
												</c:if>
												<c:if test="${cnt == 0 }">
													<tr>
														<td colspan="5">작성된 글이 없습니다</td>
													</tr>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script>
					function openform() {
						var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=800, width=1000';
						window.open("${admin}infoWrite", '공지등록', settings);
					}
					function content(num) {
						var param = "num=" + num;
						sendRequest(content_callback,"${admin}content", "get", param);
					}
					function content_callback() {
						var result = document.getElementById("info");
					    if(httpRequest.readyState == 4) { 
					       if(httpRequest.status == 200) { 
					         
					       var data = httpRequest.responseText;
					       result.innerHTML = data;
					      
					       } else result.innerHTML = "Error!" + httpRequest.status;
					    } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
					}
					</script>
					<div class="row" style="display:block">
						<div class="col-md-12 col-sm-12" id="info"></div>
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
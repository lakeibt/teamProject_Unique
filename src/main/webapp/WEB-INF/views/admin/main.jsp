<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
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
				<div class="row">
					<div class="page-title">
						<div class="title_left">
							<h3>공지사항</h3>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title">
								<div style="width:50%; float: left">
									<h3>사내 공지사항</h3>
								</div>
								<div style="width:50%; text-align:right; font-weight:bold;">
									<input type="button" class="btn" onclick="openform()" value="공지등록">
								</div>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th style="width:10%;">글번호</th>
										<th style="width:50%;">제목</th>
										<th style="width:15%;">작성자</th>
										<th style="width:15%;">작성일</th>
										<th style="width:10%;">조회수</th>
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
				<div id="info"></div>
			</div>
			<!-- /page content -->
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
			<!-- footer content -->
			<footer>
				<div class="pull-right">황동국팀 - 관리자 페이지</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
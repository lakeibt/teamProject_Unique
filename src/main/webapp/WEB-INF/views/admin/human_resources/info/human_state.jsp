<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>인사정보현황</title>
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
				<img src="${img}sample/인사정보현황.jpg">
			</div>
			<!-- /page content -->


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
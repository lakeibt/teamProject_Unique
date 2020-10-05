<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>급여명세</title>
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
				<img src="${img}sample/급여대장명세.jpg">
			</div>
			<!-- /page content -->

			
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
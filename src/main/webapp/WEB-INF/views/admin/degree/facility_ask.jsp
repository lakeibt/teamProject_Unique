<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>시설문의</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%@ include file="/WEB-INF/views/include/admin_header.jsp"%>
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">
					<div class="page-title">
						<div class="title_left">
							<h3>시설문의</h3>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title"><h3>문의/답변 조회</h3></div>
							<table class="table">
								<thead>
									<tr>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title"><h3>상세 페이지</h3></div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/ico" />

<title>시설문의</title>

<link href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"><!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"><!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/vendors/nprogress/nprogress.css" rel="stylesheet"><!-- NProgress -->
<link href="${pageContext.request.contextPath}/vendors/iCheck/skins/flat/green.css" rel="stylesheet"><!-- iCheck -->

<link href="${pageContext.request.contextPath}/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet"><!-- bootstrap-progressbar -->
<link href="${pageContext.request.contextPath}/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" /><!-- JQVMap -->
<link href="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet"><!-- bootstrap-daterangepicker -->
<link href="${pageContext.request.contextPath}/build/css/custom.min.css" rel="stylesheet"><!-- Custom Theme Style -->
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

<script src="${pageContext.request.contextPath}/vendors/jquery/dist/jquery.min.js"></script><!-- jQuery -->
<script src="${pageContext.request.contextPath}/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script><!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/vendors/fastclick/lib/fastclick.js"></script><!-- FastClick -->
<script src="${pageContext.request.contextPath}/vendors/nprogress/nprogress.js"></script><!-- NProgress -->
<script src="${pageContext.request.contextPath}/vendors/Chart.js/dist/Chart.min.js"></script><!-- Chart.js -->
<script src="${pageContext.request.contextPath}/vendors/gauge.js/dist/gauge.min.js"></script><!-- gauge.js -->
<script src="${pageContext.request.contextPath}/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script><!-- bootstrap-progressbar -->
<script src="${pageContext.request.contextPath}/vendors/iCheck/icheck.min.js"></script><!-- iCheck -->
<script src="${pageContext.request.contextPath}/vendors/skycons/skycons.js"></script><!-- Skycons -->

<!-- Flot plugins -->
<script src="${pageContext.request.contextPath}/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="${pageContext.request.contextPath}/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="${pageContext.request.contextPath}/vendors/DateJS/build/date.js"></script>
<!-- JQVMap -->
<script src="${pageContext.request.contextPath}/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="${pageContext.request.contextPath}/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="${pageContext.request.contextPath}/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="${pageContext.request.contextPath}/vendors/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath}/build/js/custom.min.js"></script>

</body>
</html>
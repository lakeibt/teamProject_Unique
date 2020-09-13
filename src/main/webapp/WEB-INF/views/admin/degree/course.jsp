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

<title>수강관리</title>

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
							<h3>수강관리</h3>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title"><h3>수강조회</h3></div>
							<table class="table">
								<thead>
									<tr>
										<th>과목코드</th>
										<th>과목명</th>
										<th>학과코드</th>
										<th>이수구분</th>
										<th>제한인원</th>
										<th>수강인원</th>
										<th>학점</th>
										<th>년도/학기</th>
										<th>요일/시간</th>
										<th>강의실</th>
										<th>담당교수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>L200911</td>
										<td>물리 물리 박물리!</td>
										<td>M526987</td>
										<td>전필</td>
										<td>40</td>
										<td>0</td>
										<td>3</td>
										<td>2020/1학기</td>
										<td>월4-6</td>
										<td>중304</td>
										<td>박물리</td>
									</tr>
									<tr>
										<td>L200911</td>
										<td>물리 물리 박물리!</td>
										<td>M526987</td>
										<td>전필</td>
										<td>40</td>
										<td>0</td>
										<td>3</td>
										<td>2020/1학기</td>
										<td>월4-6</td>
										<td>중304</td>
										<td>박물리</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title"><h3>수강등록</h3></div>
							<table class="table">
								<tbody>
									<tr>
										<td>과목명</td>
										<td><input class="form-control" type="text" value="AR!어디있니?"></td>
										<td>학과코드</td>
										<td><input class="form-control" type="text" value="L101010"></td>
										<td>이수구분</td>
										<td>
											<select class="form-control">
												<option>전필</option>
												<option>전선</option>
												<option>교필</option>
												<option>교선</option>
											</select>
										</td>
										<td>학점</td>
										<td><input class="form-control" type="text" value="3"></td>
									</tr>
									<tr>
										<td>년도</td>
										<td><input class="form-control" type="text" value="2020"></td>
										<td>학기</td>
										<td>
											<select class="form-control">
												<option>1</option>
												<option>2</option>
											</select>
										</td>
										<td>요일</td>
										<td>
											<select class="form-control">
												<option>월</option>
												<option>화</option>
												<option>수</option>
												<option>목</option>
												<option>금</option>
											</select>
										</td>
										<td>시작시간</td>
										<td>
											<select class="form-control">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>제한인원</td>
										<td><input class="form-control" type="text" value="40"></td>
										<td>강의실</td>
										<td><input class="form-control" type="text" value="영암관302"></td>
										<td>담당교수</td>
										<td colspan="3"><input class="form-control" type="text" value="Mr.Ar"></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="8">
											<a class="btn btn-app" style="height:80%; float:right;">강의등록</a>
										</td>
									</tr>
								</tfoot>
							</table>
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
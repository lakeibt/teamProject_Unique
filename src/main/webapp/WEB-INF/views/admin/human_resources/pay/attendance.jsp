<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${pageContext.request.contextPath}/img/sample/favicon.ico"
	type="image/ico" />

<title>근태관리</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="${pageContext.request.contextPath}/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="${pageContext.request.contextPath}/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link href="${pageContext.request.contextPath}/vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="${path}/admin" class="site_title"> <i
							class="fa fa-cog fa-spin fa-fw" style="border: none"></i> <span
							style="font-size: 25px">Admin Page</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${pageContext.request.contextPath}/img/sample/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>이름</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a href="${path}/admin"><i class="fa fa-home"></i>DashBorad</a></li>
								<li><a><i class="fa fa-edit"></i> 학사관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="${path}/admin/degree/course">수강관리</a></li>
										<li><a href="${path}/admin/degree/facility_ask">시설문의</a></li>
									</ul></li>
								<li><a><i class="fa fa-sitemap"></i> 인사관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a>기초코드 설정<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}/admin/human_resources/code_setting/salary_setting">급/상여
														지급일자 등록</a></li>
												<li><a
													href="${path}/admin/human_resources/code_setting/setting">인사/급여환경설정</a></li>
												<li><a
													href="${path}/admin/human_resources/code_setting/code_setting">인사기초코드등록</a></li>
											</ul></li>
										<li><a>인사정보<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}/admin/human_resources/info/human_info">인사정보등록</a></li>
												<li><a
													href="${path}/admin/human_resources/info/human_state">인사정보현황</a></li>
												<li><a
													href="${path}/admin/human_resources/info/salary_state">책정임금현황</a></li>
											</ul></li>
										<li><a>급여관리<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}/admin/human_resources/pay/attendance">근태관리</a></li>
												<li><a href="${path}/admin/human_resources/pay/salary">급여등록</a></li>
												<li><a
													href="${path}/admin/human_resources/pay/salary_list">급여대장</a></li>
												<li><a
													href="${path}/admin/human_resources/pay/salary_info">급여명세</a></li>
												<li><a
													href="${path}/admin/human_resources/pay/salary_list_month">월별
														급/상여지급현황</a></li>
												<li><a
													href="${path}/admin/human_resources/pay/salary_list_human">사원별
														급/상여지급현황</a></li>
											</ul></li>
									</ul></li>
								<li><a><i class="fa fa-desktop"></i> 시설관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="${path}/admin/facility/park">차량운행 및 관리</a></li>
										<li><a href="${path}/admin/facility/list">시설물 관리 및
												관재업무</a></li>
										<li><a href="${path}/admin/facility/ask">시설 문의 확인</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<nav class="nav navbar-nav">
						<ul class=" navbar-right">
							<li class="nav-item dropdown open" style="padding-left: 15px;">
								<a href="javascript:;" class="user-profile dropdown-toggle"
								aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
								aria-expanded="false"> <img
									src="${pageContext.request.contextPath}/img/sample/img.jpg" alt="">이름
							</a>
								<div class="dropdown-menu dropdown-usermenu pull-right"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Profile</a> <a
										class="dropdown-item" href="#"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a>
								</div>
							</li>

							<li role="presentation" class="nav-item dropdown open"><a
								href="javascript:;" class="dropdown-toggle info-number"
								id="navbarDropdown1" data-toggle="dropdown"
								aria-expanded="false"> <i class="fa fa-envelope-o"></i> <span
									class="badge bg-green">6</span>
							</a>
								<ul class="dropdown-menu list-unstyled msg_list" role="menu"
									aria-labelledby="navbarDropdown1">
									<li class="nav-item"><a class="dropdown-item"> <span>
												<span>John Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li class="nav-item">
										<div class="text-center">
											<a class="dropdown-item"> <strong>See All Alerts</strong>
												<i class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div>
					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title"><h4>근태관리</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
												<th>대상기간</th>
												<td><select class="form-control" style="float:left; width:100px;">
													  <option value="2015">2015</option>
													  <option value="2016">2016</option>
													  <option value="2017">2017</option>
													  <option value="2018">2018</option>
													  <option value="2019">2019</option>
													  <option value="2020" selected>2020</option>
													  <option value="2021">2021</option>
													  <option value="2022">2022</option>
													  <option value="2023">2023</option>
													</select>
													<select class="form-control" style="float:left; width:100px;">
													  <option value="1">1월</option>
													  <option value="2">2월</option>
													  <option value="3">3월</option>
													  <option value="4">4월</option>
													  <option value="5">5월</option>
													  <option value="6">6월</option>
													  <option value="7">7월</option>
													  <option value="8">8월</option>
													  <option value="9">9월</option>
													  <option value="10">10월</option>
													  <option value="11">11월</option>
													  <option value="12">12월</option>
													</select>
													<select class="form-control" style="float:left; width:100px;">
													  <option value="1">1일</option>
													  <option value="2">2일</option>
													  <option value="3">3일</option>
													  <option value="4">4일</option>
													  <option value="5">5일</option>
													  <option value="6">6일</option>
													  <option value="7">7일</option>
													  <option value="8">8일</option>
													  <option value="9">9일</option>
													  <option value="10">10일</option>
													  <option value="11">11일</option>
													  <option value="12">12일</option>
													  <option value="13">13일</option>
													  <option value="14">14일</option>
													  <option value="15">15일</option>
													  <option value="16">16일</option>
													  <option value="17">17일</option>
													  <option value="18">18일</option>
													  <option value="19">19일</option>
													  <option value="20">20일</option>
													  <option value="21">21일</option>
													  <option value="22">22일</option>
													  <option value="23">23일</option>
													  <option value="24">24일</option>
													  <option value="25">25일</option>
													  <option value="26">26일</option>
													  <option value="27">27일</option>
													  <option value="28">28일</option>
													  <option value="29">29일</option>
													  <option value="30">30일</option>
													  <option value="31">31일</option>
													</select>
												</td>
											</tr>
										</thead>
									
									</table>
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
												<th>사원번호</th>
												<th>사원명</th>
												<th>날짜</th>
												<th>출근시간</th>
												<th>퇴근시간</th>
												<th>total</th>
												<th>야간근무</th>
												<th>특근</th>
												<th>적요</th>
											</tr>
										</thead>
										<tbody style="color:grey;">
											<tr>
												<td>100001</td>
												<td>홍길동</td>
												<td>2020/08/01</td>
												<td>08:24</td>
												<td>19:47</td>
												<td>11.4</td>
												<td>1</td>
												<td></td>
												<td></td>

											</tr>
											<tr>
												<td>100002</td>
												<td>엄복동</td>
												<td>2020/08/01</td>
												<td>08:54</td>
												<td>18:31</td>
												<td>9.6</td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
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

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="${pageContext.request.contextPath}/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${pageContext.request.contextPath}/vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="${pageContext.request.contextPath}/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="${pageContext.request.contextPath}/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="${pageContext.request.contextPath}/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="${pageContext.request.contextPath}/vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="${pageContext.request.contextPath}/vendors/skycons/skycons.js"></script>
	<!-- Flot plugins -->
	<script
		src="${pageContext.request.contextPath}/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="${pageContext.request.contextPath}/vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="${pageContext.request.contextPath}/vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="${pageContext.request.contextPath}/vendors/moment/min/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="${pageContext.request.contextPath}/build/js/custom.min.js"></script>

</body>
</html>
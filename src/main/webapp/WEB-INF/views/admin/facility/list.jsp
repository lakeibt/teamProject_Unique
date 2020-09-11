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
<link rel="icon" href="${img}sample/favicon.ico"
	type="image/ico" />

<title>시설물 관리 리스트</title>

<!-- Bootstrap -->
<link
	href="${resources}vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${resources}vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="${resources}vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="${resources}vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="${resources}vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link href="${resources}vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="${resources}vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="${resources}build/css/custom.min.css" rel="stylesheet">
<link href="${resources}css/style.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="${path}admin" class="site_title"> <i
							class="fa fa-cog fa-spin fa-fw" style="border: none"></i> <span
							style="font-size: 25px">Admin Page</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${img}sample/img.jpg" alt="..."
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
								<li><a href="${path}admin"><i class="fa fa-home"></i>DashBorad</a></li>
								<li><a><i class="fa fa-edit"></i> 학사관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="${path}admin/degree/course">수강관리</a></li>
										<li><a href="${path}admin/degree/facility_ask">시설문의</a></li>
									</ul></li>
								<li><a><i class="fa fa-sitemap"></i> 인사관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a>기초코드 설정<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}admin/human_resources/code_setting/salary_setting">급/상여
														지급일자 등록</a></li>
												<li><a
													href="${path}admin/human_resources/code_setting/setting">인사/급여환경설정</a></li>
												<li><a
													href="${path}admin/human_resources/code_setting/code_setting">인사기초코드등록</a></li>
											</ul></li>
										<li><a>인사정보<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}admin/human_resources/info/human_info">인사정보등록</a></li>
												<li><a
													href="${path}admin/human_resources/info/human_state">인사정보현황</a></li>
												<li><a
													href="${path}admin/human_resources/info/salary_state">책정임금현황</a></li>
											</ul></li>
										<li><a>급여관리<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a
													href="${path}admin/human_resources/pay/attendance">근태관리</a></li>
												<li><a href="${path}admin/human_resources/pay/salary">급여등록</a></li>
												<li><a
													href="${path}admin/human_resources/pay/salary_list">급여대장</a></li>
												<li><a
													href="${path}admin/human_resources/pay/salary_info">급여명세</a></li>
												<li><a
													href="${path}admin/human_resources/pay/salary_list_month">월별
														급/상여지급현황</a></li>
												<li><a
													href="${path}admin/human_resources/pay/salary_list_human">사원별
														급/상여지급현황</a></li>
											</ul></li>
									</ul></li>
								<li><a><i class="fa fa-desktop"></i> 시설관리 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="${path}admin/facility/park">차량운행 및 관리</a></li>
										<li><a href="${path}admin/facility/list">시설물 관리 및
												관재업무</a></li>
										<li><a href="${path}admin/facility/ask">시설 문의 확인</a></li>
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
									src="${img}sample/img.jpg" alt="">이름
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
				<section class="breadcrumbs">
					<div class="container">
						<!-- 쪽지 확인 페이지 -->
						<h3>시설물 관리</h3>
						<hr> 
						<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="margin-top: -40px;">
							<div class="container">
							<div class="contact">
								<div class="row">
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
												<form class="php-email-form" style="height: 110px;">
													<table class="table" >
														<tr>
															<td align="right">
																<select name="parkSearch" style="padding: 8px;">      
												                    <option value="1" >기자제명</option>
												                    <option value="2" >기자제코드</option>
												                    <option value="3" >분류코드</option>
																</select>
															</td>
															<td><input class="form-control" type="text"placeholder="입력"></td>
															<td>
																<button class="php-email-form" type="submit">
																	<font style="vertical-align:inherit;">검색</font>
																</button>
															</td>
														</tr>
													</table>
												</form>
											</div>
										</div>
									</div>
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
											<form class="php-email-form">
												<table class="table" style="font-size:12px;">
													<thead>
														<tr>
															<th colspan="8">기자제 목록</th>
														</tr>
													</thead>
													<thead>
														<tr>
															<th style="width:10%;">번호</th>
															<th style="width:10%;">분류코드</th>
															<th style="width:15%;">기자제코드</th>
															<th style="width:15%;">기자제명</th>
															<th style="width:15%;">수량</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="width:10%;">1</td>
															<td style="width:10%;">20200123123123</td>
															<td style="width:15%;">T00001</td>
															<td style="width:15%;">테이블 002.ver</td>
															<td style="width:15%;">10</td>
														</tr>
														<tr>
															<td style="width:10%;">2</td>
															<td style="width:10%;">20200123125457</td>
															<td style="width:15%;">C00001</td>
															<td style="width:15%;">컴퓨터 삼성</td>
															<td style="width:15%;">10</td>
														</tr>
														<tr>
															<td style="width:10%;">3</td>
															<td style="width:10%;">20200145645778</td>
															<td style="width:15%;">C00002</td>
															<td style="width:15%;">컴퓨터 엘지</td>
															<td style="width:15%;">10</td>
														</tr>
													</tbody>
												</table>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							</div>
						</section>
					</div>
				</section>
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
	<script src="${resources}vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="${resources}vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="${resources}vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${resources}vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="${resources}vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="${resources}vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="${resources}vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="${resources}vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="${resources}vendors/skycons/skycons.js"></script>

	<!-- Flot plugins -->
	<script
		src="${resources}vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="${resources}vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="${resources}vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="${resources}vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="${resources}vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script
		src="${resources}vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="${resources}vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="${resources}vendors/moment/min/moment.min.js"></script>
	<script
		src="${resources}vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="${resources}build/js/custom.min.js"></script>

</body>
</html>
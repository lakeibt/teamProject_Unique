<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>주차관리</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
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
						<h3>주차 관리 시스템</h3>
						<hr> 
						<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="margin-top: -40px;">
							<div class="container">
							<div class="contact">
								<div class="row">
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
												<form class="php-email-form" style="height: 110px;">
													<table class="table">
														<tr>
															<td align="right">
																<select name="parkSearch" style="padding: 8px;">      
												                    <option value="1" >차량번호</option>
												                    <option value="2" >이름</option>
												                    <option value="3" >날짜</option>
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
															<th colspan="8">출입 목록</th>
														</tr>
													</thead>
													<thead>
														<tr>
															<th style="width:10%;">번호</th>
															<th style="width:10%;">차량번호</th>
															<th style="width:15%;">날짜</th>
															<th style="width:15%;">입차시간</th>
															<th style="width:15%;">출차시간</th>
															<th style="width:15%;">구분</th>
															<th style="width:20%;">-</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="width:10%;">1</td>
															<td style="width:10%;">18가 1818</td>
															<td style="width:15%;">2020.09.03</td>
															<td style="width:15%;">09:10</td>
															<td style="width:15%;">18:30</th>
															<td style="width:15%;">정기주차</th>
															<th style="width:20%;">-</th>
														</tr>
														<tr>
															<td style="width:10%;">1</td>
															<td style="width:10%;">11허 1111</td>
															<td style="width:15%;">2020.09.03</td>
															<td style="width:15%;">09:30</td>
															<td style="width:15%;">18:00</th>
															<td style="width:15%;">정기주차</th>
															<th style="width:20%;">-</th>
														</tr>
														<tr>
															<td style="width:10%;">1</td>
															<td style="width:10%;">19라 9999</td>
															<td style="width:15%;">2020.09.03</td>
															<td style="width:15%;">08:34</td>
															<td style="width:15%;">18:40</th>
															<td style="width:15%;">일반주차</th>
															<th style="width:20%;">-</th>
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
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
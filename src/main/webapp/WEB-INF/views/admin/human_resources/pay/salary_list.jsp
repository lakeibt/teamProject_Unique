<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>급여대장</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<!-- Template Main JS File -->
<script src="${resources}js/admin.js"></script>

<script>

$(function(){
	$('#payroll').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/pay/payroll',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#pay_payroll').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});

$(function(){
	$('#payslip').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/pay/payslip',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#pay_payslip').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});
</script>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="${path}admin" class="site_title">
							<i class="fa fa-cog fa-spin fa-fw" style="border: none"></i>
							<span style="font-size: 25px">Admin Page</span>
						</a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${img}sample/img.jpg" alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>이름</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->
					<br>
					<!-- sidebar menu -->
					<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li>
									<a href="${path}admin"><i class="fa fa-home"></i>DashBorad</a>
								</li>
								<li>
									<a>	<i class="fa fa-edit"></i> 학사관리 
										<span class="fa fa-chevron-down"></span>
									</a>
									<ul class="nav child_menu">
										<li><a href="${path}admin/degree/course">수강관리</a></li>
										<li><a href="${path}admin/degree/facility_ask">시설문의</a></li>
									</ul>
								</li>
								<li>
									<a>	<i class="fa fa-sitemap"></i> 인사관리 
										<span class="fa fa-chevron-down"></span>
									</a>
									<ul class="nav child_menu">
										<li><a>기초코드 설정<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a href="${path}admin/human_resources/code_setting/salary_setting">급/상여 지급일자 등록</a></li>
												<li><a href="${path}admin/human_resources/code_setting/setting">인사/급여환경설정</a></li>
												<li><a href="${path}admin/human_resources/code_setting/code_setting">인사기초코드등록</a></li>
											</ul></li>
										<li><a>인사정보<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a href="${path}admin/human_resources/info/human_info">인사정보등록</a></li>
												<li><a href="${path}admin/human_resources/info/human_state">인사정보현황</a></li>
												<li><a href="${path}admin/human_resources/info/salary_state">책정임금현황</a></li>
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
								<div class="x_title"><h4>급여 계산/대장</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
												<th>급여구분</th>
												<th>지급구분</th>
												<th>대장명칭</th>
												<th>지급일</th>
												<th>급여계산</th>
												<th>인원수</th>
												<th>급여대장</th>
												<th>명세서</th>
												<th>지급총액</th>
											</tr>
										</thead>
										<tbody style="color:grey;">
											<tr>
												<th scope="row">급여</th>
												<td>정규</td>
												<td>2020/7 정규 (급여)</td>
												<td>2020/08/15</td>
												<td>
													<a class="btn btn-app" style="height:30px; padding:5px;">전체계산</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">개인별계산</a>
												</td>
												<td>3</td>
												<td>
													<a id="payroll" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">수정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">확정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">삭제</a>
												</td>
												<td>
													<a id="payslip" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">email</a>
												</td>
												<td>25,500,505</td>
											</tr>
											<tr>
												<th scope="row">급여</th>
												<td>정규</td>
												<td>2020/6 정규 (급여)</td>
												<td>2020/07/15</td>
												<td>
													<a class="btn btn-app" style="height:30px; padding:5px;">전체계산</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">개인별계산</a>
												</td>
												<td>7</td>
												<td>
													<a id="payroll" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">수정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">확정</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">삭제</a>
												</td>
												<td>
													<a id="payslip" class="btn btn-app" style="height:30px; padding:5px;">조회</a><br>
													<a class="btn btn-app" style="height:30px; padding:5px;">email</a>
												</td>
												<td>25,500,505</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a><input class="btn btn-app" name="newSalary" type="button" style="height:30px; padding:5px;" value="신규등록" onclick="newCreate();"></a>

				<br>
				
				<div id="pay_payroll">
					<!-- 결과 출력 위치 -->
				</div >
							
				<div id="pay_payslip">
					<!-- 결과 출력 위치 -->
				</div >
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
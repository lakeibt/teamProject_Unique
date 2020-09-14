<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>인사정보등록</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
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
							<img src="${img}sample/img.jpg"
								alt="${pageContext.request.contextPath}." class="img-circle profile_img">
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
									src="${img}sample/img.jpg"
									alt="">이름
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
												do-or-die moments for movie makers. They were where${pageContext.request.contextPath}. </span>
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
				<div class="row">
					<div class="col-md-12 col-sm-12 ">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									인사정보등록
								</h2>
								<ul class="nav navbar-right panel_toolbox">
								<li>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</li>
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">구분</a>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">직원</a>
									<a class="dropdown-item" href="#">학생</a>
									<a class="dropdown-item" href="#">교수</a>								
								</div>
								</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="demo-form2" data-parsley-validate
									class="form-horizontal form-label-left">
									<br>
									<div class="col-md-3 col-sm-3  form-group">
										<div id="human_info_imgAdd">
											사진
										</div>
									</div>
									<div class="col-md-4 col-sm-12  form-group">
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">아이디(사번)
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">비밀번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">비밀번호확인
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<br><br><br><br>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">입사일 
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input id="birthday" class="date-picker form-control"
													required="required"
													type="text"
													onfocus="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
													onmouseover="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
													onclick="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
													onblur="if (!window.__cfRLUnblockHandlers) return false; this.type='text'"
													onmouseout="if (!window.__cfRLUnblockHandlers) return false; timeFunctionLong(this)"
													data-cf-modified-ed641bf6e1354c9585fdbfb0-="">
												<script type="ed641bf6e1354c9585fdbfb0-text/javascript">
													function timeFunctionLong(input) {
														setTimeout(function() {
															input.type = 'text';
														}, 60000);
													}
												</script>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">부서코드
											</label>
											<div class="col-md-7 col-sm-7 ">
												<select class="form-control">
													<option></option>
													<option>부서코드1</option>
													<option>부서코드2</option>
													<option>부서코드3</option>
													<option>부서코드4</option>
													<option>부서코드5</option>
												</select>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">직급
											</label>
											<div class="col-md-7 col-sm-7 ">
												<select class="form-control">
													<option></option>
													<option>직급1</option>
													<option>직급2</option>
													<option>직급3</option>
													<option>직급4</option>
													<option>직급5</option>
												</select>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">계좌번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">자차소유
											</label>
											<div class="col-md-7 col-sm-7 ">
											<div style="height:6.5px"></div>
											<label>보유:</label>
											<input type="radio" class="flat" name="car" id="car" value="" required />
											<br>
											<label>미보유:</label>
											<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-12  form-group">
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">이름
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">영문이름
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">이메일
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">휴대전화
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">주민번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">성별
											</label>
											<div class="col-md-7 col-sm-7 ">
											<div style="height:6.5px"></div>
											<label>남:</label>
											<input type="radio" class="flat" name="car" id="car" value="" required />
											<br>
											<label>여:</label>
											<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">내/외국인
											</label>
											<div class="col-md-7 col-sm-7 ">
												<div style="height:6.5px"></div>
												<label>내국인</label>
												<input type="radio" class="flat" name="car" id="car" value="" required />
												<br>
												<label>외국인</label>
												<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">국적
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" name="country" id="autocomplete-custom-append" class="form-control col-md-10" />
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">주소
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
									</div>
										<div class="col-md-12 col-sm-12  form-group">
											<button class="btn btn-primary" type="reset">Reset</button>
											<button type="submit" class="btn btn-success">Submit</button>
										</div>
								</form>
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

	<script src="${resources}vendors/jquery/dist/jquery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap/dist/js/bootstrap.bundle.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/fastclick/lib/fastclick.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/nprogress/nprogress.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/iCheck/icheck.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/moment/min/moment.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/bootstrap-daterangepicker/daterangepicker.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/jquery.hotkeys/jquery.hotkeys.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/google-code-prettify/src/prettify.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/jquery.tagsinput/src/jquery.tagsinput.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/switchery/dist/switchery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/select2/dist/js/select2.full.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/parsleyjs/dist/parsley.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/autosize/dist/autosize.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/starrr/dist/starrr.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}build/js/custom.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script
		src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
		data-cf-settings="ed641bf6e1354c9585fdbfb0-|49" defer=""></script>
	<script src="${resources}build/js/custom.min.js"></script>

</body>
</html>
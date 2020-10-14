<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
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
			<img src="${adm_photo}${sessionScope.photo}" alt="..."
				class="img-circle profile_img">
		</div>
		<div class="profile_info">
			<span>환영합니다</span>
			<h2>${sessionScope.name}님</h2>
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
									href="${path}admin/human_resources/code_setting/setting">인사/급여환경설정</a></li>
							</ul></li>
						<li><a>인사정보<span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a
									href="${path}admin/human_resources/info/human_info">인사정보등록</a></li>
								<li><a
									href="${path}admin/human_resources/info/human_state">인사정보현황</a></li>
							</ul></li>
						<li><a>급여관리<span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a
									href="${path}admin/human_resources/pay/attendance">근태관리</a></li>
								<li><a href="${path}admin/human_resources/pay/salary">급여등록</a></li>
								<li><a
									href="${path}admin/human_resources/pay/salary_list">급여대장</a></li>
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>근태관리</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- bootstrap datepicker -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" />
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<!--
<script type="text/javascript">
if(#startDate < #endDate){
  alert("시작일은 종료일을 넘길 수 없습니다.");
}
</script> -->
</head>

<style>
.form-control {font-size:12px;}
.btn {
    width:100px;
    background-color: #68A4C4;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    cursor: pointer;
}
</style>

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
								aria-expanded="false"> <img src="${img}sample/img.jpg"
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
				<div class="top_menu">
					<table class="table" style="text-align:center; font-size: 12px;">
						<tr>
							<td style="width: 5%"><select class="form-control">
									<option selected>구분</option>
									<option>지각</option>
									<option>정상</option>
									<option>조퇴</option>
									<option>휴가</option>
							</select></td>
							<td style="width: 10%"><input class="form-control"
								type="text" id="comNum_Name" placeholder="사번  입력"></td>
							<td colspan=2  style="width: 15%;"><input class="form-control"
								type="date" id="startDate"></td>
							<td colspan=2  style="width: 15%;"><input class="form-control"
								type="date" id="endDate"></td>
							<td colspan=4 align="left" style="width: 55%;">
							<%-- <button class="btn" id="btn" type="submit"><img
								src="${img}admin/search_icon.png" width="10%"></button></td>
								<td> --%>
								<input type="button" class="btn" style="padding: 6px 6px;" onclick="" value="검색">
								<input type="button" class="btn" style="padding: 6px 6px;" onclick="" value="초기화">
								</td>
						</tr>
						<tr>
							<%-- <td>번호(${search_Cnt})</td> --%>
							<th style="width: 10%">구분</th>
							<th style="width: 10%">사번</th>
							<th style="width: 10%">날짜</th>
							<th style="width: 10%">출근 시간</th>
							<th style="width: 10%">퇴근 시간</th>
							<th colspan="4" style="width: 10%">지각 사유</th>
						</tr>
						<c:if test="${search_Cnt > 0}">
							<c:forEach var="dto" items="${dtos}">
								<tr>
									<c:if test="${dto.num == 1}">
										<td style="text-align:center">출근</td>
									</c:if>
									<c:if test="${dto.num == 2}">
										<td style="text-align:center">퇴근</td>
									</c:if>
									<c:if test="${dto.num == 3}">
										<td style="text-align:center">지각</td>
									</c:if>
									<td style="text-align:center">${dto.id}</td>
									<td><fmt:formatDate value="${dto.inDay}" pattern="yyyy-MM-dd"/></td>
									<td><fmt:formatDate value="${dto.inTime}" pattern="HH:mm:ss"/></td>
									<td><fmt:formatDate value="${dto.outTime}" pattern="HH:mm:ss"/></td>
									<td colspan="4">${dto.reason}</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<!-- /page content -->


				<!-- footer content -->
				<footer>
					<div class="pull-right">황동국팀 - 관리자 페이지</div>
					<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->
			</div>
			<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
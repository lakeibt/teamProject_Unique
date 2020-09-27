<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]학생 메인</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../student/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../student/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-xl-2 col-lg-12">
						<div class="card card-profile" style="height:580px;">
							<div class="card-avatar">
								<img class="img" src="${stu_photo}myPage_sample.jpg">
							</div>
							<div class="card-body">
								<h4 class="card-title">이름(학번)</h4>
								<h6 class="card-category">전공학과</h6>
								<p class="card-description">블라블라 어쩌고</p>
							</div>
						</div>
					</div>
					<div class="col-xl-10 col-lg-12">
						<div class="row">
							<div class="card">
								<div class="card-header card-header-primary">
									<div class="nav-tabs-navigation">
										<div class="nav-tabs-wrapper">
											<span class="nav-tabs-title">취업/공모전 정보</span>
											<ul class="nav nav-tabs" data-tabs="tabs">
												<li class="nav-item">
													<a class="nav-link active show" href="" data-toggle="tab">
														<i class="material-icons">work_outline</i>취업
													</a>
												</li>
												<li class="nav-item">
													<a class="nav-link active show" href="" data-toggle="tab">
														<i class="material-icons">event</i>공모전
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead class="text-primary">
												<tr>
													<th style="width: 20%">글번호</th>
													<th style="width: 40%">제목</th>
													<th style="width: 20%">출처</th>
													<th style="width: 20%">작성일자</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td style="width: 10%">1</td>
													<td style="width: 60%">어쩌고 출판사 공모전</td>
													<td style="width: 20%">뭐뭐출판</td>
													<td style="width: 10%">2020.09.01</td>
												</tr>
												<tr>
													<td style="width: 10%">2</td>
													<td style="width: 60%">저쩌고 기업 공채 모집</td>
													<td style="width: 20%">블라기업</td>
													<td style="width: 10%">2020.09.01</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-6 col-lg-12">
								<div class="card">
									<div class="card-header card-header-primary">
										<h4 class="card-title">수강정보</h4>
										<select class="form-control">
											<option>2019-1</option>
											<option>2019-2</option>
											<option>2020-1</option>
											<option>2020-2</option>
										</select>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead class="text-primary">
													<tr>
														<th style="width: 60%">과목명</th>
														<th style="width: 30%">담당교수</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td style="width: 60%">쉽고재밌게즐기는건축학</td>
														<td style="width: 30%">김건축</td>
													</tr>
													<tr>
														<td style="width: 60%">몸으로배우는모션인식AR</td>
														<td style="width: 30%">Mr.Ar</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-6 col-lg-12">
								<div class="card">
									<div class="card-header card-header-primary">
										<h4 class="card-title">학점정보</h4>
										<select class="form-control">
											<option>2019-1</option>
											<option>2019-2</option>
											<option>2020-1</option>
											<option>2020-2</option>
										</select>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead class="text-primary">
													<tr>
														<th style="width: 60%">과목명</th>
														<th style="width: 24%">담당교수</th>
														<th style="width: 16%">학점</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td style="width: 60%">쉽고재밌게즐기는건축학</td>
														<td style="width: 24%">김건축</td>
														<td style="width: 16%">A</td>
													</tr>
													<tr>
														<td style="width: 60%">몸으로배우는모션인식AR</td>
														<td style="width: 24%">Mr.Ar</td>
														<td style="width: 16%">C++</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
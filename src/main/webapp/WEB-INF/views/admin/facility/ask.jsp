<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>시설문의관리</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	<link href="${resources}css/style.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="/WEB-INF/views/include/admin_top_nav.jsp"%>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<section class="breadcrumbs">
					<div class="container">
						<!-- 쪽지 확인 페이지 -->
						<h3>시설문의함</h3>
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
												                    <option value="1" >제목</option>
												                    <option value="2" >소속</option>
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
															<th colspan="8">문의 목록</th>
														</tr>
													</thead>
													<thead>
														<tr>
															<th style="width:10%;">번호</th>
															<th style="width:60%;">제목</th>
															<th style="width:15%;">소속</th>
															<th style="width:15%;">날자</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td style="width:10%;">1</td>
															<td style="width:60%;">이렇게</td>
															<td style="width:15%;">건설기계과</td>
															<td style="width:15%;">2020.10.10</th>
														</tr>
														<tr>
															<td style="width:10%;">2</td>
															<td style="width:60%;">하면</td>
															<td style="width:15%;">건축설계과</td>
															<td style="width:15%;">2020.10.10</th>
														</tr>
														<tr>
															<td style="width:10%;">3</td>
															<td style="width:60%;">될까요?</td>
															<td style="width:15%;">프로그래밍과</td>
															<td style="width:15%;">2020.10.10</th>
														</tr>
													</tbody>
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
																<th colspan="8">내용</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th>번호</th>
																<td>1</td>
																<th>제목</th>
																<td>이렇게</td>
																<th>발신자</th>
																<td>건설기계과</td>
																<th>발신일</th>
																<td>2020.10.10</td>
															</tr>
															<tr>
																<td colspan="8" style="display:table-cell; vertical-align: middle;"> <!-- 세로 중앙 정렬이 안 먹힘... -->
																	<p class="form-control" style="width:100%; height:400px;">
																		오우 헬파티
																	</p>
																</td>
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
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<title></title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
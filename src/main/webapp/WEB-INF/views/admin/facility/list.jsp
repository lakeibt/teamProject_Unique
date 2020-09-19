<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>시설물 관리 리스트</title>
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
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>인사/연봉 조회</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
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
				<div>
					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title"><h4>인사/연봉 조회</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color: #73879C;">
											<tr>
												<th>관리항목명</th>
												<th>사용여부</th>
												<th>사용종료일</th>
												<th>비고</th>
											</tr>
										</thead>
									
										<tbody style="color: grey;">
											<tr>
												<td>총장</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>부장</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>과장</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>계장</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>주임</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>사원</td>
												<td>사용</td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
										</table>
										<a id="attendanceModify" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">수정</a>
										<a id="attendanceDelete" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">삭제</a><br>
									</table>
									<div id="codeRank_data">
										<!-- 결과 출력 위치 -->
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
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
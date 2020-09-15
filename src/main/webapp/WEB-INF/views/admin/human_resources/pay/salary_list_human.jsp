<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>사원별 급/상여지급현황</title>
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
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<div class="x_title"><h4>2020/7 정규 (급여)</h4></div>
							<div class="x_content">
								<table class="table">
									<thead style="color:#73879C;">
										<tr>
											<th>귀속연월</th>
											<th>구분</th>
											<th>사원번호</th>
											<th>성명</th>
											<th>부서</th>
											<th>지급총액</th>
											<th>급여</th>
											<th>식대</th>
											<th>차량유지비</th>
											<th>야간수당</th>
											<th>특근수당(휴일)</th>
										</tr>
									</thead>
									<tbody style="color:grey;">
										<tr>
											<th>2020/08</th>
											<th>급여</th>
											<th>100001</th>
											<td>홍길동</td>
											<td>영업부</td>
											<td>3,300,000</td>
											<td>3,000,000</td>
											<td>100,000</td>
											<td>200,000</td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>2020/08</th>
											<th>급여</th>
											<th>100002</th>
											<td>이민호</td>
											<td>기술부</td>
											<td>3,300,000</td>
											<td>3,000,000</td>
											<td>100,000</td>
											<td>200,000</td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>2020/08</th>
											<th>급여</th>
											<th>100003</th>
											<td>김태리</td>
											<td>기술부</td>
											<td>3,300,000</td>
											<td>3,000,000</td>
											<td>100,000</td>
											<td>200,000</td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
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
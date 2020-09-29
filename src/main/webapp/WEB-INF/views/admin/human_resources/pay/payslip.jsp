<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여대장</title>
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
									<c:forEach var="atos" items="${dtos}">
									<div class="x_title">
										<h4 style="align: center;">${atos.salary_name}=급여명세표=</h4>
									</div>
									<div class="x_content">
										<table class="table">
											
											<thead style="color: #73879C; width: 100px;">
												<tr style="color: #73879C;">
													<td style="width: 10%">사원번호</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.id}" readOnly></td>
													<td style="width: 10%">성명</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.name}" readOnly></td>
													<td style="width: 10%">부서</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.depart}" readOnly></td>
												</tr>
												<tr style="color: #73879C;">
													<td style="width: 10%">직급</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.rank}" readOnly></td>
													<td style="width: 10%">입사일</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.enterday}" readOnly></td>
													<td style="width: 10%">지급일자</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.salary_inday}" readOnly></td>
												</tr>
												<tr style="color: #73879C;">
													<td style="width: 10%">지급총액</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.salary}" readOnly></td>
													<td style="width: 10%">실지급액</td>
													<td style="width: 10%"><input
														class="form-control input-sm" type="text"
														value="${atos.salary}" readOnly></td>
												</tr>
											</thead>
											<tbody style="color: #73879C;">
												<tr style="color: #73879C; width: 100px;">
													<th style="width: 10%">수당항목명</th>
													<th style="width: 10%">지급유형</th>
													<th style="width: 10%" colspan="2">근무기록</th>
													<th style="width: 10%">수당금액</th>
													<th style="width: 10%">금액</th>

												</tr>
											</tbody>
											<tbody style="color: grey;">
												<tr>
													<th style="width: 10%">급여</th>
													<td style="width: 10%">고정급</td>
													<td style="width: 10%" colspan="2"></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.salary}"/></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.salary}"/></td>
												</tr>
												<tr>
													<th style="width: 10%">식대</th>
													<td style="width: 10%">고정급</td>
													<td style="width: 10%" colspan="2"></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.meal}"/></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.meal}"/></td>
												</tr>
												<tr>
													<th style="width: 10%">차량유지비</th>
													<td style="width: 10%">고정급</td>
													<td style="width: 10%" colspan="2"></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.contract_vehicle}"/></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.contract_vehicle}"/></td>
												</tr>
												<tr>
													<th style="width: 10%">합계</th>
													<td style="width: 10%"></td>
													<td style="width: 10%" colspan="2"></td>
													<td style="width: 10%"></td>
													<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${atos.salary+atos.meal+atos.contract_vehicle}"/></td>
												</tr>
											</tbody>
										</table>
									</div>
								</c:forEach>
							</div>
								
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->


			<!-- footer content -->
			<%-- <%@ include file="/WEB-INF/views/include/admin_footer.jsp"%> --%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
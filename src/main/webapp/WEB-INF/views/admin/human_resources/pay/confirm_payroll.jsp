<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여대장 조회</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
<script type="text/javascript">


</script>

</head>
<body>
	<div class="row">
		<div class="col-md-12 col-sm-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					${salary_name}
				</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false"><i
							class="fa fa-wrench"></i></a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
							x-placement="bottom-start"
							style="position: absolute; transform: translate3d(-5px, 30px, 0px); top: 0px; left: 0px; will-change: transform;">
							<a class="dropdown-item">수정 불가</a>
						</div></li>
					<li><a class="close-link"><i class="fa fa-close"></i></a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				
				<div class="table-responsive">
					<table class="table table-striped jambo_table bulk_action">
						<thead>
							<tr class="headings">
								
								<th class="column-title">사원번호</th>
								<th class="column-title">성명</th>
								<th class="column-title">직급</th>
								<th class="column-title">부서명</th>
								<c:if test="${salary_division==1}">
									<th class="column-title">급여</th>
								</c:if>
								<c:if test="${salary_division!=1}">
									<th class="column-title">상여</th>
								</c:if>
								<c:if test="${salary_division==1}">
									<th class="column-title">식대</th>
									<th class="column-title">차량유지비</th>
								</c:if>
								<th class="column-title">총합계</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="stos" items="${stos}">
							<input type="hidden" id="salaryNum" name="salaryNum" value="${salary_input_num}">
							<input type="hidden" id="divisionNum" name="divisionNum" value="${atos.payments_division}">
							<input type="hidden" id="id" name="id" value="${stos.id}">
								<c:if test="${stos.salary_division==1}">
									<tr class="even pointer">
										<td>
											<a class="btn btn-app" style="height: 30px; padding: 5px;" onclick="payslipInfo('${stos.id}','${salary_input_num}')">${stos.id}</a>
										</td>
										<td>${stos.name}</td>
										<td>${stos.rank}</td>
										<td>${stos.depart_name}</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.pay}" /></td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.meal}" /></td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.contract_vehicle}" /></td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.paytotal}" />원</td>
									</tr>
								</c:if>
								<c:if test="${stos.salary_division!=1}">
									<tr class="even pointer">
										<td><a class="btn btn-app" style="height: 30px; padding: 5px;" onclick="payslipInfo('${stos.id}','${salary_input_num}')">${stos.id}</a></td>
										<td>${stos.name}</td>
										<td>${stos.rank}</td>
										<td>${stos.depart_name}</td>
										<td>${stos.rate/100} %</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${stos.bonustotal}"/> 원</td>
									</tr>
								</c:if>
							</c:forEach>
											
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div id="pay_slip"></div>
	</div>
	</div>
</body>
</html>
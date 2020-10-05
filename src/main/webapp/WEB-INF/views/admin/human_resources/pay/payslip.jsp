<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>급여대장</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
</head>
<body>

<div class="row">
	<div class="col-md-12">
		<div class="x_panel">
				<div class="x_title">
					<h4 style="align: center;">${vo.salary_name} 급여명세표</h4>
				</div>
				<div class="x_content">
					<table class="table">
						<thead style="color: #73879C; width: 100px;">
							<tr style="color: #73879C;">
								<td style="width: 10%">사원번호</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.id}" readOnly></td>
								<td style="width: 10%">성명</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.name}" readOnly></td>
								<td style="width: 10%">부서</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.depart_name}" readOnly></td>
							</tr>
							<tr style="color: #73879C;">
								<td style="width: 10%">직급</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.rank}" readOnly></td>
								<td style="width: 10%">입사일</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.enterday}" readOnly></td>
								<td style="width: 10%">지급일자</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.salary_inday}" readOnly></td>
							</tr>
							<tr style="color: #73879C;">
								<td style="width: 10%">지급총액</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.salary}" readOnly></td>
								<td style="width: 10%">실지급액</td>
								<td style="width: 10%"><input
									class="form-control input-sm" type="text"
									value="${vo.salary}" readOnly></td>
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
							<c:if test="${vo.salary_division == 1}">
								<tr>
									<th style="width: 10%">급여</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">식대</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.meal}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.meal}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">차량유지비</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.contract_vehicle}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.contract_vehicle}"/></td>
								</tr>
								<tr>
									<th style="width: 10%">합계</th>
									<td style="width: 10%"></td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary+vo.meal+vo.contract_vehicle}"/></td>
								</tr>
							</c:if>
							<c:if test="${vo.salary_division != 1}">
								<tr>
									<th style="width: 10%">상여</th>
									<td style="width: 10%">고정급</td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
								</tr>
								
								<tr>
									<th style="width: 10%">합계</th>
									<td style="width: 10%"></td>
									<td style="width: 10%" colspan="2"></td>
									<td style="width: 10%"></td>
									<td style="width: 10%"><fmt:formatNumber type="number" maxFractionDigits="3" value="${vo.salary*(vo.rate/100)}"/></td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
		</div>
			
	</div>
</div>

</body>
</html>
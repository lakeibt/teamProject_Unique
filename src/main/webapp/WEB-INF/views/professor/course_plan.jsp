<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link href="${resources}css/professor.css" rel="stylesheet">
</head>
<body>
<div class="col-md-12">
	<div class="card" style="padding: 20px;">
		<div>
			<button class="coures_plan_title_button3" onclick="deleteDiv(this)">
				<i class="fas fa-times"></i>
			</button>
		</div>
		<h2 class="entry-title">
			<a href="#">강의 계획서 등록</a>
		</h2>
		<div class="col-md-12" id="course_plan">
			<div class="card" style="padding: 40px;">
				<div class="course_plan">
					<form action="${professor}coursePlan_modify?${_csrf.parameterName}=${_csrf.token}" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<input type="hidden" name="co_code" value="${co_code}">
						<table class="table table-striped jambo_table bulk_action" style="font-size: 15px; text-align: center;">
							<tr>
								<th colspan="2">강의설명</th>
							</tr>
							<tr>
								<td colspan="8" style="display: table-cell; vertical-align: middle;">
									<textarea name="subject" rows="10" style="width: 100%;">${vo.getSubject()}</textarea>
								</td>
							</tr>
							<tr>
								<th rowspan="6">학점 기준</th>
								<th>
									<table class="table">
										<tr>
											<td>출석</td>
											
											<td><input type="text" name="attend" value="<fmt:formatNumber value="${vo.getAttend() * 10}" pattern="00" />"></td>
										</tr>
										<tr>
											<td>시험(중간)</td>
											<td><input type="text" name="midterm"  value="<fmt:formatNumber value="${vo.getMidterm() * 10}" pattern="00" />"></td>
										</tr>
										<tr>
											<td>시험(기말)</td>
											<td><input type="text" name="finals"  value="<fmt:formatNumber value="${vo.getMidterm() * 10}" pattern="00" />"></td>
										</tr>
										<tr>
											<td>과제(개별 레포트/프레젠테이션)</td>
											<td><input type="text" name="assign_report" value="<fmt:formatNumber value="${vo.getAssign_report() * 10}" pattern="00" />"></td>
										</tr>
										<tr>
											<td>과제(팀 프로젝트)</td>
											<td><input type="text" name="assign_team"  value="<fmt:formatNumber value="${vo.getAssign_team() * 10}" pattern="00" />"></td>
										</tr>
									</table>
								</th>
							</tr>
						</table>
						<table class="table table-striped jambo_table bulk_action" id="plan_table" style="border: 1px solid lightgrey; text-align: center; font-size: 13px;">
							<tr>
								<th colspan="2">주차별 강의내용</th>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									1주차
								</td>
								<td>
									<input type="text" name="week_1" value="${vo.getWeek_1()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									2주차
								</td>
								<td>
									<input type="text" name="week_2" value="${vo.getWeek_2()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									3주차
								</td>
								<td>
									<input type="text" name="week_3" value="${vo.getWeek_3()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									4주차
								</td>
								<td>
									<input type="text" name="week_4" value="${vo.getWeek_4()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									5주차
								</td>
								<td>
									<input type="text" name="week_5" value="${vo.getWeek_5()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									6주차
								</td>
								<td>
									<input type="text" name="week_6" value="${vo.getWeek_6()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									7주차
								</td>
								<td>
									<input type="text" name="week_7" value="${vo.getWeek_7()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									8주차
								</td>
								<td>
									<input type="text" name="week_8" value="${vo.getWeek_8()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									9주차
								</td>
								<td>
									<input type="text" name="week_9" value="${vo.getWeek_9()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									10주차
								</td>
								<td>
									<input type="text" name="week_10" value="${vo.getWeek_10()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									11주차
								</td>
								<td>
									<input type="text" name="week_11" value="${vo.getWeek_11()}">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									12주차
								</td>
								<td>
									<input type="text" name="week_12" value="${vo.getWeek_12()}">
								</td>
							</tr>
						</table>
						<div align="center">
							<button class="btn btn-outline-info" type="submit">수정</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>

</html>
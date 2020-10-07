<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<!DOCTYPE html>
<html>

<head>
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
					<form action="${professor}coursePlan_add?${_csrf.parameterName}=${_csrf.token}" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<input type="hidden" name="co_code" value="${co_code}">
					<input type="hidden" name="id" value="${sessionScope.memId}">
						<table class="table table-striped jambo_table bulk_action" style="font-size: 15px; text-align: center;">
							<tr>
								<th colspan="2">강의설명</th>
							</tr>
							<tr>
								<td colspan="8" style="display: table-cell; vertical-align: middle;">
									<textarea name="subject" rows="10" style="width: 100%;"></textarea>
								</td>
							</tr>
							<tr>
								<th rowspan="6">학점 기준</th>
								<th>
									<table class="table">
										<tr>
											<td>출석</td>
											<td><input type="text" name="attend" placeholder="ex) 10"></td>
										</tr>
										<tr>
											<td>시험(중간)</td>
											<td><input type="text" name="midterm"  placeholder="ex) 30"></td>
										</tr>
										<tr>
											<td>시험(기말)</td>
											<td><input type="text" name="finals"  placeholder="ex) 30"></td>
										</tr>
										<tr>
											<td>과제(개별 레포트/프레젠테이션)</td>
											<td><input type="text" name="assign_report"  placeholder="ex) 15"></td>
										</tr>
										<tr>
											<td>과제(팀 프로젝트)</td>
											<td><input type="text" name="assign_team"  placeholder="ex) 15"></td>
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
									<input type="text" name="week_1" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									2주차
								</td>
								<td>
									<input type="text" name="week_2" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									3주차
								</td>
								<td>
									<input type="text" name="week_3" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									4주차
								</td>
								<td>
									<input type="text" name="week_4" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									5주차
								</td>
								<td>
									<input type="text" name="week_5" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									6주차
								</td>
								<td>
									<input type="text" name="week_6" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									7주차
								</td>
								<td>
									<input type="text" name="week_7" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									8주차
								</td>
								<td>
									<input type="text" name="week_8" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									9주차
								</td>
								<td>
									<input type="text" name="week_9" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									10주차
								</td>
								<td>
									<input type="text" name="week_10" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									11주차
								</td>
								<td>
									<input type="text" name="week_11" placeholder="강의내용">
								</td>
							</tr>
							<tr class="plan_tr">
								<td class="coures_plan_weeks_td">
									12주차
								</td>
								<td>
									<input type="text" name="week_12" placeholder="강의내용">
								</td>
							</tr>
						</table>
						<div align="center">
							<button class="btn btn-outline-info" type="submit">저장</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>

</html>
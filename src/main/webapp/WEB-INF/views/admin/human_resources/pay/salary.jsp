<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>급여등록</title>
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
				<form action="salary_enroll" method="post" name="salary_input">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
						<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title"><h4>급여 정보 입력</h4></div>
								<div class="x_content">
									<table class="table" align="center">
										<thead style="color:#73879C;">
											<tr>
												<th>급여구분</th>
												<td><select class="form-control" style="float:left; width:100px;" name="salary_division">
													  <option value="1">급여</option>
													  <option value="2">상여</option>
													</select></td>
											</tr>
											<tr>
												<th>지급구분</th>
												<td><select class="form-control" style="float:left; width:100px;" name="payments_division">
													  <option value="1">정규</option>
													  <option value="2">비정규</option>
													  <option value="3">교수</option>
													</select></td>
											</tr>
											<tr>
												<th>대상기간</th>
												<td><input class="form-control" type="date"
													id="startDate" style="float:left; width:250px;" name="payments_start"><a style="margin-top:8px; margin-left:5px; margin-right:5px; float:left;">~</a> 
													
													<input class="form-control" type="date"
													id="endDate" style="float:left; width:250px;" name="payments_end"></td>
											</tr>
											<tr>
												<th>지급일</th>
												<td><input class="form-control" type="date"
													id="tranceDate" style="float:left; width:250px;" name="salary_inday"></td>
											</tr>
											<tr>
												<th>지급연월</th>
												<td><select class="form-control" style="float:left; width:100px;" name="payments_month_01">
													  <option value="2015">2015</option>
													  <option value="2016">2016</option>
													  <option value="2017">2017</option>
													  <option value="2018">2018</option>
													  <option value="2019">2019</option>
													  <option value="2020" selected>2020</option>
													  <option value="2021">2021</option>
													  <option value="2022">2022</option>
													  <option value="2023">2023</option>
													</select>
													<select class="form-control" style="float:left; width:100px;" name="payments_month_02">
													  <option value="1">1월</option>
													  <option value="2">2월</option>
													  <option value="3">3월</option>
													  <option value="4">4월</option>
													  <option value="5">5월</option>
													  <option value="6">6월</option>
													  <option value="7">7월</option>
													  <option value="8">8월</option>
													  <option value="9">9월</option>
													  <option value="10">10월</option>
													  <option value="11">11월</option>
													  <option value="12">12월</option>
													  
													</select></td>
											</tr>
											<tr>
												<th>급여대장명칭</th>
												<td><input class="form-control input-sm" type="text" name="salary_name"></td>
											</tr>
											<tr align="center">
												<td style="algin:center;"><input class="form-control input-sm" type="submit" style="float:left; width:100px;"
													value="등록"> <input class="form-control input-sm" type="reset" value="취소" style="float:left; width:100px;">
												</td>
											</tr>
										</thead>
									</table>
									
								</div>
							</div>
						</div>
					</div>
				</form>
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
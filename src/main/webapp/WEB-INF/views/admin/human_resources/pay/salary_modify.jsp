<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여수정</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
<script>
$(document).ready(function() {
    $("#myButton").click(function() {
        $("#salary_modifyPro").submit();
    });
 });
</script>
</head>
<body>
<div>
	<div class="row">
		<div class="col-md-12 col-sm-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					급여 계산/대장 수정
				</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="btn btn-app"
					style="height: 30px; padding: 5px; float: right;" id="myButton">완료</a>
						</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				
				<div class="table-responsive">
				<form action="salary_modifyPro" method="get" id="salary_modifyPro">
					<input type="hidden" id="salary_input_num" name="salary_input_num" value="${dto.salary_input_num}">
						<table class="table table-striped jambo_table bulk_action">
							<thead>
								<tr class="headings">
									<th class="column-title">순서</th>
									<th class="column-title">급여구분</th>
									<th class="column-title">지급구분</th>
									<th class="column-title">지급일</th>
									<th class="column-title">대장명칭</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${dto.salary_input_num}</td>
									<td><select class="form-control" style="float:left; width:100px;" name="salary_division">
										  <option value="1">급여</option>
										  <option value="2">상여</option>
										</select>
									</td>
									<td><select class="form-control" style="float:left; width:100px;" name="payments_division">
										  <option value="1">정규</option>
										  <option value="2">비정규</option>
										  <option value="3">교수</option>
										</select>
									</td>
									<td><input class="form-control" type="date"
									id="tranceDate" style="float:left; width:250px;" name="salary_inday">
									</td>
									<td><input class="form-control input-sm" type="text" name="salary_name" placeholder="${dto.salary_name}"></td>
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
</body>
</html>
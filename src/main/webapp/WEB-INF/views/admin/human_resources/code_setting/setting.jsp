<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>환경설정</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script>
function confirm() {
	if(!document.settingForm.rank.value) {
		alert("직급을 입력하세요");
		return false;
	} else if(!document.settingForm.month.value || document.settingForm.month.value < 0) {
		alert("기본급을 정확하게 입력하여 주시기 바랍니다");
		return false;
	} else if(!document.settingForm.date.value) {
		alert("지급일을 선택하세요");
		return false;
	}
	return true;
}
function show(num, rank) {
	if(document.getElementById(num).style.display == "") {
		document.getElementById(num).style.display = "none";
		document.getElementById('open'+num).className = 'glyphicon glyphicon-chevron-down';
	} else {
		humanList(rank, num);
		document.getElementById(num).removeAttribute('style');
		document.getElementById('open'+num).className = 'glyphicon glyphicon-chevron-up';
	}
}
</script>
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
			<div class="right_col" role="main" style="min-height:934px;">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">환경설정</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">직급/급여 관리</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<p>
											<font style="vertical-align:inherit;">
												<font style="vertical-align:inherit; align:right;">
													<a class="btn btn-app" onclick="addSetting();">
														<i class="fa fa-edit"></i>
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">직급추가</font>
														</font>
													</a>
												</font>
											</font>
										</p>
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings" align="center">
													<th class="column-title" style="width:10%">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">직급</font>
														</font>
													</th>
													<th class="column-title" style="width:23%">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">기본급(월)</font>
														</font>
													</th>
													<th class="column-title" style="width:23%">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">연봉</font>
														</font>
													</th>
													<th class="column-title" style="width:23%;">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">급여지급일</font>
														</font>
													</th>
													<th class="column-title no-link last" colspan="2" style="width:20%">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;"></font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="list" items="${list }" varStatus="status">
													<tr align="center">
														<td style="width:10%">${list.RANK }</td>
														<td style="width:23%"><fmt:formatNumber type="number" maxFractionDigits = "3" value="${list.SALARY}" /> 원</td>
														<td style="width:23%"><fmt:formatNumber type="number" maxFractionDigits = "3" value="${list.SALARY * 12}" /> 원</td>
														<td style="width:23%"><fmt:formatDate value = "${list.SALARYDAY}" pattern = "yyyy-MM-dd" /></td>
														<td style="width:10%">
															<a id="open${status.index+1 }" onclick="show('${status.index+1}', '${list.RANK}');" class="glyphicon glyphicon-chevron-down"></a>
														</td>
														<td style="width:10%">
															<a onclick="window.location='${admin}human_resources/code_setting/setting_deletePro?rank='+'${list.RANK}'" class="glyphicon glyphicon-minus"></a>
														</td>
													</tr>
													<tbody style="display:none;" id="${status.index + 1 }">
														
													</tbody>
												</c:forEach> 
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="display:block">
						<div class="col-md-12 col-sm-12" id="display"></div>
					</div>
					<script>
					var index = 0;
					var data = null;
					function addSetting() {
						sendRequest(setting_callback,"${admin}human_resources/code_setting/setting_form", "post");
					}
					function setting_callback() {
						var result = document.getElementById("display");
				        var data = httpRequest.responseText;
				        result.innerHTML = data;
					}
					function humanList(rank, num) {
						var param = "rank="+rank;
						index = num;
						sendRequest(humanList_callback, "${admin}human_resources/code_setting/setting_humanList", "get", param);
					}
					function humanList_callback() {
						var result = document.getElementById(index);
						data = httpRequest.responseText;
						result.innerHTML = data;
					}
					</script>
				</div>
			<!-- /page content -->
		</div>
	</div>
</div>
<!-- footer content -->
<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
<!-- /footer content -->
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>시설물 관리 리스트</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
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
									<font style="vertical-align:inherit;">시설물 관리</font>
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
											<font style="vertical-align:inherit;">문의/요청 목록</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<tbody>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<select style="width:49%; height:60px; float:left; margin-right:10px;" class="form-control" 
																		name="code" style="padding: 8px;" id="code" onchange="return codeSelect();">      
												                    <option value="none">코드선택</option>
												                    <c:forEach var="code" items="${code }">
												                    <option value="${code.E_CODE }">${code.E_CODENAME }</option>
												                    </c:forEach>
																</select>
															</font>
															<font style="vertical-align:inherit;">
																<select style="width:49%; height:60px;" class="form-control" name="kinds" style="padding: 8px;" 
																		id="kinds" onchange="return kindsSelect();">
																	<option value="none">분류선택</option>
																</select>
															</font>
														</font>
													</th>
												</tr>
											</tbody>
										</table>
										<script>
										function codeSelect() {
											var selected = document.getElementById('code');
											var value = selected.options[selected.selectedIndex].value;
											var kinds = document.getElementById('kinds');
											var kinds_value = kinds.options[kinds.selectedIndex].value;
											
											var codeArray = new Array;
											var kindArray = new Array;
											
											<c:forEach var="i" items="${kinds}">
												codeArray.push('${i.E_CODE}');
												kindArray.push('${i.E_KIND}');
											</c:forEach>
											
											if(kinds.length > 1) {
												var len = kinds.length;
												for(var i = 1; i < len; i++) { kinds.options[1] = null; }
												for(var i = 0; i < '${cnt}'; i++) {
													if(codeArray[i] == value) {
														var setOption = document.createElement('option');
														setOption.text = kindArray[i];
														setOption.value = kindArray[i];
														kinds.options.add(setOption);
													}
												}
											} else {
												for(var i = 0; i < '${cnt}'; i++) {
													if(codeArray[i] == value) {
														var setOption = document.createElement('option');
														setOption.text = kindArray[i];
														setOption.value = kindArray[i];
														kinds.options.add(setOption);
													}
												}
											}
										}
										function kindsSelect() {
											var selected = document.getElementById('code');
											var value = selected.options[selected.selectedIndex].value;
											var kinds = document.getElementById('kinds');
											var kinds_value = kinds.options[kinds.selectedIndex].value;
											var param = "code="+value+"&kind="+kinds_value;
											sendRequest(list_callback, "${admin}facility/listNext", "get", param);
										}
										function list_callback() {
											var result = document.getElementById("next");
											if (httpRequest.readyState == 4) {
												if (httpRequest.status == 200) {
													var data = httpRequest.responseText;
													result.innerHTML = data;
												} else result.innerHTML = "Error!";
											} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
										}
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="display:block">
						<div class="col-md-12 col-sm-12" id="next"></div>
					</div>
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
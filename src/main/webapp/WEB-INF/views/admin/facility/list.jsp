<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>시설물 관리 리스트</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<link href="${resources}css/style.css" rel="stylesheet">
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
				<section class="breadcrumbs">
					<div class="container">
						<!-- 쪽지 확인 페이지 -->
						<h3>시설물 관리</h3>
						<hr> 
						<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="margin-top: -40px;">
							<div class="container">
							<div class="contact">
								<div class="row">
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
												<form class="php-email-form">
													<table class="table" >
														<tr>
															<th align="center" style="border:none;">
																<select style="width:40%; height:60px; float:left; margin-right:10px;" class="form-control" 
																		name="code" style="padding: 8px;" id="code" onchange="return codeSelect();">      
												                    <option value="none">코드선택</option>
												                    <c:forEach var="code" items="${code }">
												                    <option value="${code.E_CODE }">${code.E_CODENAME }</option>
												                    </c:forEach>
																</select>
																<select style="width:40%; height:60px;" class="form-control" name="kinds" style="padding: 8px;" 
																		id="kinds" onchange="return kindsSelect();">
																	<option value="none">분류선택</option>
																</select>
															</th>
														</tr>
													</table>
												</form>
											</div>
										</div>
									</div>
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
									<div class="col-lg-12 d-flex flex-column justify-content-center-center" id="next">
									</div>
								</div>
							</div>
							</div>
						</section>
					</div>
				</section>
			</div>
			<!-- /page content -->
		</div>
	</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
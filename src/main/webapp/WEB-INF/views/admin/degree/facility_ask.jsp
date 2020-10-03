<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>시설문의</title>
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
									<font style="vertical-align:inherit;">시설문의</font>
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
									<p>
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit; text-align:right;">
												<a class="btn btn-app" onclick="askForm('${memId}');">
													<i class="fa fa-edit"></i>
													<font style="vertical-align:inherit;">
														<font style="vertical-align:inherit;">문의/요청 등록</font>
													</font>
												</a>
											</font>
										</font>
									</p>
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">번호</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">타입</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">제목</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">부서</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">요청자</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">요청일</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">상태</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">삭제</font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="list" items="${list }">
												<tr>
													<td>${list.NUM }</td>
													<td>${list.TYPE }</td>
													<td>
														<a onclick="content('${list.NUM}');">${list.TITLE }</a>
													</td>
													<td>${list.DEPART }</td>
													<td>${list.NAME }</td>
													<td>${list.DAY }</td>
													<c:if test="${list.STATE == '반려' }">
													<td style="color:red;">${list.STATE }</td>
													</c:if>
													<c:if test="${list.STATE != '반려' }">
													<td>${list.STATE }</td>
													</c:if>
													<c:if test="${list.ID == memId && list.STATE != '요청완료' }">
													<td>
														<button type="button" class="btn btn-secondary" onclick="window.location='${admin}degree/facility_ask_delete?num='+${list.NUM}">
															<i class="fa fa-close"></i>
														</button>
													</td>
													</c:if>
													<c:if test="${list.ID != memId || list.STATE == '요청완료' }">
													<td>
													</td>
													</c:if>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<script>
										function content(num) {
											var param = "num="+num;
											sendRequest(content_callback, "${admin}degree/facility_ask_content", "get", param);
										}
										function content_callback() {
											var result = document.getElementById("display");
											if (httpRequest.readyState == 4) {
												if (httpRequest.status == 200) {
													var data = httpRequest.responseText;
													result.innerHTML = data;
												} else result.innerHTML = "Error!";
											} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
										}
										function askForm(id) {
											var param = "id="+id;
											sendRequest(form_callback, "${admin}degree/facility_ask_form", "get", param);
										}
										function form_callback() {
											var result = document.getElementById("display");
											if (httpRequest.readyState == 4) {
												if (httpRequest.status == 200) {
													var data = httpRequest.responseText;
													result.innerHTML = data;
												} else result.innerHTML = "Error!";
											} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
										}
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
										
										var checkFirst = true;
										var loopSendKeyword = false;
										var lastKeyword = null;
										
										function searchName() {
											show("dropDown");
											if(checkFirst == true) {
												loopSendkeyword = true;
												setTimeout(searchKeyword(), 300);
											}
											
											function searchKeyword() {
												if(loopSendkeyword == false) return false;
												
												var keyword = document.askForm.e_name.value;
												
												if(keyword == null) {
													hide("dropDown");
													lastKeyword = "";
												} else if(keyword != lastKeyword) {
													var selected = document.getElementById('code');
													var value = selected.options[selected.selectedIndex].value;
													var kinds = document.getElementById('kinds');
													var kinds_value = kinds.options[kinds.selectedIndex].value;
													lastKeyword = keyword;
													var param = "keyword="+keyword+"&code="+value+"&kind="+kinds_value;
													sendRequest(search_callback, "${admin}degree/facility_search", "GET", param);
												}
											}
											
											function search_callback() {
												var searchList = document.getElementById("dropDown");
												
												if(httpRequest.readyState == 4) { 
										 			if(httpRequest.status == 200) { 
										 				var data = httpRequest.responseText;
										 				searchList.innerHTML = data;
										 			} else searchList.innerHTML = "Error!";
										 		} else searchList.innerHTML = "ErrorCode : " + httpRequest.readyState;
											}
										}
										
										function select(search) {
											document.askForm.e_name.value = search;
											loopSendkeyword = false;
											checkFirst = true;
											hide("dropDown");
										}
										
										function show(divID) {
											var result = document.getElementById(divID);
											if(result) result.style.display = "";
										}
										
										function hide(divID) {
											var result = document.getElementById(divID);
											if(result) result.style.display = "none";
										}
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="display:block">
						<div class="col-md-12 col-sm-12" id="display"></div>
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
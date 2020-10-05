<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>주차관리</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<style>
.btn {
	width: 100px;
	background-color: #68A4C4;
	border: none;
	color: #fff; 
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 18px;
	cursor: pointer;
}
</style>
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
									<font style="vertical-align:inherit;">주차 관리 시스템</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_content">
									<div class="table-responsive">
										<table class="table table-striped jambo_table">
											<tbody>
												<tr class="headings">
													<th class="column-title" style="width:20%;">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<select name="parkSearch" id="parkSearch" style="padding: 8px;">      
												                    <option value="carnum" >차량번호(숫자 4자리)</option>
												                    <option value="date" >날짜</option>
																</select>
															</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">
																<input class="form-control" id="input" type="text" placeholder="입력">
															</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">
																	<input type="button" id="select1" class="btn" style="float:left; height:40px; padding: 10px 0;" onclick="content()" value="검색">
																</font>
															</font>
														</span>
													</th>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">출입 목록</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
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
															<font style="vertical-align:inherit;">차량번호</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">날짜</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">입차시간</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">출차시간</font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${parkCnt > 0}">
													<c:forEach var="dto" items="${dtos}">
													<c:set var="TextValue" value="${dto.pintime}"/>
														<tr>
															<td>${dto.num}</td>
															<td>${dto.carnum}</td>
															<td>${fn:substring(TextValue,0,15)}</td>
															<td>${dto.pintime}</td>
															<td>${dto.pouttime}</td>
														</tr>
													</c:forEach>
												</c:if>
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
				</div>
			<!-- /page content -->
		</div>
	</div>
</div>
<script type="text/javascript">
function content() {

   var yourSelect = document.getElementById("parkSearch");
   var input = document.getElementById("input").value;
   var value = yourSelect.options[yourSelect.selectedIndex].value;
   var param = "param=" + value +"&"+"intext="+input;
    
   sendRequest(content_callback,"parknext", "get", param);
}
function content_callback() {
   var result = document.getElementById("searchinfo");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}
</script>
<!-- footer content -->
<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
<!-- /footer content -->
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
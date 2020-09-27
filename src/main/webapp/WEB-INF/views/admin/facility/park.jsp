<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<head>
	<title>주차관리</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	<link href="${resources}css/style.css" rel="stylesheet">
</head>
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
						<h3>주차 관리 시스템</h3>
						<hr> 
						<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="margin-top: -40px;">
							<div class="container">
							<div class="contact">
								<div class="row">
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
												<form class="php-email-form" style="height: 110px;">
													<table class="table"> 
														<tr>
															<td align="right" style="width: 30%">
																<select name="parkSearch" id="parkSearch" style="padding: 8px;">      
												                    <option value="carnum" >차량번호(숫자 4자리)</option>
												                    <option value="date" >날짜</option>
																</select>
															</td>
															<td style="width: 40%"><input class="form-control" id="input" type="text" placeholder="입력"></td>
															<td>
																<input type="button" id="select1" class="btn" style="float:left; padding: 10px 0;" onclick="content()" value="검색">
															</td>
														</tr>
													</table>
												</form>
											</div>
										</div>
									</div>
									<div class="col-lg-12 d-flex flex-column justify-content-center-center">
										<div class="icon-box">
											<div class="icon-box">
											<form class="php-email-form">
												<div id="searchinfo">
							
												</div>
												<table class="table" style="font-size:15px;">
													<thead>
														<tr>
															<th colspan="8"><h5>출입 목록</h5></th>
														</tr>
													</thead>
													<thead>
														<tr>
															<th style="width:10%;">번호</th>
															<th style="width:20%;">차량번호</th>
															<th style="width:20%;">날짜</th>
															<th style="width:20%;">입차시간</th>
															<th style="width:20%;">출차시간</th>
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
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							</div>
						</section>
					</div>
				</section>
			</div>
			<!-- /page content -->


			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
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
</body>
</html>
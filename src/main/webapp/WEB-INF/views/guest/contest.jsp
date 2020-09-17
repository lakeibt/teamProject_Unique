<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<style>
.form-control {font-size:12px;}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>공모전 공고페이지</h2>
				</div>
			</div>
		</section>
		<!-- 취업지원 공고페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<section class="service-details" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<table class="table" style="font-size:13px;">
								<tr>
									<td colspan="6">
										<select id="select1" class="form-control" style="width:30%; float:right;" onchange="content()">
											<option selected disabled>분야를 선택하세요</option>
											<option value="1">기획/아이디어</option>
											<option value="2">광고/마케팅</option>
											<option value="10">영상/UCC/사진</option>
											<option value="19">디자인/캐릭터/웹툰</option>
											<option value="20">웹/모바일/플래시</option>
											<option value="21">게임/소프트웨어</option>
											<option value="22">과학/공학</option>
											<option value="23">문학/글/시나리오</option>
											<option value="24">건축/건설/인테리어</option>
											<option value="25">네이밍/슬로건</option>
											<option value="26">예체능/미술/음악</option>
										</select>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="services">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<table class="table" style="font-size:12px;">
									<tbody>
										<tr>
											<th style="width:70%">공모전명</th>
											<th style="width:20%">주최사</th>
											<th style="width:10%">현재현황</th>
										</tr>
									</tbody>
								</table>
								<div id="coninfo">
						
								</div>
							</div>
							<div id="coninfo_detail">
						
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500"></section>
		<!-- End Contact Section -->

		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->


<%@ include file="../include/footer.jsp"%>
<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
<script type="text/javascript">
  
function content() {
   var yourSelect = document.getElementById("select1");
   console.log(yourSelect);
   var value = yourSelect.options[yourSelect.selectedIndex].value;
   console.log(value);
   var param = "param=" + value;
   
   sendRequest(content_callback,"contestnext", "get", param);
}
function content_callback() {
   var result = document.getElementById("coninfo");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}

function content1(var1) {
	console.log(var1);
   var param = "url=" + var1;
   
   sendRequest(content_callback1,"contestnext2", "get", param);
}
function content_callback1() {
   var result = document.getElementById("coninfo_detail");
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
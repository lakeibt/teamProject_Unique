<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<script>
jQuery(document).ready(function($) {
	$(".scroll").click(function(event){
		var offset = $("#coninfo_detail" + event).offset();
		var winH = $(window).height();
		event.preventDefault();
		$('html,body').animate({scrollTop : (offset.top - winH/2)}, 500);
	});
});
</script>
<style>
.form-control {font-size:15px;}

#btn1{
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    margin-right:-5px; 
}
#btn2{
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;    
    margin-left:-5px; 
}

#btn4{
    margin: 0 -5px;; 
}
#btn_group button{
    border: 1px solid #1E4356;
    background-color: rgba(0,0,0,0);
    color: #1E4356;
    padding: 3px 20px;
}
#btn_group button:hover{
    color:white;
    background-color: #1E4356;
}
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
							<table class="table" style="font-size:15px;">
								<tr>
									<td colspan="6">
										<select id="select1" class="form-control" style="width:30%; float:right; font-size:15px;" onchange="content(0)">
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
								<table class="table" style="font-size:15px;">
									<tbody>
										<tr>
											<th style="width:60%">공모전명</th>
											<th style="width:30%">주최사</th>
											<th style="width:10%">현재현황</th>
										</tr>
									</tbody>
								</table>
								<div id="coninfo">
						

								</div>
								<div id="btn_group">
							        <button class="number" id="btn1" onclick="content(1)" value="1">1</button>
							        <button class="number" id="btn3" onclick="content(2)" value="2">2</button>
							        <button class="number" id="btn4" onclick="content(3)" value="3">3</button>
							        <button class="number" id="btn3" onclick="content(4)" value="4">4</button>
							        <button class="number" id="btn2" onclick="content(5)" value="5">5</button>
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
  
function content(num) {
   var yourSelect = document.getElementById("select1");
   console.log("y : " + yourSelect);
   console.log("n : " + typeof(num));
   var value = yourSelect.options[yourSelect.selectedIndex].value;
   console.log("v : " + value);
   console.log("n : " + num);
   if(value == '분야를 선택하세요') {
	   alert('분야를 선택하세요');
   }
   var param = "param=" + value + "&"+ "num="+ num ;
   
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
   var1= var1.replace(/&/g,"%26").replace(/\+/g,"%2B");
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
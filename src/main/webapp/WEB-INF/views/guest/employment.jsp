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
					<h2>취업지원 공고페이지</h2>
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
													<option value="기계">기계</option>
													<option value="설계">설계</option>
													<option value="코딩">코딩</option>
													<option value="프론트">프론트</option>
													<option value="백엔드">백엔드</option>
										</select>
										<select id="select2" class="form-control" style="width:30%; float:right;" onchange="content2()">
													<option selected disabled></option>
													<option value="기계">기계</option>
													<option value="설계">설계</option>
													<option value="코딩">코딩</option>
													<option value="프론트">프론트</option>
													<option value="백엔드">백엔드</option>
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
											<th style="10%">번호</th>
											<th style="60%">제목</th>
											<th style="20%">기업/기관</th>
											<th style="10%">공고일</th>
										</tr>
									</tbody>
								</table>
								<div id="emplinfo">
						
								</div>
							</div>
						</div>
						<div class="col-lg-12 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<table class="table" style="font-size:12px;">
									<thead>
										<tr>
											<th colspan="8">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>번호</th>
											<td>1</td>
											<th>제목</th>
											<td>(주)일등 상반기 정규직 채용 공고 안내</td>
											<th>기업/기관</th>
											<td>(주)일등</td>
											<th>발신일</th>
											<td>2020.09.03</td>
										</tr>
										<tr>
											<td colspan="8" style="display:table-cell; vertical-align: middle;">
												<p class="form-control" style="width:100%; height:400px;">
												내용 어쩌고 저쩌고 와랄랄라 <br><br><br>
												
												<a href="#">더보기 ></a>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
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
  
function content  () {
       var yourSelect = document.getElementById("select1");
       console.log(yourSelect);
       var value = yourSelect.options[yourSelect.selectedIndex].value;
       console.log(value);
       var param = "value=" + value;
       
       sendRequest(content_callback,"employmentnext", "get", param);
       console.log(param);
    }
    function content_callback() {
       var result = document.getElementById("emplinfo");
       if(httpRequest.readyState == 4) { 
          if(httpRequest.status == 200) { 
             
          var data = httpRequest.responseText;
          result.innerHTML = data;
          
          } else result.innerHTML = "Error!";
       } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
    }
    
function content2  () {
    var yourSelect = document.getElementById("select1");
    console.log(yourSelect);
    var value = yourSelect.options[yourSelect.selectedIndex].value;
    console.log(value);
    var param = "value=" + value;
    
    sendRequest(content_callback2,"employmentnext", "get", param);
    console.log(param);
 }
 function content_callback2() {
    var result = document.getElementById("emplinfo");
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
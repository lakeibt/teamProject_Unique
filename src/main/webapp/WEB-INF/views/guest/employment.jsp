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
<script type="text/javascript">
function working(e) {
    var a1 = ["국어국문학과", "독일어과", "스페인어학과", "일본어과", "영어영문과", "프랑스어과", "중국어학과" ];
    var b2 = ["관광학과", "역사학과", "유아교육학과", "특수교육과"];
    var c3 = ["교육과", "신문방송학과", "사회복지학과", "심리학과", "행정학과"];
    var d4 = ["물리학과", "식품영양학과", "수학과", "생명과학과","통계학과", "지구물리학과"];
    var e5 = ["기계공학과", "건축학과", "게임학과", "고분자공학과","도시공학과","건축공학과","금속공학과","산업공학과" ,"생명공학과","재료공학과", "전기공학과", "전자공학과"];
    var f6 = ["경영정보학과", "경영학과", "경제학과", "무역학과", "금융학과","회계/세무학과"];
    var g7 = ["국악과", "공예학과", "미술학과", "성악과", "무용학과", "작곡과", "음악학과", "체육학과", "사진학과", "연극영화과", "실용음악과"];
    var h8 = ["간호학과", "의예과", "약학과", "의생명과학과"];
    var i9 = ["조경학과", "해양시스템공학부", "세라믹공학과", "수산생물학과", "원예학과", "축산학과", "해양학과", "산림학과", "식물생명자원전공"];
    var target = document.getElementById("select2");

    if(e.value == "1") var d = a1;
    else if(e.value == "2") var d = b2;
    else if(e.value == "3") var d = c3;
    else if(e.value == "4") var d = d4;
    else if(e.value == "5") var d = e5;
    else if(e.value == "6") var d = f6;
    else if(e.value == "7") var d = g7;
    else if(e.value == "8") var d = h8;
    else if(e.value == "9") var d = i9;
    

    target.options.length = 1;

    for (x in d) {
        var opt = document.createElement("option");
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    }   
}
</script>
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
										<select id="select2" class="form-control" style="width:30%; float:right;" onchange="content()">
											<option selected disabled>선택해주세요</option>
										</select>
										<select id="select1" class="form-control" style="width:30%; float:right;" onchange="working(this)">
											<option selected disabled>전공을 선택하세요</option>
											<option value="1">어문학</option>
											<option value="2">인문과학</option>
											<option value="3">사회과학</option>
											<option value="4">자연과학</option>
											<option value="5">공학</option>
											<option value="6">상경</option>
											<option value="7">예/체능학</option>
											<option value="8">의/약학</option>
											<option value="9">농/수산/해양학</option>
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
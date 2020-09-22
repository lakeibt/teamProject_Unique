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
$(function(){
    
    // 질문유형을 선택한다.
    chnQnaType('0' , '0');
});

function chnQnaType(type , select) {
    
    $('#schQnaType').empty();
    
    if(type == '1') { // 어문학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='' >국어국문학과</option>'");
        $('#schQnaType').append("<option value='' >독일어과</option>'");
        $('#schQnaType').append("<option value='' >러시아어과</option>'");
        $('#schQnaType').append("<option value='' >스페인어학과</option>'");
        $('#schQnaType').append("<option value='' >일본어과</option>'");
        $('#schQnaType').append("<option value='' >영어영문과</option>'");
        $('#schQnaType').append("<option value='' >프랑스어과</option>'");
        $('#schQnaType').append("<option value='' >중국어학과</option>'");
    } else if (type == '2') {  // 인문과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='' >관광학과</option>'");
        $('#schQnaType').append("<option value='' >국제지역학과</option>'");
        $('#schQnaType').append("<option value='' >문예창작학과</option>'");
        $('#schQnaType').append("<option value='' >역사학과</option>'");
        $('#schQnaType').append("<option value='' >아시아학과</option>'");
        $('#schQnaType').append("<option value='' >유아교육과</option>'");
        $('#schQnaType').append("<option value='' >특수교육과</option>'");
    } else if ( type == '3') {  // 사회과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='' >교육과</option>'");
        $('#schQnaType').append("<option value='' >신문방송학과</option>'");
        $('#schQnaType').append("<option value='' >사회복지학과</option>'");
        $('#schQnaType').append("<option value='' >시회학과</option>'");
        $('#schQnaType').append("<option value='' >문헌정보학과</option>'");
        $('#schQnaType').append("<option value='' >정치외교학과</option>'");
        $('#schQnaType').append("<option value='' >심리학과</option>'");
        $('#schQnaType').append("<option value='' >아동가족학과</option>'");
        $('#schQnaType').append("<option value='' >행정학과</option>'");
        $('#schQnaType').append("<option value='' >국제학과</option>'");
    } else if ( type == '4') {  // 자연과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='' >보건학과</option>'");
        $('#schQnaType').append("<option value='' >한약학과</option>'");
        $('#schQnaType').append("<option value='' >언어병리학전공</option>'");
        $('#schQnaType').append("<option value='' >보건관리학과</option>'");
        $('#schQnaType').append("<option value='' >패션비즈니스학과</option>'");
        $('#schQnaType').append("<option value='' >물리학과</option>'");
        $('#schQnaType').append("<option value='' >식품영양학과</option>'");
        $('#schQnaType').append("<option value='' >수학과</option>'");
        $('#schQnaType').append("<option value='' >생명과학과</option>'");
        $('#schQnaType').append("<option value='' >통계학과</option>'");
        $('#schQnaType').append("<option value='' >화학과</option>'");
        $('#schQnaType').append("<option value='' >지구물리학과</option>'");
    } else if ( type == '5') {  // 공학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='' >기계공학과</option>'");
    	$('#schQnaType').append("<option value='' >건축학과</option>'");
    	$('#schQnaType').append("<option value='' >게임학과</option>'");
    	$('#schQnaType').append("<option value='' >고분자공학과</option>'");
    	$('#schQnaType').append("<option value='' >도시공학과</option>'");
    	$('#schQnaType').append("<option value='' >건축공학과</option>'");
    	$('#schQnaType').append("<option value='' >금속공학과</option>'");
    	$('#schQnaType').append("<option value='' >산업공학과</option>'");
    	$('#schQnaType').append("<option value='' >생명공학과</option>'");
    	$('#schQnaType').append("<option value='' >재료공학과</option>'");
    	$('#schQnaType').append("<option value='' >전기공학과</option>'");
    	$('#schQnaType').append("<option value='' >신소재공학과</option>'");
    	$('#schQnaType').append("<option value='' >전자공학과</option>'");
    	$('#schQnaType').append("<option value='' >안전공학과</option>'");
    } else if ( type == '6') {  // 상경
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='' >경영정보학과</option>'");
    	$('#schQnaType').append("<option value='' >경영학과</option>'");
    	$('#schQnaType').append("<option value='' >경제학과</option>'");
    	$('#schQnaType').append("<option value='' >무역학과</option>'");
    	$('#schQnaType').append("<option value='' >금융학과</option>'");
    	$('#schQnaType').append("<option value='' >회계/세무학과</option>'");
    } else if ( type == '7') {  // 예/체능학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='' >국악과</option>'");
    	$('#schQnaType').append("<option value='' >공예학과</option>'");
    	$('#schQnaType').append("<option value='' >미술학과</option>'");
    	$('#schQnaType').append("<option value='' >성악과</option>'");
    	$('#schQnaType').append("<option value='' >무용학과</option>'");
    	$('#schQnaType').append("<option value='' >작곡과</option>'");
    	$('#schQnaType').append("<option value='' >음악학과</option>'");
    	$('#schQnaType').append("<option value='' >체육학과</option>'");
    	$('#schQnaType').append("<option value='' >사진학과</option>'");
    	$('#schQnaType').append("<option value='' >연극영화과</option>'");
    	$('#schQnaType').append("<option value='' >실용음악과</option>'");
    } else if ( type == '8') {  // 의/약학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='' >간호학과</option>'");
        $('#schQnaType').append("<option value='' >의예과</option>'");
        $('#schQnaType').append("<option value='' >약학과</option>'");
        $('#schQnaType').append("<option value='' >의생명과학과</option>'");
    }
    
    document.getElementById("schQnaType").style.display = "";
    
    if ($.trim(select) != "") {
        $('#select1').val(type);
        $('#schQnaType').val(select);
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
										<select id="schQnaType" class="form-control" name="schQnaType" style="width:30%; float:right;" onchange="content()" >
										</select>
										<select name="questType" class="form-control" id="select1" style="width:30%; float:right;" onChange="chnQnaType(this.value)" >
											<option selected disabled value="0">전공을 선택하세요</option>
										    <option value="1">어문학</option>
											<option value="2">인문과학</option>
											<option value="3">사회과학</option>
											<option value="4">자연과학</option>
											<option value="5">공학</option>
											<option value="6">상경</option>
											<option value="7">예/체능학</option>
											<option value="8">의/약학</option>
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
   var yourSelect = document.getElementById("schQnaType");
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
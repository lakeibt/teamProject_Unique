<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]학생 메인</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
<script>
function freeboard() {
   var url ="http://192.168.219.153:3000/Input/${sessionScope.memId}";
   var setting = 'height=800, width=1300';
   window.open(url ,'자유게시판', setting);
}

function danggenBoard() {
   var url ="http://192.168.219.126:3000/Input/${sessionScope.memId}";
   var setting = 'height=800, width=1300';
   window.open(url ,'자유게시판', setting);
}
</script>

</head>
<body class="dark-edition" onload = "contentHome1('${vo.get('M_NAME')}');">
<div class="wrapper">
	<%@ include file="../include/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../include/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-xl-2 col-lg-12">
						<div class="card card-profile" style="height:380px;">
							<div class="card-avatar">
								<img class="img" src="${stu_photo}${vo.get('PHOTO')}">
							</div>
							<div class="card-body">
								<h4 class="card-title">${vo.get('NAME')}(${vo.get('NUM')})</h4>
								<h6 class="card-category">${vo.get('ENG_NAME')}</h6>
								<h6 class="card-category">${vo.get('EMAIL')}</h6>
								<h6 class="card-category">${vo.get('M_NAME')}</h6>
								<p class="card-description">${vo.get('GRADE')}학년</p>
							</div>
						</div>
						<div class="card">
		                     <div class="card-header card-header-primary" style="margin:0px;">
		                        <div class="nav-tabs-navigation">
		                           <div class="nav-tabs-wrapper">
		                              <span class="nav-tabs-title"></span>
			                              <ul class="nav nav-tabs" data-tabs="tabs">
			                                 <li class="nav-item">
			                                    <a class="nav-link active show" data-toggle="tab" onclick="freeboard();">
			                                       <i class="material-icons">list</i>자유게시판
			                                    </a>
			                                     <a class="nav-link active show" data-toggle="tab" onclick="danggenBoard();">
			                                       <i class="material-icons">list</i>자유 장터
			                                    </a>
			                                 </li>
			                                 
			                              </ul>
		                           	 </div>
			                       </div>
			                   </div>
			               </div>
						
					</div>
					
					<div class="col-xl-10 col-lg-12">
						<div class="row">
							<div class="card">
								<div class="card-header card-header-primary">
									<div class="nav-tabs-navigation">
										<div class="nav-tabs-wrapper">
											<span class="nav-tabs-title">취업/공모전 정보</span>
											<ul class="nav nav-tabs" data-tabs="tabs">
												<li class="nav-item">
													<a class="nav-link active show" data-toggle="tab" onclick="contentHome1('${vo.get('M_NAME')}');">
														<i class="material-icons">work_outline</i>취업
													</a>
												</li>
												<li class="nav-item">
													<a class="nav-link active show" data-toggle="tab" onclick="contentHome2('${vo.get('M_NAME')}');">
														<i class="material-icons">event</i>공모전
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive"  style="padding-top:20px; height:420px;">
										<table id="coninfo" style="width: 100%">
										
										</table>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
						function content1(i) {
							window.location="${student}employment";
						}
						function content2(i) {
							window.location="${student}contest";
						}
						/* function contentHome1(major) {
						   var major = major;
						   var value = 0;
						   var num = 1;
						   if(major == '컴퓨터공학과') value = 25;
						   if(major == '뷰티미용과') value = 3591;
						   if(major == '건축학과') value = 6;
						   if(major == '영어영문학과') value = 3017;
						   if(major == '패션디자인학과') value = 3591;
						   if(major == '국어국문학과') value = 2463;
						   if(major == '일어일문학과') value = 2672;
						   if(major == '불어불문학과') value = 3089;
						   if(major == '기계공학과') value = 1;
						   if(major == '생명공학과') value = 109;
						   if(major == '시각디자인학과') value = 1439;
						   if(major == '조소학과') value = 1424;
						   
						   if(value == '분야를 선택하세요') alert('분야를 선택하세요');
						   var param = "param=" + value + "&"+ "num=" + num;
						   sendRequest(content_callback2,"contestnext", "get", param);
						}
						function content_callback1() {
						   var result = document.getElementById("coninfo");
						   if(httpRequest.readyState == 4) { 
						      if(httpRequest.status == 200) { 
						      var data = httpRequest.responseText;
						      result.innerHTML = data;
						      } else result.innerHTML = "Error!";
						   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
						} */
						
						function contentHome1(major) {
						   var value2 = 0;
						   var value = 0;
						   var mbn ="";
						   
						   if(major == '컴퓨터공학과') { value = 5; mbn = "공학"; value2 = 2463 }
						   else if(major == '미용과') { value = 7; mbn = "예%2F체능학"; value2 = 9080 }
						   else if(major == '건축학과') { value = 5; mbn = "공학"; value2 = 6 }
						   else if(major == '영어영문과') { value = 5; mbn = "공학"; value2 = 3017 }
						   else if(major == '디자인과') { value = 7; mbn = "예%2F체능학"; value2 = 1956 }
						   else if(major == '국어국문학과') { value = 1; mbn = "어문학"; value2 = 2463 }
						   else if(major == '일본어과') { value = 1; mbn = "어문학"; value2 = 2672 }
						   else if(major == '프랑스어과') { value = 1; mbn = "어문학"; value2 = 3089 }
						   else if(major == '기계공학과') { value = 5; mbn = "공학"; value2 = 1 }
						   else if(major == '생명공학과') { value = 5; mbn = "공학"; value2 = 109 }
						   else if(major == '실용미술과') { value = 7; mbn = "예%2F체능학"; value2 = 5541 }
						   else if(major == '순수미술과') { value = 7; mbn = "예%2F체능학"; value2 = 10637 }
							   
						   console.log(value);
						   console.log(value2);
						   console.log(mbn);
						   console.log(major);
						   var param = "Major_Big_Code="+ value +"&"+"Major_Big_Name="+ mbn +"&"+"Major_Code="+ value2 +"&"+"Major_Name="+major;
						   
						   sendRequest(content_callback1,"employmentnext", "get", param);
						   console.log(param);
						}

						function content_callback1() {
						   var result = document.getElementById("coninfo");
						   if(httpRequest.readyState == 4) { 
						      if(httpRequest.status == 200) { 
						         
						      var data = httpRequest.responseText;
						      result.innerHTML = data;
						      
						      } else result.innerHTML = "Error!";
						   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
						}
						
						function contentHome2(major) {
						   var major = major;
						   var value = 0;
						   var num = 1;
						   if(major == '컴퓨터공학과') value = 21;
						   if(major == '뷰티미용과') value = 26;
						   if(major == '건축학과') value = 24;
						   if(major == '영어영문학과') value = 23;
						   if(major == '패션디자인학과') value = 19;
						   if(major == '국어국문학과') value = 23;
						   if(major == '일어일문학과') value = 23;
						   if(major == '불어불문학과') value = 23;
						   if(major == '기계공학과') value = 22;
						   if(major == '생명공학과') value = 22;
						   if(major == '시각디자인학과') value = 26;
						   if(major == '조소학과') value = 26;
						   
						   if(value == '분야를 선택하세요') alert('분야를 선택하세요');
						   var param = "param=" + value + "&"+ "num=" + num;
						   sendRequest(content_callback2,"contestnext", "get", param);
						}
						function content_callback2() {
						   var result = document.getElementById("coninfo");
						   if(httpRequest.readyState == 4) { 
						      if(httpRequest.status == 200) { 
						      var data = httpRequest.responseText;
						      result.innerHTML = data;
						      } else result.innerHTML = "Error!";
						   }
						}
						</script>
						<div class="row">
							<div class="col-xl-6 col-lg-12">
								<div class="card">
									<div class="card-header card-header-primary">
										<h4 class="card-title">수강정보</h4>
										<select id="select" class="form-control" onchange="course()">
											<option value="2019-1">2019-1</option>
											<option value="2019-2">2019-2</option>
											<option value="2020-1">2020-1</option>
											<option value="2020-2">2020-2</option>
										</select>
									</div>
									<div class="card-body">
										<div class="table-responsive" id="course">
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-6 col-lg-12">
								<div class="card">
									<div class="card-header card-header-primary">
										<h4 class="card-title">학점정보</h4>
										<select id="select1" class="form-control" onchange="score()">
											<option value="2019-1">2019-1</option>
											<option value="2019-2">2019-2</option>
											<option value="2020-1">2020-1</option>
											<option value="2020-2">2020-2</option>
										</select>
									</div>
									<div class="card-body">
										<div class="table-responsive" id="info">
										</div>
									</div>
								</div>
							</div>
							<script type="text/javascript">
							function course() {
								var yourSelect = document.getElementById("select");
								var value = yourSelect.options[yourSelect.selectedIndex].value;
								var array = value.split("-");
								var year = array[0];
								var semester = array[1];
								var param = "year=" + year + "&semester=" + semester;

								sendRequest(course_callback, "${student}courseInfo", "get", param);
							}

							function course_callback() {
								var result = document.getElementById("course");
								if (httpRequest.readyState == 4) {
									if (httpRequest.status == 200) {
										var data = httpRequest.responseText;
										result.innerHTML = data;
									} else result.innerHTML = "Error!";
								} else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
							}
							
							function syllabus(code) {
								var param = "code=" + code;
								var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=800, width=1000';
								window.open("course_syllabus2?code="+code, '강의계획서', settings);
							}
							
							function score() {
								var yourSelect = document.getElementById("select1");
								var value = yourSelect.options[yourSelect.selectedIndex].value;
								var array = value.split("-");
								var year = array[0];
								var semester = array[1];
								var param = "year=" + year + "&semester=" + semester;

								sendRequest(content_callback, "${student}scoreInfo", "get", param);
								console.log(param);
							}

							function content_callback() {
								var result = document.getElementById("info");
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
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
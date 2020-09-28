<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/student_bootstrap.jsp" %>
</head>
<body>

	<%@ include file="../include/header.jsp"%>
	
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>성적조회</h2>
				</div>
			</div>
		</section>
		<!-- 성적조회 페이지 -->
		<%@ include file="../include/student_left.jsp"%>
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="width:60%; display:inline-block; position:relative; vertical-align:top;">
			<div class="contact">
				<form class="php-email-form" style="background:rgba(0,0,0,0);">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<table class="table" style="font-size:13px;">
										
										<tr>
											<td colspan="6">
												<select id="select1" class="form-control" style="width:30%; float:right;" onchange="content()">
															<option selected disabled>학기를 선택하세요</option>
															<option value="1">1학기</option>
															<option value="2">2학기</option>
												</select>
												<select class="form-control" style="width:30%; float:right;">
													<option>2020</option>		
												</select>
											</td>
										</tr>
										
										<tr>
											<th>학과</th>
											<td><input class="form-control" type="text" value="${vo.m_code}" readOnly></td>
											<th>학번</th>
											<td><input class="form-control" type="text" value="${vo.entrancedate}" readOnly></td>
											<th>이름</th>
											<td><input class="form-control" type="text" value="${vo.name}" readOnly></td>
										</tr>
									</table>
									<div id="info">
								
									</div>
								</div>
							</div>
							<script type="text/javascript">
	   
							function content  () {
		                           var yourSelect = document.getElementById("select1");
		                           console.log(yourSelect);
		                           var value = yourSelect.options[yourSelect.selectedIndex].value;
		                           console.log(value);
		                           var param = "value=" + value;
		                           
		                           sendRequest(content_callback,"${student}scoreInfo", "get", param);
		                           console.log(param);
		                        }
		                        function content_callback() {
		                           var result = document.getElementById("info");
		                           if(httpRequest.readyState == 4) { 
		                              if(httpRequest.status == 200) { 
		                                 
		                              var data = httpRequest.responseText;
		                              result.innerHTML = data;
		                              
		                              } else result.innerHTML = "Error!";
		                           } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
		                        }
							</script>
							
						</div>
					</div>
				</form>
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
<%@ include file = "../bootstrap/student_bootstrap_js.jsp" %>
</body>
</html>
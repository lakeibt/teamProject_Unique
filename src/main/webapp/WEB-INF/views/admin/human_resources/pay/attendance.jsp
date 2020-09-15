<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>근태관리</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<script src="${resources}js/admin.js"></script>

<script>

$(function(){
	$('#checkAD').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/pay/attendanceChk',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#attendanceChk').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});
</script>
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
			<div class="right_col" role="main">
				<div>
					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title"><h4>근태관리</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
												<th>조회기간</th>
												<td><select class="form-control" style="float:left; width:100px;">
													  <option value="2015">2015</option>
													  <option value="2016">2016</option>
													  <option value="2017">2017</option>
													  <option value="2018">2018</option>
													  <option value="2019">2019</option>
													  <option value="2020" selected>2020</option>
													  <option value="2021">2021</option>
													  <option value="2022">2022</option>
													  <option value="2023">2023</option>
													</select>
													<select class="form-control" style="float:left; width:100px;">
													  <option value="1">1월</option>
													  <option value="2">2월</option>
													  <option value="3">3월</option>
													  <option value="4">4월</option>
													  <option value="5">5월</option>
													  <option value="6">6월</option>
													  <option value="7">7월</option>
													  <option value="8">8월</option>
													  <option value="9">9월</option>
													  <option value="10">10월</option>
													  <option value="11">11월</option>
													  <option value="12">12월</option>
													</select>
													<select class="form-control" style="float:left; width:100px;">
													  <option value="1">1일</option>
													  <option value="2">2일</option>
													  <option value="3">3일</option>
													  <option value="4">4일</option>
													  <option value="5">5일</option>
													  <option value="6">6일</option>
													  <option value="7">7일</option>
													  <option value="8">8일</option>
													  <option value="9">9일</optio직원n>
													  <option value="10">10일</option>
													  <option value="11">11일</option>
													  <option value="12">12일</option>
													  <option value="13">13일</option>
													  <option value="14">14일</option>
													  <option value="15">15일</option>
													  <option value="16">16일</option>
													  <option value="17">17일</option>
													  <option value="18">18일</option>
													  <option value="19">19일</option>
													  <option value="20">20일</option>
													  <option value="21">21일</option>
													  <option value="22">22일</option>
													  <option value="23">23일</option>
													  <option value="24">24일</option>
													  <option value="25">25일</option>
													  <option value="26">26일</option>
													  <option value="27">27일</option>
													  <option value="28">28일</option>
													  <option value="29">29일</option>
													  <option value="30">30일</option>
													  <option value="31">31일</option>
													</select> <input class="btn btn-app" name="name" type="text" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;" placeholder="이름">
												<!-- <input class="btn btn-app" name="checkAD" type="button" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;" value="조회"> -->
												<a id="checkAD" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">조회</a><br>
												</td>
												
											</tr>
										</thead>
									
									</table>
									<div id="attendanceChk">
										<!-- 결과 출력 위치 -->
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- /page content -->


			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
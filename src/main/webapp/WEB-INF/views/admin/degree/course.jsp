<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>수강관리</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<script type="text/javascript">
$(function(){
    
    // 질문유형을 선택한다.
    chnQnaType('0' , '0');
});

function chnQnaType(type , select) {
    
    $('#schQnaType').empty();
    
    if(type == 'CO') { 
    	$('#schQnaType').append("<option selected disabled>교수님을 선택하세요</option>");
        $('#schQnaType').append("<option value='김교수'>김교수</option>");
    } else if (type == 'BE') { 
    	$('#schQnaType').append("<option selected disabled>교수님를 선택하세요</option>");
    	$('#schQnaType').append("<option value='김뷰티'>김뷰티</option>");
    }
    
    document.getElementById("schQnaType").style.display = "";
    
    if ($.trim(select) != "") {
        $('#select1').val(type);
        $('#schQnaType').val(select);
    }
}
</script>
<style>
.btn {
	width: 100px;
	background-color: #68A4C4;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
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
			<div class="right_col" role="main" style="min-height:934px;">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">수강조회</font>
								</font>
							</h3>
						</div>
					</div>
					<div class="row" style="display:block;">
						<div class="col-md-12 col-sm-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">수강목록</font>
										</font>
									</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div class="table-responsive">
										<p>
											<font style="vertical-align:inherit;">
												<font style="vertical-align:inherit; align:right;">
													<a class="btn btn-app" id="select1" onclick="content();">
														<i class="fa fa-edit"></i>
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">새 강의 등록</font>
														</font>
													</a>
												</font>
											</font>
										</p>
										<table class="table table-striped jambo_table">
											<thead>
												<tr class="headings">
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">과목코드</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">과목명</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">학과코드</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">학년</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">이수구분</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">제한인원</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">수강인원</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">학점</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">년도/학기</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">요일/시간</font>
														</font>
													</th>
													<th class="column-title">
														<font style="vertical-align:inherit;">
															<font style="vertical-align:inherit;">담당교수</font>
														</font>
													</th>
													<th class="column-title no-link last">
														<span class="nobr">
															<font style="vertical-align:inherit;">
																<font style="vertical-align:inherit;">삭제</font>
															</font>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${course_Cnt > 0}">
													<c:forEach var="dto" items="${dtos}">
														<tr>
															<td>${dto.co_code}</td>
															<td><a onclick="content2('${dto.co_code}')">${dto.co_name}</a></td>
															<td>${dto.m_code}</td>
															<td>${dto.school_year}</td>
															<td>${dto.p_code}</td>
															<td>${dto.limit_num}</td>
															<td>${dto.co_num}</td>
															<td>${dto.grade}</td>
															<td>${dto.co_year} / ${dto.co_semester}</td>
															<td>${dto.co_day} / ${dto.le_code}</td>
															<td>${dto.p_name}</td>
															<td><input type="button" id="select1" class="btn" style="padding: 6px 6px;" onclick="content3('${dto.co_code}')" value="삭제"></td>
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
						<div class="col-md-12 col-sm-12" id="courseinfo"></div>
					</div>
				</div>
			<!-- /page content -->
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
<script type="text/javascript">
function content() {
   var param = "param=" + 1;
   sendRequest(content_callback,"coursenext", "get", param);
}
function content_callback() {
   var result = document.getElementById("courseinfo");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}

function content2(code) {
   var co_code = "co_code=" + code;
   
   sendRequest(content_callback2,"coursenext2", "get", co_code);
}
function content_callback2() {
   var result = document.getElementById("courseinfo");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}
function content3(code) {
	var del = confirm("삭제하시겠습니까?");
	if(del == true){
		window.location="classdelete?co_code="+code;
	}
}
</script>
</body>
</html>
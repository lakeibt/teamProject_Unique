<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<head>
	<title>수강관리</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
</head>
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
			<div class="right_col" role="main">
				<div class="row">
					<div class="page-title">
						<div class="title_left">
							<h3>수강관리</h3>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="dashboard_graph">
							<div class="row x_title">
								<div style="width:50%; float: left">
									<h3>수강조회</h3>
								</div>
								<div style="width:50%; float: right">
									<input type="button" id="select1" class="btn" style="float:right; padding: 6px 6px;" onclick="content()" value="새 강의 등록">
								</div>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th>과목코드</th>
										<th>과목명</th>
										<th>학과코드</th>
										<th>이수구분</th>
										<th>제한인원</th>
										<th>수강인원</th>
										<th>학점</th>
										<th>년도/학기</th>
										<th>요일/시간</th>
										<th>담당교수</th>
										<td></td>
									</tr>
								</thead>
								<tbody>
								<c:if test="${course_Cnt > 0}">
								<c:forEach var="dto" items="${dtos}">
									<tr>
										<td>${dto.co_code}</td>
										<td><a href="#" onclick="content2()">${dto.co_name}</a></td>
										<td>${dto.m_code}</td>
										<td>${dto.p_code}</td>
										<td>${dto.limit_num}</td>
										<td>${dto.co_num}</td>
										<td>${dto.grade_1}</td>
										<td>${dto.co_year} / ${dto.co_semester}</td>
										<td>${dto.co_day} / ${dto.le_code}</td>
										<td>${dto.name_1}</td>
										<td><input type="button" id="select1" class="btn" style="float:right; padding: 6px 6px;" onclick="content3()" value="삭제"></td>
									</tr>
								</c:forEach>
								</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div style="height:40px;"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div id="courseinfo">
						
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
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
	
function content2() {
	   var param = "param=" + 1;
	   
	   sendRequest(content_callback2,"coursenext2", "get", param);
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
function content3() {
	var del = confirm("삭제하시겠습니까?");
	if(del == true){
		  window.location= 'coursewm2';
		}
	}
</script>
</body>
</html>
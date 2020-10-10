<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]수강신청</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script>
$(document).ready(function () {
	var course = new Array();
	var myCourse = new Array();
	
	<c:forEach var="dto" items="${dtos }">
	course.push('${dto.CO_CODE}');
	</c:forEach>
	
	if('${study}' != null || '${listCnt}' != 0) {
		<c:forEach var="list" items="${study }">
		myCourse.push('${list.CO_CODE}');
		</c:forEach>
		
		for(var i = 0; i < course.length; i++) {
			for(var j = 0; j < myCourse.length; j++) {
				if(course[i] == myCourse[j]) {
					document.getElementById(i).style.display = "none";
				} else {
					//document.getElementById(i).style.display = "block";
				}
			}
		}
	}
});
function addMyCourse(code, day, time, grade) {
	var param = "code="+code+"&day="+day+"&time="+time+"&grade="+grade;
	window.location="course_register_add?"+param;
}
function deleteMyCourse(code) {
	var param = "code="+code;
	window.location="course_register_delete?"+param;
}
</script>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../include/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../include/student_header.jsp"%>
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">수강신청</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class="text-primary">
											<tr>
												<th style="width:5%;">이수구분</th>
												<th style="width:5%;">학년</th>
												<th style="width:15%;">교과목명</th>
												<th style="width:10%;">담당교수</th>
												<th style="width:15%;">강의시간 및 강의실</th>
												<th style="width:5%;">학점</th>
												<th style="width:5%;">수용인원</th>
												<th style="width:5%;">신청인원</th>
												<th style="width:5%;">수업계획서</th>
												<th style="width:5%;">수강신청</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="dto" items="${dtos }" varStatus="status">
											<tr>
												<td style="width:5%;">${dto.P_CODE }</td>
												<td style="width:5%;">${dto.SCHOOL_YEAR }</td>
												<td style="width:15%;">${dto.CO_NAME }</td>
												<td style="width:10%;">${dto.NAME_1 }</td>
												<td style="width:15%;">${dto.CO_DAY}/${dto.LE_CODE}-${dto.GRADE_1 + dto.LE_CODE - 1}</td>
												<td style="width:5%;">${dto.GRADE_1}</td>
												<td style="width:5%;">${dto.LIMIT_NUM }</td>
												<td style="width:5%;">${dto.CO_NUM }</td>
												<td style="width:5%;"><button class="btn btn-primary pull-left" onclick="openSyllabus('${dto.CO_CODE}');">조회</button></td>
												<td style="width:5%;">
													<button id="${status.index }" 
															class="btn btn-primary pull-left" 
															onclick="addMyCourse('${dto.CO_CODE}', '${dto.CO_DAY }', '${dto.LE_CODE }', '${dto.GRADE_1 }');" 
															style="background-color:orange;">신청</button>
												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
									<script type="text/javascript">
									function openSyllabus(code) {
										var param = "code=" + code;
										var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=600, width=800';
										window.open("course_syllabus2?code="+code, '강의계획서', settings);
									}
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">수강신청</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class="text-primary">
											<tr>
												<th style="width:10%;">이수구분</th>
												<th style="width:10%;">학년</th>
												<th style="width:15%;">교과목명</th>
												<th style="width:10%;">담당교수</th>
												<th style="width:10%;">강의시간 및 강의실</th>
												<th style="width:5%;">학점</th>
												<th style="width:5%;">수강취소</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${study == null }">
											<tr>
												<td colspan="7">등록된 수강신청 목록이 없습니다.</td>
											</tr>
											</c:if>
											<c:if test="${study != null }">
											<c:forEach var="list" items="${study }">
											<tr>
												<td style="width:10%;">${list.P_CODE }</td>
												<td style="width:10%;">${list.SCHOOL_YEAR }</td>
												<td style="width:25%;">${list.CO_NAME }</td>
												<td style="width:15%;">${list.P_NAME }</td>
												<td style="width:20%;">${list.DAY }/${list.TIME}-${list.TIME + list.GRADE - 1}</td>
												<td style="width:10%;">${list.GRADE }</td>
												<td style="width:10%;">
													<button class="btn btn-primary pull-left" 
															onclick="deleteMyCourse('${list.CO_CODE}', '${list.DAY }', '${list.TIME }', '${list.GRADE }');" 
															style="background-color:orange;">취소</button>
												</td>
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
				<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]수강신청</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../guest/student_sidebar.jsp"%>
	<div class="main-panel">
	<%@ include file="../guest/student_header.jsp"%>
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
												<th style="width:10%;">수업계획서</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="dto" items="${dtos }">
											<tr>
												<td style="width:5%;">${dto.P_CODE }</td>
												<td style="width:5%;">${dto.SCHOOL_YEAR }</td>
												<td style="width:15%;">${dto.CO_NAME }</td>
												<td style="width:10%;">${dto.NAME_1 }</td>
												<td style="width:15%;">${dto.CO_DAY}/${dto.LE_CODE}-${dto.GRADE_1 + dto.LE_CODE - 1}</td>
												<td style="width:5%;">${dto.GRADE_1}</td>
												<td style="width:5%;">${dto.LIMIT_NUM }</td>
												<td style="width:5%;">${dto.CO_NUM }</td>
												<td style="width:10%;"><button class="btn btn-primary pull-left" onclick="openSyllabus('${dto.CO_CODE}');">조회</button></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
									<script type="text/javascript">
									function openSyllabus(code) {
										var param = "code=" + code;
										var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=800, width=1000';
										window.open("course_syllabus2?code="+code, '강의계획서', settings);
									}
									</script>
									<div id="result">
									
									</div>
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
												<th style="width:25%;">교과목명</th>
												<th style="width:15%;">담당교수</th>
												<th style="width:20%;">강의시간 및 강의실</th>
												<th style="width:10%;">학점</th>
												<th style="width:15%;">수업계획서</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th style="width:10%;">React 그리드 부분</th>
											</tr>
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
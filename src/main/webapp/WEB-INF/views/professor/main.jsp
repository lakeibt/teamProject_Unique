<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>

<head>
<title>[유일대]</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<%@ include file="../include/calendar.jsp"%>
</head>
<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../include/professor_sidebar.jsp"%>


		<div class="main-panel">

			<%@ include file="../include/professor_header.jsp"%>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						
						
						<div class="col-md-6">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">일정</h4>
								</div>
								<div id="calendar" style="background-color: white; padding: 30px 30px; border-radius: 6px;" ></div>
							</div>
						</div>
						
						<div class="col-md-6" >
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">공지사항</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead class="text-primary">
												<tr>
													<th style="width: 20%">글번호</th>
													<th style="width: 50%">제목</th>
													<th style="width: 30%">작성일자</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td style="width: 20%">3</td>
													<td style="width: 50%">제목3</td>
													<td style="width: 30%">작성일자</td>
												</tr>
												<tr>
													<td style="width: 20%">2</td>
													<td style="width: 50%">제목2</td>
													<td style="width: 30%">작성일자</td>
												</tr>
												<tr>
													<td style="width: 20%">1</td>
													<td style="width: 50%">제목1</td>
													<td style="width: 30%">작성일자</td>
												</tr>
												<tr>
													<td style="width: 20%">1</td>
													<td style="width: 50%">제목1</td>
													<td style="width: 30%">작성일자</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title mt-0">강의목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<tbody>
												<tr>
													<th style="width: 10%">요일</th>
													<th style="width: 20%">교시</th>
													<th style="width: 50%">강의명</th>
													<th style="width: 20%">인원</th>
												</tr>
												<tr>
													<td style="width: 10%">월</td>
													<td style="width: 20%">1,2</td>
													<td style="width: 50%">건축학개론</td>
													<td style="width: 20%">25/30</td>
												</tr>
												<tr>
													<td style="width: 10%">화</td>
													<td style="width: 20%">4,5</td>
													<td style="width: 50%">회계원리</td>
													<td style="width: 20%">20/30</td>
												</tr>
												<tr>
													<td style="width: 10%">수</td>
													<td style="width: 20%">4,5</td>
													<td style="width: 50%">재무관리</td>
													<td style="width: 20%">25/30</td>
												</tr>
												<tr>
													<td style="width: 10%">수</td>
													<td style="width: 20%">4,5</td>
													<td style="width: 50%">재무관리</td>
													<td style="width: 20%">25/30</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-md-12" style="margin-top: 50px; height: 50px;">
							<div class="progress" style="height: 100%;">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">학기 진행률<br>25%</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>


		</div>
	</div>

	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>

</html>
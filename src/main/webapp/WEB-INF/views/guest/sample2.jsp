<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]강의시간표</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<body class="dark-edition">
<div class="wrapper">
	<%@ include file="../student/student_sidebar.jsp"%>
	<%@ include file="../student/student_header.jsp"%>
	<div class="main-panel">
		<div class="content">
			<div class="container-fluid">
				<!-- 메인 페이지 Start -->
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title">시간표</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table" style="border:1px solid black;">
										<thead class="text-primary">
											<tr>
												<td style="width:15%">교시/시간</td>
												<td style="width:17%">월요일</td>
												<td style="width:17%">화요일</td>
												<td style="width:17%">수요일</td>
												<td style="width:17%">목요일</td>
												<td style="width:17%">금요일</td>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="i" begin="1" end="9">
												<tr>
													<td>${i}교시<br>${i+8}:00-${i+9}:00</td>
													<c:if test="${dtos[i-1].DAY == '월' }">
													<td>
														${dto[i-1].CO_NAME }<br>
														${dto[i-1].P_NAME }
													</td>
													</c:if>
													<c:if test="${dtos[i-1].DAY != '월' }"><td></td></c:if>
													<c:if test="${dtos[9+i-1].DAY == '화' }">
													<td>
														${dto[i-1].CO_NAME }<br>
														${dto[i-1].P_NAME }
													</td>
													</c:if>
													<c:if test="${dto[9+i-1].DAY != '화' }"><td></td></c:if>
													<c:if test="${dto[18+i-1].DAY == '수' }">
													<td>
														${dto[i-1].CO_NAME }<br>
														${dto[i-1].P_NAME }
													</td>
													</c:if>
													<c:if test="${dto[18+i-1].DAY != '수' }"><td></td></c:if>
													<c:if test="${dto[27+i-1].DAY == '목' }">
													<td>
														${dto[i-1].CO_NAME }<br>
														${dto[i-1].P_NAME }
													</td>
													</c:if>
													<c:if test="${dto[27+i-1].DAY != '목' }"><td></td></c:if>
													<c:if test="${dto[26+i-1].DAY == '금' }">
													<td>
														${dto[i-1].CO_NAME }<br>
														${dto[i-1].P_NAME }
													</td>
													</c:if>
													<c:if test="${dto[26+i-1].DAY != '금' }"><td></td></c:if>
												</tr>
											</c:forEach>
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
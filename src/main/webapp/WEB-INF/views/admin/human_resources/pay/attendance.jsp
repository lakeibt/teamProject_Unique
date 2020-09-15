<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<style>
.form-control {
	font-size: 12px;
}

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
				<div>
					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title">
									<h4>근태관리</h4>
								</div>
								<div class="x_content">
									<table class="table">
										<thead style="color: #73879C;">
											<tr>
												<th>대상기간</th>
												<td><select class="form-control"
													style="float: left; width: 100px;">
														<option selected>구분</option>
														<option>지각</option>
														<option>정상</option>
														<option>조퇴</option>
														<option>휴가</option>
												</select>
												<td><input class="form-control" type="text"
													id="comNum_Name" placeholder="사번  입력"></td>
												<td><input class="form-control" type="date"
													id="startDate"></td>
												<td><input class="form-control" type="date"
													id="endDate"></td>
												<td><input type="button" class="btn"
													style="padding: 6px 6px;" onclick="" value="검색"> <input
													type="button" class="btn" style="padding: 6px 6px;"
													onclick="" value="초기화"></td>
											</tr>
										</thead>
									</table>
									<table class="table">
										<thead style="color: #73879C;">
											<tr>
												<th>구분</th>
												<th>사원번호</th>
												<th>날짜</th>
												<th>출근시간</th>
												<th>퇴근시간</th>
												<th>근무 시간</th>
												<th>OT</th>
												<th>특근</th>
											</tr>
										</thead>
										<tbody style="color: grey;">
											<c:if test="${search_Cnt > 0}">
												<c:forEach var="dto" items="${dtos}">
													<tr>
														<c:if test="${dto.num == 1}">
															<td>출근</td>
														</c:if>
														<c:if test="${dto.num == 2}">
															<td>퇴근</td>
														</c:if>
														<c:if test="${dto.num == 3}">
															<td>지각</td>
														</c:if>
														<td>${dto.id}</td>
														<td><fmt:formatDate value="${dto.inDay}"
																pattern="yyyy-MM-dd" /></td>
														<td><fmt:formatDate value="${dto.inTime}"
																pattern="HH:mm" /></td>
														<td><fmt:formatDate value="${dto.outTime}"
																pattern="HH:mm" /></td>
														<fmt:formatDate var="inTime_hour" value="${dto.inTime}"
															pattern="HH" />
														<fmt:formatDate var="outTime_hour" value="${dto.outTime}"
															pattern="HH" />
														<td>${outTime_hour-inTime_hour}</td>
														<c:if test="${outTime_hour-inTime_hour<9}">
															<td>0</td>
														</c:if>
														<c:if test="${outTime_hour-inTime_hour>=9}">
															<td>${(outTime_hour-inTime_hour)-8}</td>
														</c:if>
														<fmt:formatDate var="dayOfTheWeek" value="${dto.inDay}"
															pattern="E" />
														<c:if
															test="${dayOfTheWeek == '토' || dayOfTheWeek == '일'}">
															<td>O</td>
														</c:if>
														<c:if
															test="${dayOfTheWeek == '월' || dayOfTheWeek == '화' || dayOfTheWeek == '수' || dayOfTheWeek == '목' || dayOfTheWeek == '금'}">
															<td>-</td>
														</c:if>
														<td>${dto.reason}</td>
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
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
		<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
	</div>
</body>
</html>
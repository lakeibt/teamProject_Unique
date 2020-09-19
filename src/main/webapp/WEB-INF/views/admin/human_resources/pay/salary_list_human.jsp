<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>사원별 급/상여지급현황</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- Template Main JS File -->
<script src="${resources}js/admin.js"></script>
<script>
	var name;
	$(function() {
		$('#human_Search').click(
			function() {
				console.log(name);
				$.ajax({
					url : "${pageContext.request.contextPath}/admin/human_resources/pay/human_Search",
					data : {"name" : name},
					type : 'GET',
					dataType : 'text',
					success : function(data) { 
						$('#human').html(data);
					},
					error : function(request, status, error) {
						console.log("name : "+ typeof (name))
						console.log("@code : "+ request.status);
						console.log("@message : "+ request.responseText);
						console.log("@error : " + error);
					}
				});
			});
	});

	function humanSearch() {
		name = document.getElementById("humanSearch_input").value;
		console.log(humanSearch_input);
	}
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
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<div class="x_title">
								<h4>사원별 급/상여지급현황</h4>
							</div>
							<div class="x_content">
								<table class="table">
									<thead style="color: #73879C;" align="center">
										<tr align="center">
											<th>사원 검색</th>
											<th><input class="form-control" type="text"
												id="humanSearch_input"></th>
											<th><input type="button" class="btn"
												style="padding: 6px 6px;" id="human_Search" value="검색"
												onclick="humanSearch()"> <input type="button"
												class="btn" style="padding: 6px 6px;"
												onclick="location.reload();" value="초기화"></th>
										</tr>
									</thead>
								</table>
							</div>
							<div id="human">
								<table class="table">
									<thead style="color: #73879C;" align="center">
										<tr align="center">
											<th>귀속연월</th>
											<th>사원번호</th>
											<th>성명</th>
											<th>부서</th>
											<th>지급총액</th>
											<th>급여</th>
											<th>식대</th>
											<th>차량유지비</th>
											<th>특근수당(휴일)</th>
										</tr>
									</thead>
									<tbody style="color: grey;">
										<c:if test="${salary_list_cnt > 0}">
											<c:forEach var="dto" items="${dtos}">
												<tr align="center">
													<td><fmt:formatDate value="${dto.salary_InDay}"
															pattern="YY/MM" /></td>
													<td>${dto.id}</td>
													<td>${dto.name}</td>
													<td>${dto.depart_name}</td>
													<td>${dto.sal+dto.over+dto.meals+dto.car}</td>
													<td>${dto.sal}</td>
													<td>${dto.meals}</td>
													<td>${dto.car}</td>
													<td>${dto.over}</td>
													<!-- 기본급:1, 연장근무:2, 식대:3, 차량유지비:4 -->
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
			<!-- /page content -->

			<!-- footer content -->
				<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<!-- /page content -->
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
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
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<nav class="nav navbar-nav">
						<ul class=" navbar-right">
							<li class="nav-item dropdown open" style="padding-left: 15px;">
								<a href="javascript:;" class="user-profile dropdown-toggle"
								aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
								aria-expanded="false"> <img src="${img}sample/img.jpg"
									alt="">이름
							</a>
								<div class="dropdown-menu dropdown-usermenu pull-right"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Profile</a> <a
										class="dropdown-item" href="#"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a>
								</div>
							</li>

							<li role="presentation" class="nav-item dropdown open"><a
								href="javascript:;" class="dropdown-toggle info-number"
								id="navbarDropdown1" data-toggle="dropdown"
								aria-expanded="false"> <i class="fa fa-envelope-o"></i> <span
									class="badge bg-green">6</span>
							</a>
								<ul class="dropdown-menu list-unstyled msg_list" role="menu"
									aria-labelledby="navbarDropdown1">
									<li class="nav-item"><a class="dropdown-item"> <span>
												<span>John Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li class="nav-item">
										<div class="text-center">
											<a class="dropdown-item"> <strong>See All Alerts</strong>
												<i class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
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
													<td><fmt:formatDate value="${dto.salary_month}"
															pattern="YY/MM" /></td>
													<td>${dto.id}</td>
													<td>${dto.name}</td>
													<td>${dto.depart_name}</td>
													<td>${dto.paytotal}</td>
													<td>${dto.pay}</td>
													<td>${dto.meal}</td>
													<td>${dto.contract_vehicle}</td>
													<td>${dto.overtime}</td>
													<!-- 기본급:1, 연장근무:2, 식대:3, 차량유지비:4 -->
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
								<table style="width: 1000px" align="center">
										<tr align="center">
											<th align="center">
												<!-- 게시글이 있으면 --> <c:if test="${salary_list_cnt > 0}">
													<!-- 처음[◀◀] /  이전블록[◀]  , 특수문자 : 한글상태 ㅁ+한자키-->
													<c:if test="${startPage > pageBlock}">
														<a href="salary_list_human"> [◀◀] </a>
														<a href="salary_list_human?pageNum=${startPage - pageBlock}">
															[◀] </a>
													</c:if>

													<!-- 블록내의 페이지 번호 -->
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:if test="${i == currentPage}">
															<span><a href="salary_list_month?pageNum=${i}"><input type="button" value="${i}"></a></span>
														</c:if>
														<c:if test="${i != currentPage}">
															<a href="salary_list_human?pageNum=${i}"><input type="button" value="${i}"></a>
														</c:if>
													</c:forEach>

													<!-- 다음블록[▶] / 마지막[▶▶] -->
													<c:if test="${pageCount > endPage}">
														<a href="salary_list_human?pageNum=${startPage + pageBlock}">
															[▶]</a>
														<a href="salary_list_human?pageNum=${pageCount}"> [▶▶]</a>
													</c:if>
												</c:if>
											</th>
										</tr>
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
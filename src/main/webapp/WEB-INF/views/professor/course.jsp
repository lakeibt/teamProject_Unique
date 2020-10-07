<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>

<head>
<title>[유일대]</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet">
<!--load all styles -->
</head>

<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../include/professor_sidebar.jsp"%>


		<div class="main-panel">

			<%@ include file="../include/professor_header.jsp"%>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<c:if test="${cnt > 0}">
								<c:forEach var="dto" items="${dtos}">
									<div class="card">
										<div class="card-body">
											<div class="row" style="margin: 0px 10px;">
												<div class="col-md-12">
													<div class="form-group">
														<h3>${dto.co_name}</h3>
													</div>
												</div>
											</div>
											<div class="row" style="margin: 0px 10px;">
												<div class="col-md-12">
													<div class="form-group">
														<i class="material-icons">access_time</i>
														<p style="display: inline-block;">${dto.co_day}${dto.le_code}</p>
														<i class="material-icons">person</i>
														<p style="display: inline-block;">${dto.co_num}/${dto.limit_num}</p>
													</div>
												</div>
											</div>
											<button type="button" onclick="${professor}course_register"
												class="btn btn-primary pull-right">수업 관리</button>
											<div class="clearfix"></div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>

</html>
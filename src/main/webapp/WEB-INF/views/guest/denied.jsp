<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]접속불가</title>
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
							<div class="card-body">
								<h2>접속 거부 페이지</h2>
								<ol>
									<li><a href="${guest}main">Home</a></li>
									<li>Contact</li>
								</ol>
							</div>
						</div>
						<div style = "width:50%; margin:0 auto;">
	      					<img src = "${img}sample/authority.jpg" style = "width:100%;"/>
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
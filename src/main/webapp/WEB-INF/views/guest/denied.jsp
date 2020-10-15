<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]로그인</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../include/student_sidebar.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
                
                			<div class="container">
								<div class="d-flex justify-content-between align-items-center">
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
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container-fluid">
			<nav class="float-left">
				<ul>
					<li><a href="https://www.creative-tim.com"> Creative Tim </a>
					</li>
					<li><a href="https://creative-tim.com/presentation"> About
							Us </a></li>
					<li><a href="http://blog.creative-tim.com"> Blog </a></li>
					<li><a href="https://www.creative-tim.com/license">
							Licenses </a></li>
				</ul>
			</nav>
			<div class="copyright float-right" id="date">
				, made with <i class="material-icons">favorite</i> by <a
					href="https://www.creative-tim.com" target="_blank">Creative
					Tim</a> for a better web.
			</div>
		</div>
	</footer>
	<script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>

</html>
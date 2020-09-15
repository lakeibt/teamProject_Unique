<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/guest_bootstrap.jsp" %>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>수강신청</h2>
				</div>
			</div>
		</section>
		<!-- 수강신청 페이지 -->
		<%@ include file="../include/guest_left.jsp"%>
		<script src="https://unpkg.com/react@15/dist/react.min.js"></script> <!--react -->
		<script src="https://unpkg.com/react-dom@15/dist/react-dom.min.js"></script>
		<!-- react-dom -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.min.js"></script>
		<!-- babel -->
		<script type="text/babel"> 
		
	 class Hello extends React.Component{ 
     render(){ 
           return(<div>
                       <input type="text" name="id" placeholder="아이디"/>
					   <input type="password" name="pwd" placeholder="비밀번호"/>
                  </div>)
      }
  }
	ReactDOM.render(<Hello />, document.getElementById('root'))
	
</script>
		<div id="root"></div>
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500"></section>
		<!-- End Contact Section -->

		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->
	<%@ include file="../include/footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/professor_bootstrap.jsp" %>
</head>

<body>

  <%@ include file = "../include/professor_header.jsp" %>

  <main id="main">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">
			<div class="d-flex justify-content-between align-items-center">
				<h2>내 정보</h2>
				<ol>
				  	<li><a href="${professor}main">홈</a></li>
				    <li>내 정보</li>
			    </ol>
			</div>
		</div>
    </section><!-- End Contact Section -->
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
					<div class="container">
					<div class="contact">
						<div class="row">
							<div class="col-lg-12 d-flex flex-column justify-content-center-center">
								<div class="icon-box">
									<div class="icon-box">
									<form class="php-email-form">
										<table class="table" style="font-size:12px;">
											<thead>
												<tr>
													<th colspan="9">김건설님의 정보</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>사진</th>
													<td><img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:150px"></td>
												</tr>
												<tr>
													<th>이름</th>
													<td><input class="form-control" type="text" value="김건축" readOnly></td>
													<th>영문이름</th>
													<td><input class="form-control" type="text" value="build kim" readOnly></td>
													<td colspan="5"></td>
												</tr>
												<tr>
													<th>교번</th>
													<td><input class="form-control" type="text" value="E20208090" readOnly></td>
													<th>학과</th>
													<td><input class="form-control" type="text" value="무슨무슨과" readOnly></td>
													<th>전공</th>
													<td><input class="form-control" type="text" value="무슨무슨공학" readOnly></td>
													<td colspan="3"></td>
												</tr>
												<tr>
													<th>직책</th>
													<td><input class="form-control" type="text" value="교수" readOnly></td>
													<th>생년월일</th>
													<td><input class="form-control" type="text" value="001225" readOnly></td>
													<th>입학년도</th>
													<td><input class="form-control" type="text" value="2020.3" readOnly></td>
													<td colspan="3"></td>
												</tr>
												<tr>
													<th>휴대폰번호</th>
													<td><input class="form-control" type="text" value="010-1234-5678"></td>
													<th>이메일</th>
													<td><input class="form-control" type="text" value="khs@naver.com"></td>
													<td colspan="5"></td>
												</tr>
												<tr>
													<th>집주소</th>
													<td colspan="3"><input class="form-control" type="text" value="서울 어쩌구 저쩌구 1-234"></td>
													<td colspan="5"></td>
												</tr>
											</tbody>
										</table>
										
											<div class="text-center">
												<button class="php-email-form" type="submit">
													<font style="vertical-align:inherit;">
														<font style="vertical-align:inherit;">정보수정</font>
													</font>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>      
      	
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/professor_bootstrap_js.jsp" %>
</body>

</html>
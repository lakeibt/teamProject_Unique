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
          <h4>홈</h4>
        </div>
      </div>
    </section><!-- End Contact Section -->
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="padding:30px 0px">
 		<section class="services"  style="padding:0">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 entries">
						<div class="entry">
							<div class="member">
								<div class="member-info">
								<div class="icon-box icon-box">
									<img src="${stu_photo}myPage_sample.jpg" class="img-fluid" style="width:50%; align:center">
									<br><br>
									<table class="table" style="font-size:14px; width:100%">
											<tr>
												<td style="width:30%;">이름</td>
												<td style="width:60%">김건축</td>
											</tr>
											<tr>
												<td style="width:30%;">교번</td>
												<td style="width:60%">20202020</td>
											</tr>
											<tr>
												<td style="width:30%;">학과</td>
												<td style="width:60%">건축학과</td>
											</tr>
											<tr>
												<td style="width:30%;">직책</td>
												<td style="width:60%">교수</td>
											</tr>											
									</table>
								</div>
							</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-8 entries">
						<div class="title">공지사항</div>
						<div class="icon-box icon-box">
							<table class="table">
								<tbody>
									<tr>
										<th style="width:20%">글번호</th>
										<th style="width:50%">제목</th>
										<th style="width:30%">작성일자</th>
									</tr>
									<tr>
										<td style="width:20%">3</td>
										<td style="width:50%">제목3</td>
										<td style="width:30%">작성일자</td>
									</tr>
									<tr>
										<td style="width:20%">2</td>
										<td style="width:50%">제목2</td>
										<td style="width:30%">작성일자</td>
									</tr>
									<tr>
										<td style="width:20%">1</td>
										<td style="width:50%">제목1</td>
										<td style="width:30%">작성일자</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="title">강의현황</div>
						<div class="icon-box icon-box">
							<table class="table">
								<tbody>
									<tr>
										<th style="width:10%">요일</th>
										<th style="width:20%">교시</th>
										<th style="width:50%">강의명</th>
										<th style="width:20%">인원</th>
									</tr>
									<tr>
										<td style="width:10%">월</td>
										<td style="width:20%">1,2</td>
										<td style="width:50%">건축학개론</td>
										<td style="width:20%">25/30</td>
									</tr>
									<tr>
										<td style="width:10%">화</td>
										<td style="width:20%">4,5</td>
										<td style="width:50%">회계원리</td>
										<td style="width:20%">20/30</td>
									</tr>
									<tr>
										<td style="width:10%">수</td>
										<td style="width:20%">4,5</td>
										<td style="width:50%">재무관리</td>
										<td style="width:20%">25/30</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</div>
		</section>     
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/professor_bootstrap_js.jsp" %>
</body>

</html>
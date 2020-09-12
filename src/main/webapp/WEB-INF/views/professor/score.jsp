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

    <!-- ======= Blog Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>성적관리</h2>

          <ol>
            <li><a href="${professor}main">홈</a></li>
            <li>성적관리</li>
          </ol>
        </div>
      </div>
    </section><!-- End Blog Section -->

    <!-- ======= Blog Section ======= -->
    <section class="blog" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
    

      <div class="container">

    <select class="custom-select" style="width:150px">
	  <option selected>전체</option>
	  <option value="1">2020-2학기</option>
	  <option value="2">2020-1학기</option>
	</select>
	<br><br>
	
        <div class="row">

          <div class="col-lg-12 entries">

            <article class="entry">

              <div class="entry-img">
                <img src="assets/img/blog-post-1.jpg" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="#">강의1</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <div class="read-more">
                  <a href="#" style="background-color:gray">수업중</a>
                </div>
              </div>

            </article><!-- End blog entry -->

            <article class="entry">

              <div class="entry-img">
                <img src="assets/img/blog-post-2.jpg" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
              <a href="#">강의2</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <div class="read-more">
                  <a href="${professor}score_register">성적 입력</a>
                </div>
              </div>

            </article><!-- End blog entry -->

            <article class="entry">

              <div class="entry-img">
                <img src="assets/img/blog-post-3.jpg" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
             	 <a href="#">강의3</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <div class="read-more">
                  <a href="${professor}score_register">성적 입력</a>
                </div>
              </div>

            </article><!-- End blog entry -->

            <div class="blog-pagination">
              <ul class="justify-content-center">
                <li class="disabled"><i class="icofont-rounded-left"></i></li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#"><i class="icofont-rounded-right"></i></a></li>
              </ul>
            </div>

          </div><!-- End blog entries list -->

        </div><!-- End .row -->

      </div><!-- End .container -->

    </section><!-- End Blog Section -->

  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/professor_bootstrap_js.jsp" %>
</body>

</html>
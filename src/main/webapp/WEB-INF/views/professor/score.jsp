<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact - Moderna Bootstrap Template</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${img}favicon.png" rel="icon">
  <link href="${img}apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${resources}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${resources}vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${resources}vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${resources}vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${resources}vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${resources}vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${resources}vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${resources}css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Moderna - v2.0.1
  * Template URL: https://bootstrapmade.com/free-bootstrap-template-corporate-moderna/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
            
              <h2 class="entry-title">
                <a href="#">성적 입력 필요</a>
              </h2>
              
             <article class="entry">

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
                  <a href="${professor}score_register">성적 입력</a>
                </div>
              </div>

            </article><!-- End blog entry -->
            
             <article class="entry">

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

            </article><!-- End blog entry -->

           <article class="entry">

              <h2 class="entry-title">
                <a href="#">성적 입력 완료</a>
              </h2>

			<article class="entry">

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
                  <a href="#" style="background-color:gray">성적 수정</a>
                </div>
              </div>

            </article><!-- End blog entry -->
            
            <article class="entry">

              <h2 class="entry-title">
                <a href="#">강의4</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <div class="read-more">
                  <a href="#" style="background-color:gray">성적 수정</a>
                </div>
              </div>

            </article><!-- End blog entry -->

            </article><!-- End blog entry -->

          </div><!-- End blog entries list -->

        </div><!-- End .row -->

      </div><!-- End .container -->

    </section><!-- End Blog Section -->

  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="${resources}vendor/jquery/jquery.min.js"></script>
  <script src="${resources}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${resources}vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${resources}vendor/php-email-form/validate.js"></script>
  <script src="${resources}vendor/venobox/venobox.min.js"></script>
  <script src="${resources}vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${resources}vendor/counterup/counterup.min.js"></script>
  <script src="${resources}vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="${resources}vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${resources}vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${resources}js/main.js"></script>

</body>

</html>
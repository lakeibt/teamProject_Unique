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
          <h2>강의관리</h2>

          <ol>
            <li><a href="${professor}main">홈</a></li>
            <li>강의관리</li>
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

            <article class="entry" style="padding-right: 10px;">

              <h2 class="entry-title" style="width:95%; display:inline-block;">
                <a href="#">강의1</a>
              </h2>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#course1" aria-controls="course1" aria-expanded="false" aria-label="Toggle navigation" style="display:inline-block;">
			        <span><i class="fas fa-chevron-down" style="color: #32627b;"></i></span>
			  </button>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
               	<nav class="navbar navbar-light" style="background-color: white;">
			      <div class="collapse navbar-collapse" id="course1">
			        <nav class="navbar navbar-dark bg-dark" style="background-color: #1e4356; margin: 5px;">
				      <a class="navbar-brand" href="#">1주차</a>
				      <button class="navbar-toggler" type="button"  style="position: absolute; right: 80px; top:8px; width: 56px; height: 40px;">
				        <span><i class="fas fa-plus"></i></span>
				      </button>
				      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#study1" aria-controls="study1" aria-expanded="false" aria-label="Toggle navigation">
				        <span class="navbar-toggler-icon"></span>
				      </button>
				
				      <div class="collapse navbar-collapse" id="study1" style="margin: 5px;">
				        <ul class="navbar-nav mr-auto">
				          <li class="nav-item active">
				            <button class="navbar-toggler" type="button" style="height: 40px;"><span><i class="fas fa-minus"></i></span></button>
				            <a class="nav-link" href="#" style="display: inline-block; margin-left: 5px;">강의 제목</a>
				          </li>
				        </ul>
				      </div>
				    </nav>
				    <nav class="navbar navbar-dark bg-dark" style="margin: 5px;">
				      <a class="navbar-brand" href="#">2주차</a>
				      <button class="navbar-toggler" type="button"  style="position: absolute; right: 80px; top:8px; width: 56px; height: 40px;">
				        <span><i class="fas fa-plus"></i></span>
				      </button>
				      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#study2" aria-controls="study2" aria-expanded="false" aria-label="Toggle navigation">
				        <span class="navbar-toggler-icon"></span>
				      </button>
				
				      <div class="collapse navbar-collapse" id="study2" style="margin: 5px;">
				        <ul class="navbar-nav mr-auto">
				          <li class="nav-item active">
				            <button class="navbar-toggler" type="button" style="height: 40px;"><span><i class="fas fa-minus"></i></span></button>
				            <a class="nav-link" href="#" style="display: inline-block;  margin-left: 5px;">강의 제목</a>
				          </li>
				        </ul>
				      </div>
				    </nav>
			      </div>
			    </nav>
              </div>

            </article><!-- End blog entry -->

            <article class="entry" style="padding-right: 10px;">

             <h2 class="entry-title" style="width:95%; display:inline-block;">
                <a href="#">강의2</a>
              </h2>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#course2" aria-controls="course2" aria-expanded="false" aria-label="Toggle navigation" style="display:inline-block;">
			        <span><i class="fas fa-chevron-down" style="color: #32627b;"></i></span>
			  </button>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="#">30/30</a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="#">월요일 1,2</a></li>
                </ul>
              </div>

              <div class="entry-content">
               	<nav class="navbar navbar-light" style="background-color: white;">
			      <div class="collapse navbar-collapse" id="course2">
			        <nav class="navbar navbar-dark bg-dark" style="background-color: #1e4356; margin: 5px;">
				      <a class="navbar-brand" href="#">1주차</a>
				      <button class="navbar-toggler" type="button"  style="position: absolute; right: 80px; top:8px; width: 56px; height: 40px;">
				        <span><i class="fas fa-plus"></i></span>
				      </button>
				      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#study3" aria-controls="study3" aria-expanded="false" aria-label="Toggle navigation">
				        <span class="navbar-toggler-icon"></span>
				      </button>
				
				      <div class="collapse navbar-collapse" id="study3" style="margin: 5px;">
				        <ul class="navbar-nav mr-auto">
				          <li class="nav-item active">
				            <button class="navbar-toggler" type="button" style="height: 40px;"><span><i class="fas fa-minus"></i></span></button>
				            <a class="nav-link" href="#" style="display: inline-block; margin-left: 5px;">강의 제목3</a>
				          </li>
				        </ul>
				      </div>
				    </nav>
				    <nav class="navbar navbar-dark bg-dark" style="margin: 5px;">
				      <a class="navbar-brand" href="#">2주차</a>
				      <button class="navbar-toggler" type="button"  style="position: absolute; right: 80px; top:8px; width: 56px; height: 40px;">
				        <span><i class="fas fa-plus"></i></span>
				      </button>
				      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#study4" aria-controls="study4" aria-expanded="false" aria-label="Toggle navigation">
				        <span class="navbar-toggler-icon"></span>
				      </button>
				
				      <div class="collapse navbar-collapse" id="study4" style="margin: 5px;">
				        <ul class="navbar-nav mr-auto">
				          <li class="nav-item active">
				            <button class="navbar-toggler" type="button" style="height: 40px;"><span><i class="fas fa-minus"></i></span></button>
				            <a class="nav-link" href="#" style="display: inline-block;  margin-left: 5px;">강의 제목4</a>
				          </li>
				        </ul>
				      </div>
				    </nav>
			      </div>
			    </nav>
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
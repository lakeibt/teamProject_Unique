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
          <h2>성적등록</h2>

          <ol>
            <li><a href="${professor}main">홈</a></li>
            <li><a href="${professor}score">성적관리</a></li>
            <li>성적등록</li>
          </ol>
        </div>
      </div>
    </section><!-- End Contact Section -->
    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
    
          <div class="container">
      <table class="table table-sm">
		  <thead class="thead-light">
		    <tr align="center">
		      <th scope="col">학번</th>
		      <th scope="col">성명</th>
		      <th scope="col">태도</th>
		      <th scope="col">출석</th>
		      <th scope="col">중간</th>
		      <th scope="col">기말</th>
		      <th scope="col">총점</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>김건축</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>윤미술</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>한체육</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>한체육</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>한체육</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>한체육</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		    <tr>
		      <th scope="row">20202020</th>
		      <td>한체육</td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		      <td><input class="form-control form-control-sm" type="text" placeholder=""></td>
		    </tr>
		  </tbody>
		  <tfoot>
		  	<tr align="center">
		  		<td colspan="7">
		  			<button type="button" class="btn btn-info">취소</button>
		  			<button type="button" class="btn btn-info">등록</button>
		  		</td>
		  	</tr>
		  </tfoot>
		</table>
      	</div>
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
  </main><!-- End #main -->

  <%@ include file = "../include/professor_footer.jsp" %>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/professor_bootstrap_js.jsp" %>
</body>

</html>
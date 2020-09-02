<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "setting.jsp" %>
<!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container">

       <div class="logo float-left">
        <h1 class="text-light"><a href="${guest}main"><span>서울대학교</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
				<ul>
					<li class="active"><a href="${guest}myPage">홈</a></li>　
					<li><a href="${guest}myPage_modify">내 정보</a></li>　
					<li><a href="${guest}course_register">수강신청</a></li>　
					<li class="drop-down"><a href="#">수강과목조회</a>　
						<ul>
							<li><a href="${guest}course">강의</a></li>
							<li><a href="${guest}course_timeTable">시간표조회</a></li>
						</ul></li>
					<li><a href="${guest}score">성적조회</a></li>　
					<li><a href="${guest}employment">취업지원</a></li>　
					<li><a href="#">쪽지 <!-- <img alt="#" src="assets/img/99.png" style="width:23px;height:18px;"> --></a></li>　
				</ul>
			</nav>

    </div>
  </header><!-- End Header -->
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
			<li class="active"><a href="${professor}main">홈</a></li>
			<li class="drop-down"><a href="">정보</a>
				<ul>
					<li><a href="${professor}myPage">조회</a></li>
					<li><a href="${professor}myPage">수정</a></li>
				</ul>
			</li>
			<li class="drop-down"><a href="">강의관리</a>
				<ul>
					<li><a href="${professor}course">조회</a></li>
					<li><a href="${professor}course_register">등록</a></li>
					<li><a href="${professor}course_modify">수정</a></li>
					<li><a href="${professor}course_delete">삭제</a></li>
				</ul>
			</li>
			<li class="drop-down"><a href="">성적관리</a>
				<ul>
					<li><a href="${professor}score">조회</a></li>
					<li><a href="${professor}score_register">등록</a></li>
					<li><a href="${professor}score_modify">수정</a></li>
				</ul>
			</li>
			<li class="drop-down"><a href="">쪽지</a>
				<ul>
					<li><a href="${professor}note">쪽지알림</a></li>
					<li><a href="${professor}note">쪽지확인</a></li>
					<li><a href="${professor}note">쪽지발송</a></li>
				</ul>
			</li>
		</ul>
		</nav><!-- .nav-menu -->
	</div>
</header><!-- End Header -->
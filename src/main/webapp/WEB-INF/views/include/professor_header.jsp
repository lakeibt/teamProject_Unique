<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script src="https://kit.fontawesome.com/8ff63adf74.js"
	crossorigin="anonymous"></script>
<link
	href="${resources}css/professor_header_style.css"
	rel="stylesheet">

<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
	<div class="container">
		<div class="logo float-left">
			<h1 class="text-light">
				<a href="${guest}main"><span>서울대학교</span></a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>

		<nav class="nav-menu float-right d-none d-lg-block">
			<ul>
				<li class="active"><a href="${professor}main">홈</a></li>
				<li class="active"><a href="${professor}myPage"
					style="color: #ddecf5">내정보</a></li>
				<li class="active"><a href="${professor}course"
					style="color: #ddecf5">강의관리</a></li>
				<li class="active"><a href="${professor}score"
					style="color: #ddecf5">성적관리</a></li>
				<li class="drop-down"><a href="#"><i class="far fa-envelope"></i><span class="message-new">New</span></a>
					<ul class="message-box">
						<li class="message-item">
							<a class="dropdown-item">
								<span>
									<span>관리자</span><span class="time">3분전</span>
								</span>
								<span class="message"> 강의가 배정되었습니다. 해당 강의에 수업을 등록해주세요. </span>
							</a>
						</li>
						<li class="message-item">
							<div class="text-center">
								<a class="dropdown-item" href="${professor}messageList"> <strong>전체 보기</strong>
									<i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		<!-- .nav-menu -->
	</div>
</header>
<!-- End Header -->
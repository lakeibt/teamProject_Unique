<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sidebar" data-color="purple" data-background-color="black" data-image="${assets}img/sidebar-2.jpg">
	<div class="logo">
		<a href="${student}myPage" class="simple-text logo-normal">Unique Universal</a>
	</div>
	<div class="sidebar-wrapper">
		<ul class="nav">
			<li class="nav-item">
				<a class="nav-link" href="${student}myPage">
					<i class="material-icons" style = "color:white;">dashboard</i>
					<p style = "color:white; font-size:18px;">홈</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}myPage_modify"> 
					<i class="material-icons" style = "color:white;">person</i>
					<p style = "color:white; font-size:18px;">내 정보</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}course_register">
					<i class="material-icons" style = "color:white;">schedule</i>
					<p style = "color:white; font-size:18px;">수강신청</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}course">
					<i class="material-icons" style = "color:white;">library_books</i>
					<p style = "color:white; font-size:18px;">수강목록</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}course_timeTable">
					<i class="material-icons" style = "color:white;">event</i>
					<p style = "color:white; font-size:18px;">시간표</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}score">
					<i class="material-icons" style = "color:white;">rule</i>
					<p style = "color:white; font-size:18px;">학점</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}employment">
					<i class="material-icons" style = "color:white;">assignment_ind</i>
					<p style = "color:white; font-size:18px;">취업 정보</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}contest">
					<i class="material-icons" style = "color:white;">supervisor_account</i>
					<p style = "color:white; font-size:18px;">공모전 정보</p>
				</a>
			</li>
		</ul>
	</div>
</div>
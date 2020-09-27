<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sidebar" data-color="purple" data-background-color="black" data-image="${assets}img/sidebar-2.jpg">
	<div class="logo"><a href="#" class="simple-text logo-normal">Unique Universal</a></div>
	<div class="sidebar-wrapper">
		<ul class="nav">
			<li class="nav-item">
				<a class="nav-link" href="${student}myPage"> 
					<i class="material-icons">dashboard</i>
					<p>홈</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}myPage_modify"> 
					<i class="material-icons">person</i>
					<p>내 정보</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}coures">
					<i class="material-icons">library_books</i>
					<p>수강목록</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}course_timeTable">
					<i class="material-icons">event</i>
					<p>시간표</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}course_register">
					<i class="material-icons">schedule</i>
					<p>수강신청</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}employment">
					<i class="material-icons">assignment_ind</i>
					<p>취업 정보</p>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${student}contest">
					<i class="material-icons">supervisor_account</i>
					<p>공모전 정보</p>
				</a>
			</li>
		</ul>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.blog .sidebar sidebar-title a, .sidebar .sidebar-item.categories ul li a {color:#fff;}
</style>
<!-- left side bar(scroll menu) -->
<section class="contact" id="leftbar" style="width:18%; display:inline-block; position:relative; vertical-align:top;">
	<section class="services">
		<div class="container" style="padding-left:100px;">
			<div class="row">
				<div class="blog">
					<div class="col-lg-12 entries">
						<div style="background-color:#0d2735;">
							<div class="sidebar" style="margin:0px;">
								<div class="sidebar-title"><a href="#">Categories</a></div>
								<hr style="border-top:2px dashed #f3f8fa;">
								<div class="sidebar-item categories">
									<ul>
										<li><a href="${guest}myPage">홈</a></li>
										<li><a href="${guest}myPage_modify">내 정보</a></li>
										<li><a href="${guest}course_register">수강신청</a></li>
										<li><a href="#">수강과목조회</a>
											<ul style="margin-left:30px;">
												<li><a href="${guest}course">강의</a></li>
												<li><a href="${guest}course_timeTable">시간표조회</a></li>
											</ul>
										</li>
										<li><a href="${guest}score">성적조회</a></li>
										<li><a href="${guest}employment">취업지원</a></li>
										<li><a href="${guest}message">쪽지 </a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</section>
<!-- left side bar end -->
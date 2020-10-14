<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">
<link href="${resources}css/professor.css" rel="stylesheet">
<title>[유일대]</title>
<script type="text/javascript">
	function showLecture(obj) {

		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");

		var co_code = $('#co_code').val();
		var week = $(obj).attr('id');
		var div = $(obj).parent().parent();
		var btn = $(obj).next();

		$.ajax({
			url : '${professor}lecture_detail?le_week=' + week + '&co_code='
					+ co_code,
			type : "POST",
			beforeSend : function(xhr) {
				xhr.setRequestHeader(header, token);
			},
			dataType : "html",
			success : function(data) {

				$(obj).hide();
				btn.show();
				div.after(data);

			},
			error : function() {
				alert('오류!');
			}
		});
	};

	function deleteLecture(obj) {
		var btn = $(obj).prev();
		btn.show();
		$(obj).hide();
		var div = $(obj).parent().parent().next().next().next();
		div.remove();
	};
</script>
</head>
<body class="dark-edition">
	<input type="hidden" id="co_code" value="${co_code}">
	<%@ include file="../include/professor_sidebar.jsp"%>

	<div class="main-panel">

		<%@ include file="../include/professor_header.jsp"%>

		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header card-header-primary">
								<h4 class="card-title ">수업목록</h4>
							</div>
							<div class="card-body">
								<div class="card lecture"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;" >
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="1"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">1주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="2"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e;  font-weight: bold; margin-top:7px;">2주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="3"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e;  font-weight: bold; margin-top:7px;">3주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="4"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">4주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="5"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">5주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right; ">
											<button class="lecture_title_button1" id="6"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">6주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="7"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">7주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="8"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e;  font-weight: bold; margin-top:7px;">8주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right;">
											<button class="lecture_title_button1" id="9"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">9주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right; ">
											<button class="lecture_title_button1" id="10"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">10주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right; ">
											<button class="lecture_title_button1" id="11"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">11주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
								<div class="card"
									style="padding: 10px; padding-left: 20px; padding-right: 20px; color: white; margin-top:15px; margin-bottom:15px;">
									<div class="col-md-12" style="display: inline-block;">
										<div
											style="height: 100%; display: inline-block; float: right; ">
											<button class="lecture_title_button1" id="12"
												onclick="showLecture(this)">
												<i class="fas fa-chevron-down"></i>
											</button>
											<button class="lecture_title_button2"
												onclick="deleteLecture(this)">
												<i class="fas fa-chevron-up"></i>
											</button>
										</div>
										<h4 style="display: inline-block; color:#1f283e; font-weight: bold; margin-top:7px;">12주차</h4>
									</div>
									<!-- 강의 데이터 자리 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
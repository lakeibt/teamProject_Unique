<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="${resources}css/professor_header_style.css" rel="stylesheet">
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

// 전체보기
function messageList() {
	$('#messageList').children().remove();
	$("#message-form").css("width", '800px');
	
	var ajaxOption = {
               url : '${professor}messageList_form',
               type : "POST",
               dataType : "html"
       };
       
       $.ajax(ajaxOption).done(function(data){
    	   
           $('#messageList').html(data);
	});
       
       event.stopPropagation();
};

//쪽지 selectBox	
function changeList() {
    var ajaxOption = {
            url : '${professor}messageList_form?option=' + $('.message_select option:selected').val(),
            type : "POST",
            dataType : "html"
    };
    
    $.ajax(ajaxOption).done(function(data){
        $('#messageList').children().remove();
        $('#messageList').html(data);
    });
};

// 쪽지 상세보기
function message_load(num) {
	$.ajax({
		url : '${professor}message?num='+num,
		type : 'GET',
		dataType : 'text',
		success : function(data){
			var message_css = $("#message_send").css("margin-left");
			var message_send_css = $("#message_send").css("margin-left");
			
			$('#message').html(data);
		},
		error : function() {
			alert('오류!!!!');	
		}
	});
};

//쪽지 보내기 폼 불러오기
function message_send(){
	$.ajax({
		url : '${professor}message_form',
		type : 'POST',
		dataType : 'html',
		success : function(data){
			
			$('#message_send').html(data);
									
		},
		error : function() {
			alert('오류!!!!');	
		}
	});
};

</script>
</head>
<body>
	<!-- Navbar -->
	<nav
		class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
		id="navigation-example">
		<div class="container-fluid">
			<div class="navbar-wrapper">
				<a class="navbar-brand" href="javascript:void(0)">Home</a>
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				aria-controls="navigation-index" aria-expanded="false"
				aria-label="Toggle navigation" data-target="#navigation-example">
				<span class="sr-only">Toggle navigation</span> <span
					class="navbar-toggler-icon icon-bar"></span> <span
					class="navbar-toggler-icon icon-bar"></span> <span
					class="navbar-toggler-icon icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end">

				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a class="nav-link"
						href="javscript:void(0)" id="navbarDropdownMenuLink"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="material-icons">markunread</i> <span
							class="notification">5</span>
							<p class="d-lg-none d-md-block">Some Actions</p>
					</a>

						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" id="message-form">
							<div class="row">
								<div class="col-lg-12" id="messageList">
									<ul class="message-box">
										<li class="message-item">
											<a class="dropdown-item">
												<span class="message-info">
												    <span class="time">3분전</span>
													<span>관리자</span>
												</span>
												<span class="message"> 강의가 배정되었습니다. 해당 강의에 수업을 등록해주세요. </span>
											</a>
										</li>
										<li class="message-item-all">
											<div class="text-center">
												<a class="dropdown-item" id="load_messageList"href="javascript:void(0)" onclick="messageList()"> <strong>전체 보기</strong>
												</a>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-lg-6">
									<div id="message">
						
									</div>
								</div>
								<div class="col-lg-6">
									<div id="message_send">
										
									</div>
								</div>
							</div>
							
						</div>
					</li>
					<li class="nav-item dropdown"><a class="nav-link"
						href="${guest}logout" id="navbarDropdownMenuLink"
						aria-haspopup="true" aria-expanded="false">
							<i class="material-icons">power_settings_new</i>
					</a></li>

				</ul>

			</div>
		</div>
	</nav>
	<!-- End Navbar -->
</body>
</html>
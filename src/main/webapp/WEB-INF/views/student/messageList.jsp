<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script>
// 지우기
function deleteMessageSend(obj) {
	var div = $(obj).parent().parent().parent();
	var message_send_css = $("#message_send").css("margin-left");
	if(message_send_css == '9px'){
		$('#message').css({'margin-left' : '15px', 'flex' : '0 0 97.5%'});
		$('#message_send').css({'margin-left' : '15px', 'flex' : '0 0 97.5%'});
	}
	div.hide();
};
function deleteMessage(obj) {
	var div = $(obj).parent().parent().parent();
	var message_css = $("#message").css("margin-left");
	if(message_css == '17px'){
		$('#message_send').css({'margin-left' : '15px', 'flex' : '0 0 97.5%'});
		$('#message').css({'margin-left' : '15px', 'flex' : '0 0 97.5%'});
	}
	div.hide();
};
// 처음 불러오기
$(document).ready(function() {
	var ajaxOption = {
		url : '${student}messageList_form',
		type : "POST",
		dataType : "html"
	};
	$.ajax(ajaxOption).done(function(data) {
		$('#messageList').html(data);
	});
});
// 쪽지 selectBox	
function changeList() {
	var ajaxOption = {
		url : '${student}messageList_form?option='+ $('.message_select option:selected').val(),
		type : "POST",
		dataType : "html"
	};
	$.ajax(ajaxOption).done(function(data) {
		$('#messageList').children().remove();
		$('#messageList').html(data);
	});
};


// 쪽지 상세보기
function message_load(num) {
	$.ajax({
		url : '${student}message?num=' + num,
		type : 'GET',
		dataType : 'text',
		success : function(data) {
			var message_css = $("#message_send").css("margin-left");
			var message_send_css = $("#message_send").css("margin-left");

			$('#message').html(data);

			alert($("#message_send").css("display"));

			if ($('#message_send').is(':visible')) {
				$('#message_send').css({
					'margin-left' : '9px',
					'flex' : '0 0 48%',
					'display' : 'show'
				});
				$('#message').css({
					'margin-left' : '17px',
					'flex' : '0 0 48%',
					'display' : 'show'
				});
			} else {
				$('#message_send').css({
					'margin-left' : '15px',
					'flex' : '0 0 97.5%',
					'display' : 'show'
				});
				$('#message').css({
					'margin-left' : '15px',
					'flex' : '0 0 97.5%',
					'display' : 'show'
				});
			}
		},
		error : function() { alert('오류!!!!'); }
	});
};
// 쪽지 보내기 폼 불러오기
function message_send() {
	$.ajax({
		url : '${student}message_form',
		type : 'POST',
		dataType : 'html',
		success : function(data) {
			var message_css = $("#message_send").css("margin-left");
			var message_send_css = $("#message_send").css("margin-left");

			$('#message_send').html(data);

			alert($("#message").css("display"));

			if ($('#message').is(':visible')) {
				$('#message_send').css({
					'margin-left' : '9px',
					'flex' : '0 0 48%',
					'display' : 'show'
				});
				$('#message').css({
					'margin-left' : '17px',
					'flex' : '0 0 48%',
					'display' : 'show'
				});
			} else {
				$('#message_send').css({
					'margin-left' : '15px',
					'flex' : '0 0 97.5%',
					'display' : 'show'
				});
				$('#message').css({
					'margin-left' : '15px',
					'flex' : '0 0 97.5%',
					'display' : 'show'
				});
			}
		},
		error : function() { alert('오류!!!!'); }
	});
};
</script>
</head>
<style>
.form-control {font-size:12px;}
</style>
<body class="dark-edition">
	<%@ include file="../include/student_header.jsp"%>
	<div class="wrapper">
		<%@ include file="../include/student_sidebar.jsp"%>
		<div class="main-panel">
			<%@ include file="../include/student_header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<!-- 메인 페이지 Start -->
					<div class="row">
						<div class="col-xl-2 col-lg-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title">쪽지함</h4>
									<ol>
										<li><a href="${student}home">홈</a></li>
										<li>쪽지함</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="message" style="flex: 0 0 97.5%; margin-left: 15px;"></div>
						<div id="message_send"  style="flex: 0 0 97.5%; margin-left: 15px;"></div>
					</div>
					<!-- 메인 페이지 End -->
			</div>
		</div>
	</div>
</div>
<%@ include file="../bootstrap/guest_bootstrap_js2.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<link href="${resources}css/professor_header_style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>
//Websocket 강좌
var socket = null;
$(document).ready(function() {
	connectWS();
});
function connectWS() {
	var ws = new WebSocket("ws://192.168.219.111/uni/message/websocket");
	socket = ws;

	ws.onopen = function() {
		console.log("Info: connection opened");
	};
	ws.onmessage = function(event) {
		console.log("ReceiveMessage:", event.data+'\n');
		// alert msg 창 만들어주기
		$('div#alertForm').css('display', 'block');
		$('#message-data').text(event.data);
	}
	ws.onclose = function(event) {
		console.log("Info: connection closed");
		setTimeout(function() {connectWS();}, 100); // retry connection
	};
	ws.onerror = function(error) {console.log("Error: ", error);};
}
</script>
<script type="text/javascript">
$(document).on('click', '#navbarDropdownMenuLink', function(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
	$.ajax({
		url : '${professor}messageSimple',
        type : "POST",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
        	$('.message-box').html(data);	
        }, error : function(){
        }
	});
});  
// 지우기
function deleteMessageSend(obj) {
	var div = $(obj).parent().parent();

	if($('#message_card_div').is(':visible')){
		$('#mv').val('1');
		$('#msv').val('3');
		
		$('#message_div').attr('class','col-lg-12');
		$('#message_send_div').attr('class','col-lg-12');	
	} else{
		$('#mv').val('3');
		$('#msv').val('3');
		
		$('#message_div').attr('class','col-lg-12');
		$('#message_send_div').attr('class','col-lg-12');
	}
	div.remove();
	event.stopPropagation();
};

function deleteMessage(obj) {
	var div = $(obj).parent().parent();
	
	if($('#message_send_card_div').is(':visible')){
		$('#mv').val('3');
		$('#msv').val('1');
		
		$('#message_div').attr('class','col-lg-12');
		$('#message_send_div').attr('class','col-lg-12');	
	} else{
		$('#mv').val('3');
		$('#msv').val('3');
		
		$('#message_div').attr('class','col-lg-12');
		$('#message_send_div').attr('class','col-lg-12');
	}
	div.remove();
	event.stopPropagation();
};
// 전체보기
function messageList(num) {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
	$.ajax({
		url : '${professor}messageList_form?pageNum='+num,
        type : "GET",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
        	$('#messageList').children().remove();
        	$("#message-form").css({"width" : '800px', 'padding' : '0px 20px' });
        	$('#messageList').html(data);	
        }, error : function(){
        	alert('오류!');
        }
	});
	event.stopPropagation();
};
//쪽지 selectBox	
function changeList() {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");	
	
	$.ajax({
        url : '${professor}messageList_form?option=' + $('.message_select option:selected').val(),
        type : "GET",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
            $('#messageList').children().remove();
            $('#messageList').html(data);
        }, error : function(){
        	alert('오류!');
        }
	});
};
// 쪽지 상세보기
function message_load(num) {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
	$.ajax({
		url : '${professor}message_form?num='+num,
		type : 'POST',
		dataType : 'html',
		beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
		success : function(data){
			
			if($('#msv').val() == '1'){
				$('#mv').val('2');
				$('#msv').val('2');
				
				$('#message_div').attr('class','col-lg-6');
				$('#message_send_div').attr('class','col-lg-6');
				
				$('#message').html(data);
			} else if($('#mv').val() == '3' && $('#msv').val() == '3'){
				$('#mv').val('1');
				
				$('#message_div').attr('class','col-lg-12');
				$('#message_send_div').attr('class','col-lg-12');
				
				$('#message').html(data);
			}
		},
		error : function() {
			alert('오류!!!!');	
		}
	});
};
//쪽지 보내기 폼 불러오기
function message_send(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");	
    
	$.ajax({
		url : '${professor}message_send_form',
		type : 'POST',
		dataType : 'html',
		beforeSend: function (xhr) {
	        	xhr.setRequestHeader(header, token);
	    },
		success : function(data){
			
			if($('#mv').val() == '1'){
				$('#mv').val('2');
				$('#msv').val('2');	
				
				$('#message_div').attr('class','col-lg-6');
				$('#message_send_div').attr('class','col-lg-6');

				$('#message_send').html(data);
			} else if($('#mv').val() == '3' && $('#msv').val() == '3'){
				$('#msv').val('1');
				
				$('#message_div').attr('class','col-lg-12');
				$('#message_send_div').attr('class','col-lg-12');
				
				$('#message_send').html(data);
			}
		},
		error : function() {
			alert('오류!!!!');	
		}
	});
};
//쪽지 답장 폼 불러오기
function message_reply(sender_id, sender_name){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");	
    
	$.ajax({
		url : '${professor}message_reply_form?sender_id='+sender_id+'&sender_name='+sender_name,
		type : 'GET',
		dataType : 'html',
		beforeSend: function (xhr) {
	        	xhr.setRequestHeader(header, token);
	    },
		success : function(data){
			if($('#mv').val() == '1'){
				$('#mv').val('2');
				$('#msv').val('2');	
				
				$('#message_div').attr('class','col-lg-6');
				$('#message_send_div').attr('class','col-lg-6');

				$('#message_send').html(data);
			} else if($('#mv').val() == '3' && $('#msv').val() == '3'){
				$('#msv').val('1');
				
				$('#message_div').attr('class','col-lg-12');
				$('#message_send_div').attr('class','col-lg-12');
				
				$('#message_send').html(data);
			}
		},
		error : function() {
			alert('오류!!!!');	
		}
	});
};
</script>
</head>
<body>
	<div class="dark-edition" style="z-index:2; display:none;" id="alertForm">
		<div style="height:70px;"></div> 
		<div class="alert alert-info alert-with-icon" data-notify="container" style="width:50%; float:right;">
			<i class="material-icons" data-notify="icon">add_alert</i>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<i class="material-icons">close</i>
			</button>
			<span data-notify="message" id="message-data">
			
			</span>
		</div>
	</div>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
		<div class="container-fluid">
			<div class="navbar-wrapper">
				<a class="navbar-brand" href="javascript:void(0)">Home</a>
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation" data-target="#navigation-example">
				<span class="sr-only">Toggle navigation</span> 
				<span class="navbar-toggler-icon icon-bar"></span> 
				<span class="navbar-toggler-icon icon-bar"></span> 
				<span class="navbar-toggler-icon icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="material-icons">markunread</i> 
							<span class="notification">${sessionScope.nr_cnt}</span>
							<p class="d-lg-none d-md-block">Some Actions</p>
						</a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" id="message-form">
							<div class="row">
								<div class="col-lg-12" id="messageList">
									<ul class="message-box"></ul>
								</div>
								<input type="hidden" id="mv" value="3">
								<div class="col-lg-12" id="message_div">
									<div id="message"></div>
								</div>
								<input type="hidden" id="msv" value="3">
								<div class="col-lg-12" id="message_send_div">
									<div id="message_send"></div>
								</div>
							</div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link" href="${guest}logout" id="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false"> 
						<i class="material-icons">power_settings_new</i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->
</body>
</html>
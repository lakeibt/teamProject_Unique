<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<meta name="_csrf" th:content="${_csrf.token}"/>
<meta name="_csrf_header" th:content="${_csrf.headerName}"/>
<link href="${resources}css/professor_header_style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

//처음 불러오기
$(document).ready(function(){
	
	var ajaxOption = {
            url : '${professor}messageSimple',
            type : "GET",
            dataType : "text",
            success : function(data){
            	$('.message-box').html(data);	
            }, error : function(){
            	alert('오류!');
            }
    };
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

	div.hide();
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
	
	div.hide();
	event.stopPropagation();
};


// 전체보기
function messageList() {
	$('#messageList').children().remove();
	$("#message-form").css({"width" : '800px',
							'padding' : '0px 20px'
							});
	
	var ajaxOption = {
               url : '${professor}messageList_form',
               type : "GET",
               dataType : "text"
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
            type : "GET",
            dataType : "text"
    };
    
    $.ajax(ajaxOption).done(function(data){
        $('#messageList').children().remove();
        $('#messageList').html(data);
    });
    event.stopPropagation();
};

// 쪽지 상세보기
function message_load(num) {
	
	$.ajax({
		url : '${professor}message?num='+num,
		type : 'GET',
		dataType : 'text',
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
	event.stopPropagation();
};

//쪽지 보내기 폼 불러오기
function message_send(){
	
	$.ajax({
		url : '${professor}message_form',
		type : 'GET',
		dataType : 'text',
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
	event.stopPropagation();
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
					<li class="nav-item dropdown">
						<a class="nav-link"	href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="material-icons">markunread</i> <span class="notification">${sessionScope.nr_cnt}</span>
							<p class="d-lg-none d-md-block">Some Actions</p>
						</a>

						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" id="message-form">
							<div class="row">
								<div class="col-lg-12" id="messageList">
									<ul class="message-box">
										
									</ul>
								</div>
									
								<input type="hidden" id="mv" value="3">
								<div class="col-lg-12" id="message_div">
									<div id="message">
										
									</div>
								</div>
								<input type="hidden" id="msv" value="3">
								<div class="col-lg-12" id="message_send_div">
									<div id="message_send">
										
									</div>
								</div>
								
							</div>
							
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link" href="javscript:void(0)" onclick="window.location = '${guest}logout'" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
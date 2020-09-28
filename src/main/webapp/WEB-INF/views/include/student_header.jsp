<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="${resources}css/student_header_style.css" rel="stylesheet">
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<!-- <script>
//처음 불러오기
$(document).ready(function(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
   $.ajax({
      url : '${student}messageSimple',
        type : "POST",
        beforeSend: function (xhr) {
           xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
           $('.message-box').html(data);   
        }, error : function(){
           alert('오류!');
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
function messageList() {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
   $.ajax({
      url : '${student}messageList_form',
        type : "POST",
        beforeSend: function (xhr) {
           xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
           $('#messageList').children().remove();
           $("#message-form").css({"width" : '800px',
                             'padding' : '0px 20px'
                             });
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
        url : '${student}messageList_form?option=' + $('.message_select option:selected').val(),
        type : "POST",
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
      url : '${student}message_form?num='+num,
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
      url : '${student}message_send_form',
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
</script> -->
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top" id="navigation-example">
	<div class="container-fluid">
		<div class="navbar-wrapper">
			<a class="navbar-brand" href="javascript:void(0)">Home</a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			aria-controls="navigation-index" aria-expanded="false"
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
						<span class="notification">5</span>
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
											<span class="message"> 강의가 배정되었습니다. 해당 강의에 출석하시기 바랍니다. </span>
										</a>
									</li>
									<li class="message-item-all">
										<div class="text-center">
											<a class="dropdown-item" id="load_messageList" href="javascript:void(0)" onclick="messageList()">
												<strong>전체보기</strong>
											</a>
										</div>
									</li>
								</ul>
							</div>
							<div class="col-lg-6"><div id="message"></div></div>
							<div class="col-lg-6"><div id="message_send"></div></div>
						</div>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink"
					   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
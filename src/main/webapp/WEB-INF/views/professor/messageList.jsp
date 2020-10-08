<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Moderna Bootstrap Template</title>
	<%@ include file = "../bootstrap/professor_bootstrap.jsp" %>
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">

	// 지우기
	function deleteMessageSend(obj) {
		var div = $(obj).parent().parent().parent();
		var message_send_css = $("#message_send").css("margin-left");
		if(message_send_css == '9px'){
			$('#message').css({'margin-left' : '15px',
									'flex' : '0 0 97.5%'});
			$('#message_send').css({'margin-left' : '15px',
									'flex' : '0 0 97.5%'});
		}
		
		div.hide();
	};
	
	function deleteMessage(obj) {
		var div = $(obj).parent().parent().parent();
		var message_css = $("#message").css("margin-left");
		if(message_css == '17px'){
			$('#message_send').css({'margin-left' : '15px',
									'flex' : '0 0 97.5%'});
			$('#message').css({'margin-left' : '15px',
							   'flex' : '0 0 97.5%'});
		}
		
		div.hide();
	};
	
	
	// 처음 불러오기
	$(document).ready(function(){
		var ajaxOption = {
                url : '${professor}messageList_form',
                type : "POST",
                dataType : "html"
        };
        
        $.ajax(ajaxOption).done(function(data){
            $('#messageList').html(data);
        });
	});

	// 쪽지 selectBox	
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
				
				alert($("#message_send").css("display"));
				
				if($('#message_send').is(':visible')){
					$('#message_send').css({'margin-left' : '9px',
											'flex' : '0 0 48%',
											'display' : 'show'});
					$('#message').css({'margin-left' : '17px',
											'flex' : '0 0 48%',
											'display' : 'show'});
					
				} else{
					$('#message_send').css({'margin-left' : '15px',
											'flex' : '0 0 97.5%',
											'display' : 'show'});
					$('#message').css({'margin-left' : '15px',
											'flex' : '0 0 97.5%',
											'display' : 'show'});
				}

			},
			error : function() {
				alert('오류!!!!');	
			}
		});
	};
		
	// 쪽지 보내기 폼 불러오기
	function message_send(){
		$.ajax({
			url : '${professor}message_form',
			type : 'POST',
			dataType : 'html',
			success : function(data){
				var message_css = $("#message_send").css("margin-left");
				var message_send_css = $("#message_send").css("margin-left");
				
				$('#message_send').html(data);
				
				alert($("#message").css("display"));
				
				if($('#message').is(':visible')){
					$('#message_send').css({'margin-left' : '9px',
											'flex' : '0 0 48%',
											'display' : 'show'});
					$('#message').css({'margin-left' : '17px',
											'flex' : '0 0 48%',
											'display' : 'show'});
					
				} else{
					$('#message_send').css({'margin-left' : '15px',
											'flex' : '0 0 97.5%',
											'display' : 'show'});
					$('#message').css({'margin-left' : '15px',
											'flex' : '0 0 97.5%',
											'display' : 'show'});
				}
				
				
			},
			error : function() {
				alert('오류!!!!');	
			}
		});
	};
	
	</script>

</head>
<style>
.form-control {font-size:12px;}
</style>
<body>
	<%@ include file="../include/professor_header.jsp"%>
	<main id="main">
		<!-- ======= Contact Section ======= -->
		<section class="breadcrumbs">
			<div class="container">
		        <div class="d-flex justify-content-between align-items-center">
		          <h2>쪽지함</h2>
		
		          <ol>
		            <li><a href="${professor}main">홈</a></li>
		            <li>쪽지함</li>
		          </ol>
		        </div>
		     </div>
		</section>
		<!-- 쪽지 확인 페이지 -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500" style="padding-bottom:0px;">
			<div class="container">
				<div class="contact">
					
					<div class="row">
						<div class="col-lg-12 d-flex flex-column justify-content-center-center" id="messageList">
										
						</div>
					</div>
				</div>
				<div class="row">
					<div id="message" style="flex: 0 0 97.5%; margin-left: 15px;">
						
					</div>
					<div id="message_send"  style="flex: 0 0 97.5%; margin-left: 15px;">
						
					</div>
				</div>
			</div>

		</section>
		<!-- End Contact Section -->
		<!-- ======= Contact Section ======= -->
		<section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500"></section>
		<!-- End Contact Section -->

		<!-- ======= Map Section ======= -->
	</main>
	<!-- End #main -->

	<%@ include file="../include/footer.jsp"%>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
<%@ include file = "../bootstrap/guest_bootstrap_js.jsp" %>
</body>
</html>
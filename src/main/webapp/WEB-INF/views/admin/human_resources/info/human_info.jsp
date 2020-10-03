<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<link href="${resources}css/admin.css" rel="stylesheet">
<title>인사정보등록</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>

// 처음 불러오기(직원)
$(document).ready(function(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
 	$.ajax({
		url : '${admin}human_resources/info/human_info_${option}',
        type : "POST",
        dataType : "html",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        success : function(data){
        	$('#human_info_form_div').html(data);	
        }, error : function(){
        	alert('오류!');
        }
	});
});  

function changeForm() {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");	
	
	$.ajax({
        url : '${admin}human_resources/info/human_info_' + $('#human_info_form_select option:selected').val(),
        type : "POST",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
            $('#human_info_form_div').children().remove();
            $('#human_info_form_div').html(data);
        }, error : function(){
        	alert('오류!');
        }
	});
	
};

function setThumbnail(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		$('#image_container').children().remove();
		document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
}

function addressSearch() {
	new daum.Postcode({
		oncomplete : function(data) {
		var fullAddr = '';
		var extraAddr = ''; 
	
		if (data.userSelectedType === 'R') {
			fullAddr = data.roadAddress;
	
		} else { 
			fullAddr = data.jibunAddress;
		}
		if (data.userSelectedType === 'R') {
			if (data.bname !== '') {
				extraAddr += data.bname;
			}
		if (data.buildingName !== '') {
			extraAddr += (extraAddr !== '' ? ', '
			+ data.buildingName : data.buildingName);
			}
			fullAddr += (extraAddr !== '' ? ' (' + extraAddr
			+ ')' : '');
		}
		document.getElementById('address').value = fullAddr;
	
		document.getElementById('de_address').focus();
		}
	}).open();
}

</script>	
</head>

<body class="nav-md">
	<div class="container body">
	<input type="hidden" name="f_option" id="f_option" value="${option}">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="/WEB-INF/views/include/admin_top_nav.jsp"%>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row"  id="human_info_form_div">
					
				</div>
			</div>
			<!-- /page content -->


			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>

	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>

</body>
</html>
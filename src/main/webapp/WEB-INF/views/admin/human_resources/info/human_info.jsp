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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>

// 처음 불러오기(직원)
$(document).ready(function(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
	$.ajax({
		url : '${admin}human_resources/info/human_info_adm',
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
		// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
		// 각 주소의 노출 규칙에 따라 주소를 조합한다.
		// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		var fullAddr = ''; // 최종 주소 변수
		var extraAddr = ''; // 조합형 주소 변수
	
		// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			fullAddr = data.roadAddress;
	
		} else { // 사용자가 지번 주소를 선택했을 경우(J)
			fullAddr = data.jibunAddress;
		}
		// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		if (data.userSelectedType === 'R') {
			//법정동명이 있을 경우 추가한다.
			if (data.bname !== '') {
				extraAddr += data.bname;
			}
			// 건물명이 있을 경우 추가한다.
		if (data.buildingName !== '') {
			extraAddr += (extraAddr !== '' ? ', '
			+ data.buildingName : data.buildingName);
			}
			// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			fullAddr += (extraAddr !== '' ? ' (' + extraAddr
			+ ')' : '');
		}
		// 주소 정보를 해당 필드에 넣는다.
		document.getElementById('address').value = fullAddr;
	
		// 커서를 상세주소 필드로 이동한다.
		document.getElementById('de_address').focus();
		}
	}).open();
}

</script>	
</head>

<body class="nav-md">
	<div class="container body">
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

	<script src="${resources}vendors/jquery/dist/jquery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap/dist/js/bootstrap.bundle.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/fastclick/lib/fastclick.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/nprogress/nprogress.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/iCheck/icheck.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/moment/min/moment.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/bootstrap-daterangepicker/daterangepicker.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/jquery.hotkeys/jquery.hotkeys.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/google-code-prettify/src/prettify.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/jquery.tagsinput/src/jquery.tagsinput.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/switchery/dist/switchery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/select2/dist/js/select2.full.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/parsleyjs/dist/parsley.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/autosize/dist/autosize.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/starrr/dist/starrr.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}build/js/custom.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script
		src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
		data-cf-settings="ed641bf6e1354c9585fdbfb0-|49" defer=""></script>
	<script src="${resources}build/js/custom.min.js"></script>

</body>
</html>
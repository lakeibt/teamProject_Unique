<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<title>인사정보현황</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/admin.css" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
 	$.ajax({
		url : '${admin}human_resources/info/human_state_list?option=adm',
        type : "POST",
        dataType : "html",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        success : function(data){
        	$('#human_state_list_div').html(data);	
        }, error : function(){
        	swal('Error!','불러오기 실패!','error');
        }
	});
});
function changeList(){
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");	
	
    $.ajax({
    	url: '${admin}human_resources/info/human_state_list?option=' + $('#human_state_option_val option:selected').val(),
    	type : "POST",
        dataType : "html",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        success : function(data){
        	$('#human_state_list_div').children().remove();
        	$('#human_state_list_div').html(data);	
        	$('.detail_div').hide();
        }, error : function(){
        	swal('Error!','불러오기 실패!','error');
        }
    });
	
};

function detail_state_adm(obj){
	 var token = $("meta[name='_csrf']").attr("content");
     var header = $("meta[name='_csrf_header']").attr("content");
     
	 var tr = $(obj).parent().parent();
	 var id = $(obj).parent().parent().attr('id');
	
	 $.ajax({
	    	url: '${admin}human_resources/info/human_state_detail_adm?id=' + id,
	    	type : "POST",
	        dataType : "text",
	        beforeSend: function (xhr) {
	        	xhr.setRequestHeader(header, token);
	        },
	        success : function(data){
					tr.after(data);
					
					$(obj).text('Close');
					$(obj).attr('onclick','deleteTr_adm(this)')
					
	        	
	        }, error : function(){
	        	swal('Error!','불러오기 실패!','error');
	        }
	    });
};
	
	
function deleteTr_adm(obj) {
	
	var tr = $(obj).parent().parent().next();
	tr.remove();
	
	$(obj).text('View');
	$(obj).attr('onclick','detail_state_adm(this)');
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
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>인사정보현황</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row" style="display: block;">
                       

             

              <div class="clearfix"></div>

              <div class="col-md-12 col-sm-12"  id="human_state_list_div">
                
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">황동국팀 - 관리자 페이지</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>
	<!-- jQuery -->
	<script src="${resources}vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${resources}vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="${resources}vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${resources}vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="${resources}vendors/iCheck/icheck.min.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="${resources}build/js/custom.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">
<title>[유일대]</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<!--load all styles -->

<script type="text/javascript">

function course_plan_addForm(obj){
	var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
    var co_code = $(obj).attr("id");
    var div = $(obj).parent().parent();
    
	$.ajax({
		url : '${professor}course_plan_addForm?co_code=' + co_code,
        type : "POST",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
        	
        	div.after(data);
        	
			$(obj).attr('onclick', '').unbind('click');
        	
        }, error : function(){
        	alert('오류!');
        }
	});
}

function course_plan(obj){
	var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
    var co_code = $(obj).attr("id");
    var div = $(obj).parent().parent();
    
	$.ajax({
		url : '${professor}course_plan?co_code=' + co_code,
        type : "POST",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "html",
        success : function(data){
        	
        	div.after(data);
        	
			$(obj).attr('onclick', '').unbind('click');
        	
        }, error : function(){
        	alert('오류!');
        }
	});
}


function deleteDiv(obj) {
	var div = $(obj).parent().parent().parent();
	var button = $(obj).parent().parent().parent().parent().children().children().next().next().children().next().attr('onclick','course_plan(this)');
	
	div.remove();
}

function deleteDiv1(obj) {
	var div = $(obj).parent().parent().parent();
	var button = $(obj).parent().parent().parent().parent().children().children().next().next().children().next().attr('onclick','course_plan_addForm(this)');
	
	div.remove();
}

</script>

</head>

<body class="dark-edition">
	<div class="wrapper ">
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
				                <c:forEach var="dto" items="${c_dtos}">
				                	<div class="col-md-12">
					                	<div class="card">
						                	<div class="card-body" style="height: 230px;">
							                    <div class="row" style="margin:0px 10px;">
							                      <div class="col-md-12">
							                        <div class="form-group">
							                         	<h3>${dto.getCo_name()}</h3>                        	
							                        </div>
							                      </div>
							                    </div>
							                    <div class="row" style="margin:0px 10px;">
							                      <div class="col-md-12">
							                        <div class="form-group">
							                          <i class="material-icons">access_time</i><p style="display: inline-block;">${dto.getCo_day()} ${dto.getLe_code()} - ${dto.getLe_code() + dto.getGrade()}</p>
							                          <i class="material-icons">person</i><p style="display: inline-block;">${dto.getCo_num()}</p>
							                        </div>
							                      </div>	                      
							                    </div>
							                    <div class="col-md-12">
						                    		<button type="button" onClick="location.href='${professor}lecture?co_code=${dto.getCo_code()}'"  class="btn btn-primary pull-right">수업 관리</button>
						                    		<c:if test="${dto.getPlan_chk() == 0}">
						                    		<button type="button" onclick="course_plan_addForm(this)" id="${dto.getCo_code()}" class="btn btn-info pull-right">계획 등록</button>
						                    		</c:if>
						                    		<c:if test="${dto.getPlan_chk() == 1}">
						                    		<button type="button" onclick="course_plan(this)" id="${dto.getCo_code()}" class="btn btn-primary pull-right">계획 보기</button>
						                    		</c:if>
						                    	</div>
						                    </div>
						                    
					                    </div>
				                    </div>
				                   </c:forEach>
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
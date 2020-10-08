<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "com.kosmo.uni.vo.CalendarVO" %>

<!DOCTYPE html>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<link href='${pageContext.request.contextPath}/resources/packages/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/packages/daygrid/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/resources/packages/core/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/packages/interaction/main.js'></script>
<script src='${pageContext.request.contextPath}/resources/packages/daygrid/main.js'></script>
<title>[유일대]</title>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
<script  type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
	
    var Calendar = FullCalendar.Calendar;
 
    var calendarEl = document.getElementById('calendar');
 
    var calendar = new Calendar(calendarEl, {
    	 plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
    	 header: {
    	    left: 'prev,next today',
    	    center: 'title',
    	    right: 'dayGridMonth,timeGridWeek,timeGridDay listMonth'
    	 },
    	 locale: 'ko',
    	 navLinks: true,
    	 businessHours: true,
    	 editable: true,
    	 events: [
    		 <c:forEach items="${cal_dtos}" var="dto">
    		 <fmt:formatDate var="startDate" pattern="yyyy-MM-dd" value="${dto.getStartDate()}" />
    		 <fmt:formatDate var="endDate" pattern="yyyy-MM-dd" value="${dto.getStartDate()}" />
    		 {
    			title : '${dto.getTitle()}',
    			start : '${startDate}',
    			end : '${endDate}'
    		 },
    		 </c:forEach>
    		 {
 				title : 'default',
 				start : '2020-01-01',
 				end : '2020-01-01'
 			 }
    	  ],
    	  eventClick: function(info) {
    		  let eventFullDate = info.event.start;
    		  
    		  let eventYear = eventFullDate.getFullYear();
    		  let eventMonth = eventFullDate.getMonth() + 1; 
    		  let eventDate = eventFullDate.getDate();
    		  let eventDay = eventFullDate.getDay();
    		  
    		  alert(eventYear);
    	  }
  });

    calendar.render();
  });

function addTr(obj){
	
	var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    
    var tr = $(obj).parent().parent();
    var num = $(obj).parent().parent().attr('id');
    
	$.ajax({
		url : '${professor}info?num=' + num,
        type : "POST",
        beforeSend: function (xhr) {
        	xhr.setRequestHeader(header, token);
        },
        dataType : "text",
        success : function(data){
        	tr.after(data);
        	
			$(obj).text('Close');
			$(obj).attr('onclick','deleteTr(this)')
			
        }, error : function(){
        	alert('오류!');
        }
	});
}

function deleteTr(obj) {
	
	var tr = $(obj).parent().parent().next();
	tr.remove();
	
	$(obj).text('View');
	$(obj).attr('onclick','addTr(this)');
};


function addPlanForm(){
	window.open("${professor}addPlanForm", "네이버새창", "width=200, height=200, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
}

</script>
<style>
  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../include/professor_sidebar.jsp"%>


		<div class="main-panel" >

			<%@ include file="../include/professor_header.jsp"%>

			<div class="content" >
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" style="height:30px;"></div>
						<div class="col-md-6" >
		                	<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">공지사항</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped jambo_table bulk_action">
											<thead>
												<tr>
													<th style="width:10%">글번호</th> 
													<th style="width:60%">제목</th>
													<th style="width:20%">작성일자</th>
													<th style="width:10%">더보기</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="dto" items="${dtos}">
												<tr id="${dto.getNum()}">
													<td>${dto.getNum()}</td>
													<td>${dto.getTitle()}</td>
													<fmt:formatDate var="date" pattern="yyyy-MM-dd" value="${dto.getReg_date()}" />
													<td>${date}</td>
													<td><a href="javascript:void(0)" onclick="addTr(this)">View</a></td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div style="height:1px;"></div>
				            <div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title mt-0">강의목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped jambo_table bulk_action">
											<thead class="text-primary">
												<tr>
													<th style="width: 10%">요일</th>
													<th style="width: 20%">교시</th>
													<th style="width: 50%">강의명</th>
													<th style="width: 20%">인원</th>
												</tr>
											</thead>
											<tbody>
											<c:if test="${c_cnt != 0}">
											<c:forEach var="dto" items="${c_dtos}">
												<tr>
													<th style="width: 10%">${dto.getCo_day()}</th>
													<th style="width: 20%">${dto.getLe_code()} - ${dto.getLe_code() + dto.getGrade()}</th>
													<th style="width: 50%">${dto.getCo_name()}</th>
													<th style="width: 20%">${dto.getCo_num()}</th>
												</tr>
											</c:forEach>
											</c:if>
											
											<c:if test="${c_cnt == 0}">
												배정된 강의가 없습니다.
											</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
		                </div>
		                <div class="col-md-6" >
		                	<div class="card" style="padding: 10px;">
		                	<button onclick="addPlanForm()">일정 추가</button>
		                		<div id="calendar"></div>
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
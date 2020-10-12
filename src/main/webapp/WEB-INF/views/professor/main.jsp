<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
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
<script>
document.addEventListener('DOMContentLoaded', function() {
    var Calendar = FullCalendar.Calendar;
 
    var calendarEl = document.getElementById('calendar');
 
    var calendar = new Calendar(calendarEl, {
    	plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
    	  header: {
    	    left: 'prev,next today',
    	    center: 'title',
    	    right: 'dayGridMonth,timeGridWeek,timeGridDay'
    	  },
    	  editable: true,
    	  droppable: true, // this allows things to be dropped onto the calendar
    	  drop: function(info) {
    	    // is the "remove after drop" checkbox checked?
    	    if (checkbox.checked) {
    	      // if so, remove the element from the "Draggable Events" list
    	      info.draggedEl.parentNode.removeChild(info.draggedEl);
    	    }
    	  },
    	  locale: 'ko'
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
							<div style="height:1px;"></div>
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title mt-0">상담 신청 목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped jambo_table bulk_action">
											<c:if test="${consultCount != 0}">
											<thead class="text-primary">
												<tr>
													<th style="width: 10%">이름</th>
													<th style="width: 13%">학번</th>
													<th style="width: 34%">상담 제목</th>
													<th style="width: 13%">상담 유형</th>
													<th style="width: 15%">상담 경험</th>
													<th style="width: 15%">신청일</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="con" items="${consultList}">
												<tr>
													<th style="width: 10%">${con.getStuName()}</th>
													<th style="width: 13%">${con.getStuNumber()}</th>
													<th style="width: 34%">${con.getSubject()}</th>
													<th style="width: 13%">${con.getConsultType()}</th>
													<th style="width: 15%; text-align:center; padding-left:0px;">${con.getConsultExp()}</th>
													<th style="width: 15%">${con.getDate().split(" ")[0].replace("-","/")}</th>
												</tr>
											</c:forEach>
											</c:if>
											
											<c:if test="${consultCount == 0}">
												신청 상담 내역이 없습니다.
											</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
		                </div>
		                <div class="col-md-6" >
		                	<div class="card" style="padding: 10px;">
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
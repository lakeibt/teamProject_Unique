<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script>
/* in form function */
function addOptionReceiver() {
	var defaults = document.getElementsByClassName('default');
	for(var i = 0; i < defaults.length; i++) {
		defaults[i].style.display = "none";
	}
	var value = document.getElementById('authen').value;
	var param = "authen=" + value;
	sendRequest(authen_callback, "message_send_authenList", "get", param);
}
function authen_callback() {
   var result = document.getElementById("receiver");
   var data = httpRequest.responseText;
   result.innerHTML = data;
}
function confirm() {
	if(!document.directSendMessageForm.title.value) {
		alert("제목을 입력해주세요");
		return false;
	} else if($("#receiver option:selected").val()=="none") {
		alert('수신인을 선택하세요');
		return false;
	} else if(!document.directSendMessageForm.content.value) {
		alert("내용을 입력하세요");
		return false;
	}
	var title = document.directSendMessageForm.title.value;
	var content = document.directSendMessageForm.content.value;
	var authen = $("#authen option:selected").val();
	var receiver = $("#receiver option:selected").val();
	
	var param = "title="+title+"&content="+content+"&authen="+authen+"&receiver="+receiver;
	sendRequest(pro_send_callback, "proMessageSend", "get", param);
}
function pro_send_callback() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var data = httpRequest.responseText;
			
			if(data == 1) {
				alert("전송되었습니다");
				
				if(socket.readyState !== 1) return;
				if(socket) {
					var receiver = $("#receiver option:selected").val();
					var title = document.directSendMessageForm.title.value;
					var sessionId = "<%=session.getAttribute("memId")%>"
						socket.send(title + "!@#" + receiver); // socket을 통해 보냄
				}
				return false;
			} else {
				alert("전송에 실패하였습니다");
				return false;
			} 
		} 
	}
}
</script>
</head>
<body>
<div class="card" id="message_send_card_div" style="background-color: white;">
	<form name="directSendMessageForm" style="padding: 10px 10px; height:400px;">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	 	<button class="btn_message_close" onclick="deleteMessageSend(this);">
	 		<i class="material-icons">clear</i>
	 	</button>
		<table class="table" style="font-size:12px;">
			<thead>
				<tr>
					<th colspan="2" style="height: 80px;">
						<h3><input type="text" name="title" placeholder="제목" style="width:100%; height: 40px;" ></h3>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<select name="authen" id="authen" class="form-control" onchange="addOptionReceiver();">
							<option value="pro">교수</option>
							<option value="stu">학생</option>
						</select>
					</td>
					<td>
						<select name="receiver" id="receiver" class="form-control">
							<option value="none">수신인 선택</option>
							<c:forEach var="authenList" items="${authenList }">
							<option class="default" value="${authenList.ID }">${authenList.NAME }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="display:table-cell;">
						<textarea id="content" name="content" rows="7" style="width:100%;"></textarea>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4" align="center">
						<button class="btn btn-info" id="sendMsgBtn" onclick="return confirm();">전송</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
</body>
</html>
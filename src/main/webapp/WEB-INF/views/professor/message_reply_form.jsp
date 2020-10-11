<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<script>
/* in form function */
function confirm() {
	if(!document.ReplySendMessageForm.title.value) {
		alert("제목을 입력해주세요");
		return false;
	} else if(!document.ReplySendMessageForm.content.value) {
		alert("내용을 입력하세요");
		return false;
	}
	var title = document.ReplySendMessageForm.title.value;
	var content = document.ReplySendMessageForm.content.value;
	var receiver_id = document.ReplySendMessageForm.receiver_id.value;
	var receiver_name = document.ReplySendMessageForm.receiver_name.value;
	
	var param = "title="+title+"&content="+content+"&receiver_id="+receiver_id+"&receiver_name="+receiver_name;
	sendRequest(pro_reply_callback, "proMessageReply", "get", param);
}
function pro_reply_callback() {
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
	<form name="ReplySendMessageForm" style="padding: 10px 10px; height:400px;">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	 	<button class="btn_message_close" onclick="deleteMessageSend(this);"><span class="material-icons">clear</span></button>
		<table class="table" style="font-size:12px;">
			<thead>
				<tr>
					<th colspan="4" style="height: 80px;">
						<h3><input type="text" name="title" placeholder="제목" style="width:100%; height: 40px;"></h3>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>ID</th>
					<td><input type="text" name="receiver_id" placeholder="학번" value="${sender_id }" readOnly></td>
					<th>이름</th>
					<td><input type="text" name="receiver_name" placeholder="이름" style="width:100px;" value="${sender_name }" readOnly></td>
				</tr>
				<tr>
					<td colspan="4" style="display:table-cell;">
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
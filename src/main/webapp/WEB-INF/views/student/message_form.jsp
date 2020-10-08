<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<script>
function message_replyRoad() {
	var sender_id = $('#receive_id').val();
    var sender_name = $('#receive_name').val();
	message_reply(sender_id, sender_name);
}
</script>
</head>
<body>
<div class="card" id="message_card_div" style="background-color: white;">
	<form action="${student }messageReply" style="padding: 10px 10px; height:400px;">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	 	<button class="btn_message_close" onclick="deleteMessage(this);"><span class="material-icons">clear</span></button>
		<table class="table" style="font-size:12px;">
			<thead>
				<tr>
					<th colspan="4">
						<h3><input type="text" name="title" value="${dto.getTitle()}" style="width:100%; border:none; height: 40px;"></h3>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>ID</th>
					<td><input type="text" id="receive_id" name="receive_id" value="${dto.getSender_id()}" style="border:none;"></td>
					<th>이름</th>
					<td><input type="text" id="receive_name" name="receive_name" value="${dto.getSender()}"  style="width:100px; border:none;" ></td>
				</tr>
				<tr>
					<td colspan="4" style="display:table-cell;">
						<textarea id="content" name="content" rows="7" style="width:100%;" readOnly>${dto.getContent()}</textarea>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4" align="center">
						<button type="button" class="btn btn-info" onclick="message_replyRoad()">답장</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
</body>
</html>
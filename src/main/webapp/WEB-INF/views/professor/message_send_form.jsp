<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta id="_csrf" name="_csrf" content="${_csrf.token}" />
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
</head>
<body>


<div class="card" id="message_send_card_div" style="background-color: white;">
	<form  style="padding: 10px 10px; height:400px;">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	 	<button class="btn_message_close" onclick="deleteMessageSend(this);"><span class="material-icons">clear</span></button>
		<table class="table" style="font-size:12px;">
			<thead>
				<tr>
					<th colspan="4" style="height: 80px;">
						<h3><input type="text" name="title" placeholder="제목" style="width:100%; height: 40px;" ></h3>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th >ID</th>
					<td><input type="text" name="receive_id" placeholder="학번"></td>
					<th>이름</th>
					<td><input type="text" name="receive_name" placeholder="이름"  style="width:100px;" ></td>
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
						<button type="button" class="btn btn-info">보내기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
</body>
</html>
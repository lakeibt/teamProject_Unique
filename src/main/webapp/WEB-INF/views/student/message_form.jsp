<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="card">
	<div class="card-body">
		<form style="padding-top:20px;">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		 	<button class="btn_message_close" onclick="deleteMessageSend(this);"><i class="fas fa-times"></i></button>
			<table class="table" style="font-size:12px;">
					<tr>
						<td>수신자ID</td>
						<td><input type="text" class="form-control"></td>
						<td>수신자ID</td>
						<td><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"></td>
					</tr>
					<tr>
						<td colspan="4" style="display:table-cell;">
							<textarea style="width: 100%; height: 250px;"></textarea>
						</td>
					</tr>
			</table>
		</form>
	</div>
</div>

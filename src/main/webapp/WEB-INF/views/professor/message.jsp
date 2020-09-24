<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="card" style="background-color: white;">
		<form>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		 	<button class="btn_message_close" onclick="deleteMessage(this);"><i class="fas fa-times"></i></button>
		 	<h3 style="margin:20px 10px;">${dto.getTitle()}</h3>
			<table class="table" style="font-size:12px;">
				<tbody>
					<tr>
						<th>발신자</th>
						<td>${dto.getSender()}</td>
						<th>발신일</th>
						<td>${dto.getReg_date()}</td>
					</tr>
					<tr>
						<td colspan="4" style="display:table-cell;">
							<p class="form-control" style="height:150px;">
								${dto.getContent()}
							</p>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

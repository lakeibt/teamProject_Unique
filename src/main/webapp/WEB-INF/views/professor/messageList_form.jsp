<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<script type="text/javascript">
function message_send2(){
	message_send();
}

</script>

<div class="card" style="background-color: white;">
	<form >
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}"> <select class="message_select"
			onchange="changeList()">
			<c:if test="${option  == 'receive'}">
				<option value="receive" selected>받은 쪽지</option>
				<option value="send">보낸 쪽지</option>
			</c:if>
			<c:if test="${option  == 'send'}">
				<option value="receive">받은 쪽지</option>
				<option value="send" selected>보낸 쪽지</option>
			</c:if>
		</select>
		<c:if test="${option  == 'receive'}">
			<h3 style="margin: 20px 10px;">받은 쪽지함</h3>
		</c:if>
		<c:if test="${option  == 'send'}">
			<h3 style="margin: 20px 10px;">보낸 쪽지함</h3>
		</c:if>
		<table class="table" style="font-size: 8px;">
			<thead>
				<tr>
					<th style="width: 20%; font-size: 9px;">번호</th>
					<th style="width: 50%; font-size: 9px;">제목</th>
					<th style="width: 15%; font-size: 9px;">발신자</th>
					<th style="width: 15%; font-size: 9px;">발신일</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${cnt > 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr>
							<td>${number}<c:set var="number" value="${number-1}" /></td>
							<td class="messageTitle" id="${dto.getNum()}"><a href="#"
								onclick="message_load(${dto.getNum()})" style="color: black;">${dto.getTitle()}</a></td>
							<td>${dto.getSender()}</td>
							<td><fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm"
									value="${dto.getReg_date()}" /></td>
						</tr>
					</c:forEach>
				</c:if>

				<c:if test="${cnt == 0}">
					<tr>
						<td colspan="8" align="center">게시글이 없습니다.</td>
					</tr>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" align="center"><button type="button"
							class="btn btn-info" id="message_sendform_btn"
							onclick="message_send2()">쪽지 쓰기</button></td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
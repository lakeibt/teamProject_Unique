<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
</head>
<body>
<script type="text/javascript">
function message_send2(){
	message_send();
}
function changeListRoad() {
	changeList();
}
</script>
<div class="card" style="background-color: white;">
	<form>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<select class="message_select" onchange="changeListRoad();">
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
		<table class="table" style="font-size: 10px;">
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
							<td class="messageTitle" id="${dto.getNum()}">
								<a onclick="message_load('${dto.getNum()}');" style="color: black;">${dto.getTitle()}</a>
							</td>
							<td>${dto.getSender()}</td>
							<td>
								<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm" value="${dto.getReg_date()}" />
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${cnt == 0}">
					<tr>
						<td colspan="8" align="center">게시글이 없습니다.</td>
					</tr>
				</c:if>
			</tbody>
			<tbody>
				<tr align="center">
					<th>
						<!-- 게시글이 있으면 --> 
						<c:if test="${cnt > 0}">
							<c:if test="${startPage > pageBlock}">
								<a onclick="messageList(1);"> [◀◀] </a>
								<a onclick="messageList(${startPage - pageBlock});"> [◀] </a>
							</c:if>
							<!-- 블록내의 페이지 번호 -->
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:if test="${i == currentPage}">
									<span>	
										<a onclick="messageList(${i});"><input type="button" value="${i}"></a>
									</span>
								</c:if>
								<c:if test="${i != currentPage}">
									<a onclick="messageList(${i});"><input type="button" value="${i}"></a>
								</c:if>
							</c:forEach>
							<!-- 다음블록[▶] / 마지막[▶▶] -->
							<c:if test="${pageCount > endPage}">
								<a onclick="messageList(${startPage + pageBlock});"> [▶]</a>
								<a onclick="messageList(${pageCount});"> [▶▶]</a>
							</c:if>
						</c:if>
					</th>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" align="center">
						<button type="button" class="btn btn-info" id="message_sendform_btn" onclick="message_send2()">쪽지 쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>

</body>
</html>
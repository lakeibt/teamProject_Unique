<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
</head>
<body>
<c:if test="${cnt > 0}">
	<c:forEach var="dto" items="${dtos}">
		<li class="message-item" style="padding: 5px 5px;">
			<a class="dropdown-item" style="height: 100%; padding:10px 10px;">
				<span class="message-info">
				    <span class="time">${dto.getReg_date()}</span>
					<span>${dto.getSender()}</span>
				</span>
				<span class="message"> ${dto.getContent()} </span>
			</a>
		</li>
	</c:forEach>
	<li class="message-item-all">
		<div class="text-center">
			<a class="dropdown-item" id="load_messageList" href="javascript:void(0)" onclick="messageList()"> <strong>전체 보기</strong>
			</a>
		</div>
	</li>
</c:if>

<c:if test="${cnt == 0}">
	<li class="message-item" style="padding: 5px 5px;">
		<a class="dropdown-item" style="height: 100%;">
			새로운 쪽지가 없습니다.
		</a>
	</li>
	<li class="message-item-all">
		<div class="text-center">
			<a class="dropdown-item" id="load_messageList" href="javascript:void(0)" onclick="messageList()"> <strong>전체 보기</strong>
			</a>
		</div>
	</li>
</c:if>
</body>
</html>
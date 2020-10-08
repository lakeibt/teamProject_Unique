<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<table class="table">
	<thead>
		<tr>
			<th style="width: 10%;">이수구분</th>
			<th style="width: 25%;">교과목명</th>
			<th style="width: 15%;">담당교수</th>
			<th style="width: 10%;">학점</th>
			<th style="width: 10%;">성적</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${cnt > 0}">
			<c:set var="total" value="0" />
			<c:set var="count" value="0" />
			<c:forEach var="dto" items="${score}">
				<tr>
					<td style="width: 10%;">${dto.P_CODE}</td>
					<td style="width: 25%;">${dto.CO_NAME}</td>
					<td style="width: 15%;">${dto.P_NAME}</td>
					<td style="width: 10%;">${dto.GRADE}</td>
					<c:if test="${dto.SCORE == 'AA' || dto.SCORE == 'BB' || dto.SCORE == 'CC' || dto.SCORE == 'DD' }">
						<c:if test="${dto.SCORE == 'AA' }">
							<td style="width: 10%;">A+</td>
						</c:if>
						<c:if test="${dto.SCORE == 'BB' }">
							<td style="width: 10%;">B+</td>
						</c:if>
						<c:if test="${dto.SCORE == 'CC' }">
							<td style="width: 10%;">C+</td>
						</c:if>
						<c:if test="${dto.SCORE == 'DD' }">
							<td style="width: 10%;">D+</td>
						</c:if>
					</c:if>
					<c:if test="${dto.SCORE != 'AA' && dto.SCORE != 'BB' && dto.SCORE != 'CC' && dto.SCORE != 'DD' }">
						<td style="width: 10%;">${dto.SCORE }</td>
					</c:if>
					<c:set var="total" value="${total + dto.SCORE_POINT }" />
					<c:set var="count" value="${count + 1 }" />
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4" style="text-align:right">
					<b>평균 학점 :</b> 
				</td>
				<td>${total/count}/4.5</td>
			</tr>
		</c:if>
	</tbody>
</table>

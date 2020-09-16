<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
			<table class="table" style="font-size: 13px;">
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
						<c:forEach var="dto" items="${dtos}">
							<tr>
								<td style="width: 10%;">${dto.p_code}</td>
								<td style="width: 25%;">${dto.co_name}</td>
								<td style="width: 15%;">${dto.name_1}</td>
								<td style="width: 10%;">${dto.grade_1}</td>
								<td style="width: 10%;">${dto.grade_code}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
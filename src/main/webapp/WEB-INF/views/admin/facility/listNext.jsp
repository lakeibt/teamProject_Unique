<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<div class="icon-box">
	<div class="icon-box">
		<form class="php-email-form">
			<table class="table" style="font-size:12px;">
				<thead>
					<tr>
						<th colspan="8">기자제 목록</th>
					</tr>
				</thead>
				<thead>
					<tr>
						<th style="width:20%;">기자재코드</th>
						<th style="width:20%;">분류코드</th>
						<th style="width:40%;">제품명</th>
						<th style="width:20%;">수량</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list }">
					<tr>
						<td style="width:20%;">${list.E_CODE }</td>
						<td style="width:20%;">${list.E_KIND }</td>
						<td style="width:40%;">${list.E_NAME }</td>
						<td style="width:20%;">${list.E_CNT }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
</div>
<div class="icon-box">
	<div class="icon-box">
		<form class="php-email-form">
			<table class="table" style="font-size:12px;">
				<thead>
					<tr>
						<th colspan="8">기자제 출고 목록</th>
					</tr>
				</thead>
				<thead>
					<tr>
						<th style="width:10%;">기자재코드</th>
						<th style="width:10%;">분류코드</th>
						<th style="width:25%;">제품명</th>
						<th style="width:10%;">사용수량</th>
						<th style="width:15%;">상태</th>
						<th style="width:15%;">사용장소</th>
						<th style="width:15%;">사용인</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="using" items="${using }">
					<tr>
						<td style="width:10%;">${using.CODE }</td>
						<td style="width:10%;">${using.KIND }</td>
						<td style="width:25%;">${using.NAME }</td>
						<td style="width:10%;">${using.CNT }</td>
						<c:if test="${using.STATE == '대여중' }">
						<td style="width:15%;">
						${using.STATE }<button>반납</button>
						</td>
						</c:if>
						<c:if test="${using.STATE != '대여중' }">
						<td style="width:15%;">${using.STATE }</td>
						</c:if>
						<td style="width:15%;">${using.PLACE }</td>
						<td style="width:15%;">${using.ID }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</html>
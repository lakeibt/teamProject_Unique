<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../bootstrap/guest_bootstrap2.jsp"%>
</head>
<style>
.dark-edition .table>thead>tr>th, .dark-edition .table>tbody>tr>th, .dark-edition .table>tfoot>tr>th, .dark-edition .table>thead>tr>td, .dark-edition .table>tbody>tr>td, .dark-edition .table>tfoot>tr>td {
    color: black;
}
</style>
<table class="table" style="border:1px solid lightgrey; text-align:center;" rules="all">
	<tbody>
		<tr style="background-color:#1f283e;">
			<td style="width:15%; color:#fff;">교시/시간</td>
			<td style="width:17%; color:#fff;">월요일</td>
			<td style="width:17%; color:#fff;">화요일</td>
			<td style="width:17%; color:#fff;">수요일</td>
			<td style="width:17%; color:#fff;">목요일</td>
			<td style="width:17%; color:#fff;">금요일</td>
		</tr>
		<c:forEach var="i" begin="1" end="9">
		<tr>
			<td style="background-color:#1f283e; color:#fff;">${i}교시<br>${i+8}:00-${i+9}:00</td>
			<c:if test="${dtos[i-1].CO_NAME != null }">
			<td style="background-color:lightblue">
			${dtos[i-1].CO_NAME }<br>
			${dtos[i-1].P_NAME }<br>
			${dtos[i-1].DAY } ${dtos[i-1].TIME }교시
			</td>
			</c:if>
			<c:if test="${dtos[i-1].CO_NAME == null }"><td></td></c:if>
			<c:if test="${dtos[9+i-1].CO_NAME != null }">
			<td style="background-color:lightblue">
			${dtos[9+i-1].CO_NAME }<br>
			${dtos[9+i-1].P_NAME }<br>
			${dtos[9+i-1].DAY } ${dtos[9+i-1].TIME }교시
			</td>
			</c:if>
			<c:if test="${dtos[9+i-1].CO_NAME == null }"><td></td></c:if>
			<c:if test="${dtos[18+i-1].CO_NAME != null }">
			<td style="background-color:lightblue">
			${dtos[18+i-1].CO_NAME }<br>
			${dtos[18+i-1].P_NAME }<br>
			${dtos[18+i-1].DAY } ${dtos[18+i-1].TIME }교시
			</td>
			</c:if>
			<c:if test="${dtos[18+i-1].CO_NAME == null }"><td></td></c:if>
			<c:if test="${dtos[27+i-1].CO_NAME != null }">
			<td style="background-color:lightblue">
			${dtos[27+i-1].CO_NAME }<br>
			${dtos[27+i-1].P_NAME }<br>
			${dtos[27+i-1].DAY } ${dtos[27+i-1].TIME }교시
			</td>
			</c:if>
			<c:if test="${dtos[27+i-1].CO_NAME == null }"><td></td></c:if>
			<c:if test="${dtos[36+i-1].CO_NAME != null }">
			<td style="background-color:lightblue">
			${dtos[36+i-1].CO_NAME }<br>
			${dtos[36+i-1].P_NAME }<br>
			${dtos[36+i-1].DAY } ${dtos[36+i-1].TIME }교시
			</td>
			</c:if>
			<c:if test="${dtos[36+i-1].CO_NAME == null }"><td></td></c:if>
		</tr>
		</c:forEach>
	</tbody>
</table>
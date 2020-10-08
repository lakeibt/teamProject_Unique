<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<html>
<c:forEach var="authenList" items="${authenList }">
<option value="${authenList.ID }">${authenList.NAME }</option>
</c:forEach>
</html>
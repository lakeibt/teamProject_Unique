<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<c:forEach var="search" items="${search }">
	<li style="border:none;" class="form-control">
		<a href="javascript:select('${search }')">${search }</a>
	</li>
</c:forEach>

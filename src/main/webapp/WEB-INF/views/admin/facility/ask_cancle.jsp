<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<c:if test="${updateCnt == 1 }">
<script>
	alert("요청을 반려하였습니다");
	window.history.back();
</script>
</c:if>
<c:if test="${updateCnt != 1 }">
<script>
	alert("요청을 처리하는 과정에서 문제가 발생하였습니다. 이전 화면으로 돌아갑니다.");
	window.history.back();
</script>
</c:if>
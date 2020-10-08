<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<c:if test="${insertCnt == 1 }">
	<script>
	alert("등록되었습니다.");
	window.history.back();
	</script>
</c:if>
<c:if test="${insertCnt != 1 }">
	<script>alert("등록에 실패하였습니다."); window.history.back();</script>
</c:if>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 급여대장 수정 실패 -->
<c:if test="${updateCnt == 0 }">
	<script type="text/javascript">
		alert("실패했습니다.");
		window.history.back();
	</script>
</c:if>
<!--  급여대장 수정 성공 -->
<c:if test="${updateCnt != 0}">
	<script type="text/javascript">
		alert("급여대장 수정 성공 되었습니다.");
		window.location='salary_list';
	</script>
</c:if>
</body>
</html>
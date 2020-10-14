<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${insertCnt == 1}">
		<script type="text/javascript">
				window.location='salary_list';
		</script>
	</c:if>
		<c:if test="${insertCnt != 1}">
		<script type="text/javascript">
				alert("확정 실패했습니다.");
				window.history.back();
		</script>
	</c:if>
</body>
</html>
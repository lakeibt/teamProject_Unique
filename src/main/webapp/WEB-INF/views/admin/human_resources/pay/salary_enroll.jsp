<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:if test="${inputNum == 1}">
		<script type="text/javascript">
			alert("급여대장이 등록되었습니다.");
			window.location='salary_list';
		</script>
	</c:if>
		<c:if test="${inputNum != 1}">
		<script type="text/javascript">
				alert("실패했습니다.");
				window.history.back();
		</script>
	</c:if>
</body>
</html>
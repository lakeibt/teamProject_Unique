<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<c:if test="${insertCnt == 1}">
		<script type = "text/javascript">
			// 마지막 "info,success,warning,error" 중 택1
			alert('성공적으로 등록되었습니다.');
			window.location="${admin}human_resources/info/human_info?option=${option}";
		</script>
	</c:if>
	<c:if test="${insertCnt != 1}">
		<script type = "text/javascript">
			alert('등록에 실패하였습니다.');
			window.location="${admin}human_resources/info/human_info?option=${option}";
		</script>
	</c:if>
</body>
</html>
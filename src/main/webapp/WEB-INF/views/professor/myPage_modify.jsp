<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<c:if test="${insertCnt == 1}">
		<script type = "text/javascript">
			// 마지막 "info,success,warning,error" 중 택1
			swal('등록 성공!', '성공적으로 등록되었습니다.', 'success');
			window.location="${professor}myPage";
		</script>
	</c:if>
	<c:if test="${insertCnt != 1}">
		<script type = "text/javascript">
			swal('등록 실패!', '등록에 실패하였습니다.', 'error');
			window.location="${professor}myPage";
		</script>
</c:if>
</head>
<body>

</body>
</html>
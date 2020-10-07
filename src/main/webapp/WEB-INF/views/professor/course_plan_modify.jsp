<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<c:if test="${insertCnt == 1}">
		<script type = "text/javascript">
			// 마지막 "info,success,warning,error" 중 택1
			//swal('등록 성공!', '성공적으로 등록되었습니다.', 'success');
			window.location="${professor}course";
		</script>
	</c:if>
	<c:if test="${insertCnt != 1}">
		<script type = "text/javascript">
			//swal('등록 실패!', '등록에 실패하였습니다.', 'error');
			window.location="${professor}course";
		</script>
</c:if>
</body>
</html>
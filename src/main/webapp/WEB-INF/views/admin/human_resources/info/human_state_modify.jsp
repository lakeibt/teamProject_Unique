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
			swal('수정 성공!', '성공적으로 등록되었습니다.', 'success');
			window.location="${admin}human_resources/info/human_state?option=${option}";
		</script>
	</c:if>
	<c:if test="${insertCnt != 1}">
		<script type = "text/javascript">
			swal('수정 실패!', '등록에 실패하였습니다.', 'error');
			window.location="${admin}human_resources/info/human_state?option=${option}";
		</script>
	</c:if>
</body>
</html>
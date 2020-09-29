<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<body>
	<c:if test = "${cnt == 0}">
		<script type = "text/javascript">
			alert("강의등록오류");
			window.location="${admin}degree/course";
		</script>
	</c:if>
	
	<c:if test = "${cnt != 0}">
		<script type = "text/javascript">
			alert("강의등록이 완료되었습니다");
			window.location="${admin}degree/course";
		</script>
	</c:if>
</body>
</html>
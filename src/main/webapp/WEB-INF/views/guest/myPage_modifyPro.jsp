<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>    
<!DOCTYPE html>
<html>
<body>
<c:if test="${updateCnt == 0}">
	<script type="text/javascript">
		alert("오류");
		window.location='${guest}myPage_modify';
	</script>
</c:if>
<c:if test="${updateCnt != 0}">
	<script type="text/javascript">
		alert("회원정보가 수정되었습니다.");
		window.location='${guest}myPage_modify';
	</script>
</c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${updateCnt == 0}">
		<script type="text/javascript">
			
			errorAlert(updateError);
		</script>
	</c:if>
	<c:if test="${updateCnt != 0}">
		<script type="text/javascript">
			alert("회원정보가 수정되었습니다.!@");
			window.location="mypage";
		</script>
	</c:if>
</body>
</html>
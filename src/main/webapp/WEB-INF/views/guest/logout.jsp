<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[유일대]로그아웃</title>
</head>
<body>
	<script type = "text/javascript">
		alert("로그아웃되었습니다.");
		window.location = "${guest}login";
	</script>
</body>
</html>
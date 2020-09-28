<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type = "text/javascript">
	if(${sessionScope.auth == '[ROLE_STUDENT]'}) {
		window.location = "${student}myPage";
	} else if(${sessionScope.auth == '[ROLE_PROFESSOR]'}) {
		window.location = "${professor}main";
	} else if(${sessionScope.auth == '[ROLE_ADMIN]'}) {
		window.location = "${admin}main";
	} else {
		window.location = "${guest}login";
	}
</script>
</head>
<body>

</body>
</html>
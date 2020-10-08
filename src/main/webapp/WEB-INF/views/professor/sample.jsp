<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>




<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

function btn1c(){
	$("#test").val('1');
	alert($("#test").val());
};

function btn2c(){
	$("#test").val('2');
	alert($("#test").val());
};

</script>
</head>
<body>

<input type="hidden" id="test" value="3">
<input type="button" id="btn1" onclick="btn1c()" value="1로 변경">
<input type="button" id="btn2" onclick="btn2c()" value="2로 변경">

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

<script type="text/javascript">

function click_ok(){
	opener.parent.location.reload();
	window.close();	
}

</script>

</head>
<body>
<form id="scheduleData" action="${professor}addPlan?${_csrf.parameterName}=${_csrf.token}">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<input type="hidden" name="id" value="${sessionScope.memId}">
	<table>
		<tr>
			<td>제목<input type="text" name="title"></td>
		</tr>
		<tr>
			<td>시작<input type="date"  name="startDate"></td>
		</tr>
		<tr>
			<td>끝<input type="date"  name="endDate"></td>
		</tr>
		<tr>
			<td><button  type="submit" onsubmit="click_ok()">추가</button></td>
		</tr>
	</table>
</form>

</body>
</html>
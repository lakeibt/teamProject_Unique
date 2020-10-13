<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>문의등록</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<script>
function confirm() {
	var type = document.getElementById('type');
	var type_value = type.options[type.selectedIndex].value;
	var code = document.getElementById('code');
	var code_value = code.options[code.selectedIndex].value;
	var kinds = document.getElementById('kinds');
	var kinds_value = kinds.options[kinds.selectedIndex].value;
	if(type_value == 'none') {
		alert("요청 선택을 해주시기 바랍니다");
		return false;
	} else if(code_value == 'none') {
		alert("코드 선택을 해주시기 바랍니다");
		return false;
	} else if(kinds_value == 'none') {
		alert("코드 선택을 해주시기 바랍니다");
		return false;
	} else if(!documnet.askForm.e_name) {
		alert("제품을 입력해주시기 바랍니다");
		return false;
	} else if(!documnet.askForm.title) {
		alert("제목을 입력해주시기 바랍니다");
		return false;
	} else if(!documnet.askForm.content) {
		alert("내용을 입력해주시기 바랍니다");
		return false;
	}
	return true;
}
</script>
<div class="x_panel">
	<div class="x_content">
		<div class="table-responsive" style = "overflow:hidden;">
			<form style="opacity:1" name="askForm" action="${admin }degree/facility_ask_Pro" onsubmit="return confirm();">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
				<table class="table table-striped jambo_table">
					<thead>
						<tr class="headings">	
							<th class="column-title" colspan="8">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">요청 등록</font>
								</font>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>요청사항</th>
							<th>
							<select class="form-control" name="type" id="type" style="padding: 8px;" id="type">      
			                    <option value="none">요청선택</option>
			                    <option value="BR">대여</option>
			                    <option value="US">사용</option>
							</select>
							</th>
							<th>기자재코드</th>
							<th>
							<select class="form-control" name="code" style="padding: 8px;" id="code" onchange="return codeSelect();">      
			                    <option value="none">코드선택</option>
			                    <c:forEach var="code" items="${code }">
			                    <option value="${code.E_CODE }">${code.E_CODENAME }</option>
			                    </c:forEach>
							</select>
							</th>
							<th>분류코드</th>
							<th>
							<select class="form-control" name="kinds" style="padding: 8px;" id="kinds">
								<option value="none">분류선택</option>
							</select>
							</th>
							<th>제품</th>
							<th>
								<input type="text" name="e_name" class="form-control" onkeyup="searchName();">
								<ul id="dropDown" style="display:hidden; padding:0px;">
								</ul>
							</th>
						</tr>
						<tr>
							<th>부서</th>
							<th><input type="text" name="depart" class="form-control" value="${member.DEPART }" readOnly></th>
							<th>요청인</th>
							<th><input type="text" name="name" class="form-control" value="${member.NAME }" readOnly></th>
							<th>제목</th>
							<th colspan="3"><input type="text" name="title" class="form-control"></th>
						</tr>
						<tr>
							<th colspan="8">요청사항(상세)</th>
						</tr>
						<tr>
							<td colspan="8" style="display:table-cell; vertical-align: middle;"> <!-- 세로 중앙 정렬이 안 먹힘... -->
								<textarea cols="50" rows="50" style="width:100%; height:200px;" name="content" class="form-control"></textarea>
							</td>
						</tr>
						<tr>
							<th colspan="8" align="center"><input style="background-color:#2A3F54; color:white; padding:0px;"type="submit" value="요청등록" class="form-control"></th>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
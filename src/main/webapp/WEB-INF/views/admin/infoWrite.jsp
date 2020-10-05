<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>메인페이지</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<script>
function confirmInfo() {
	if(!document.infoForm.title.value) {
		alert("제목을 입력하여주시기 바랍니다");
		return false;
	} else if(!document.infoForm.content.value) {
		alert("내용을 입력하여주시기 바랍니다.");
		return false;
	}
	
	return true;
}
</script>
</head>
<div class="col-md-12 col-sm-12">
	<div class="x_panel">
		<div class="x_content">
			<div class="table-responsive">
				<form action="infoPro" name="infoForm" onsubmit="return confirmInfo();" style="opacity:1;">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<table class="table table-striped jambo_table">
						<thead>
							<tr class="haedings">
								<td colspan="2">
									<font style="vertical-align:inherit;">
										<font style="vertical-align:inherit;">공지등록</font>
									</font>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th style="width:10%">제목</th>
								<td style="width:90%"><input type="text" class="form-control" name="title"></td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea name="content" cols="100" rows="40" style="width:100%;"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="등록" class="btn">
									<input onclick="self.close();" type="button" value="취소" class="btn">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
</html>
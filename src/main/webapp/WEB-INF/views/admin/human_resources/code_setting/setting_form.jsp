<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<script>
function confirm() {
	if(!document.settingForm.rank) {
		alert("직급을 입력하세요");
		return false;
	} else if(!document.settingForm.month) {
		alert("기본급을 입력하세요");
		return false;
	} else if(!document.settingForm.date) {
		alert("지급일을 선택하세요");
		return false;
	}
	return true;
}
</script>
<div class="x_panel">
	<div class="x_content">
		<div class="table-responsive">
			<form action="setting_pro" name="settingForm" style="opacity:1" onsubmit="return confirm();">
				<table class="table table-striped jambo_table">
					<thead>
						<tr class="headings">
							<td colspan="6">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">직급 추가</font>
								</font>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>직급</td>
							<td><input name="rank" type="text" class="form-control"></td>
							<td>기본급(월)</td>
							<td><input name="month" type="number" class="form-control"></td>
							<td>지급일</td>
							<td><input name="date" type="month" class="form-control"></td>
						</tr>
						<tr>
							<th colspan="6" align="center"><input style="background-color:#2A3F54; color:white; padding:0px;"type="submit" value="추가" class="form-control"></th>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
</html>
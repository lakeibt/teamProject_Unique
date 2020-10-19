<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<div class="card" id="week1" style="padding: 10px; " >
<form action="${professor}lecture_add?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<input type="hidden" name="le_week" value="${le_week}">
	<input type="hidden" name="co_code" value="${co_code}">
	<table class="table table-striped jambo_table bulk_action" style="font-size: 15px; text-align: center;">
		<tr>
			<th colspan="2"><input type="text" class="form-control" name="le_title" placeholder="강의 제목을 입력해주세요."></th>
		</tr>
		<tr>
			<td style="display: table-cell; vertical-align: middle;">
				<textarea name="le_content" rows="10" style="width: 100%;"></textarea>
			</td>
		</tr>
		<tr>
			<th>
				<table class="table">
					<tr>
						<td style="width:100px;">첨부 동영상</td>
						<td><input type="file" multiple="multiple" name="le_file"></td>
					</tr>
				</table>
			</th>
		</tr>
		<tr>
			<td><button type="submit">올리기</button></td>
		</tr>
	</table>
</form>
</div>

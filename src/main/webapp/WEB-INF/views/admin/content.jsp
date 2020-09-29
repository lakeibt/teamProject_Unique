<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<div class="row">
	<div class="col-md-12 col-sm-12">
		<div class="dashboard_graph">
			<form>
				<table class="table">
					<tbody>
						<tr>
							<th style="width:10%">제목</th>
							<td style="width:90%"><input type="text" class="form-control" name="title" value="${dtos.TITLE }" readOnly></td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="content" cols="100" rows="40" style="width:100%;" readOnly>${dtos.CONTENT }</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="수정" class="btn">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
</body>
</html>
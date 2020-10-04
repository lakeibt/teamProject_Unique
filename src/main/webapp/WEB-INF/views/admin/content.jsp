<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<div class="col-md-12 col-sm-12">
	<div class="x_panel">
		<div class="x_content">
			<div class="table-responsive">
				<table class="table table-striped jambo_table">
					<thead>
						<tr class="haedings">
							<td colspan="2">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">내용</font>
								</font>
							</td>
						</tr>
					</thead>
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
			</div>
		</div>
	</div>
</div>
</html>
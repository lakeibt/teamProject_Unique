<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>상세 내용</title>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
</head>
<div class="x_panel">
	<div class="x_content">
		<div class="table-responsive">
			<form style="opacity:1" name="askPro" action="${admin }facility/ask_pro">
				<input name="num" type="hidden" value="${content.NUM }">
				<input name="id" type="hidden" value="${content.ID }">
				<input name="e_code" type="hidden" value="${content.E_CODE }">
				<table class="table table-striped jambo_table">
					<thead>
						<tr class="headings">	
							<th class="column-title" colspan="8">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">요청 내용</font>
								</font>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>요청사항</th>
							<th><input name="type" class="form-control" value="${content.TYPE }" readOnly></th>
							<th>기자재코드</th>
							<th><input name="code" class="form-control" value="${content.CODE }" readOnly></th>
							<th>분류코드</th>
							<th><input name="kind" class="form-control" value="${content.KIND }" readOnly></th>
							<th>제품</th>
							<th><input name="e_name" class="form-control" value="${content.E_NAME }" readOnly></th>
						</tr>
						<tr>
							<th>부서</th>
							<th><input name="depart" class="form-control" value="${content.DEPART }" readOnly></th>
							<th>요청인</th>
							<th><input name="name" class="form-control" value="${content.NAME }" readOnly></th>
							<th>제목</th>
							<th colspan="3"><input name="title" class="form-control" value="${content.TITLE }" readOnly></th>
						</tr>
						<tr>
							<th colspan="8">요청사항(상세)</th>
						</tr>
						<tr>
							<td colspan="8"> <!-- 세로 중앙 정렬이 안 먹힘... -->
								<textarea cols="50" rows="50" style="width:100%; height:200px;" name="content" class="form-control" readOnly>
								${content.CONTENT }
								</textarea>
							</td>
						</tr>
						<c:if test="${content.STATE == '요청대기' }">
						<tr>
							<td colspan="8" align="center">
								<input style="background-color:#2A3F54; color:white; padding:0px; width:10%; height:40px; display:inline-block;" type="submit" class="form-control" value="처리">
								<input style="background-color:#2A3F54; color:white; padding:0px; width:10%; height:40px; display:inline-block;" type="button" class="form-control" value="반려" onclick="window.location='${admin}facility/ask_cancle?num='+${content.NUM}">
							</td>
						</tr>
						</c:if>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
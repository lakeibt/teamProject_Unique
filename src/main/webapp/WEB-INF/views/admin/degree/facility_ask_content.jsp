<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
</head>
<div class="icon-box">
	<div class="icon-box">
		<form class="php-email-form" name="" action="" style="background-color:white;">
			<table class="table" style="font-size:12px;">
				<thead>
					<tr>
						<th colspan="8">상세 내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th style="width:5%;">요청사항</th>
						<th style="width:10%;"><input class="form-control" value="${content.TYPE }" readOnly></th>
						<th style="width:5%;">기자재코드</th>
						<th style="width:10%;"><input class="form-control" value="${content.CODE }" readOnly></th>
						<th style="width:5%;">분류코드</th>
						<th style="width:10%;"><input class="form-control" value="${content.KIND }" readOnly></th>
						<th style="width:5%;">제품</th>
						<th style="width:60%;"><input name="e_name" class="form-control" value="${content.E_NAME }" readOnly></th>
					</tr>
					<tr>
						<th style="width:5%;">부서</th>
						<th style="width:10%;"><input name="depart" class="form-control" value="${content.DEPART }" readOnly></th>
						<th style="width:5%;">요청인</th>
						<th style="width:10%;"><input name="name" class="form-control" value="${content.NAME }" readOnly></th>
						<th style="width:5%;">제목</th>
						<th style="width:60%;" colspan="3"><input name="title" class="form-control" value="${content.TITLE }" readOnly></th>
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
				</tbody>
			</table>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</html>
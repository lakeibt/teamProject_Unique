<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
<link href="${resources}css/style.css" rel="stylesheet">
<script src="/uni/resources/js/jquery-3.5.1.min.js"></script>
<script src="/uni/resources/js/request.js"></script>
<div class="x_panel">
	<div class="x_title">
		<h2>
			<font style="vertical-align:inherit;">
				<font style="vertical-align:inherit;">기자제 목록</font>
			</font>
		</h2>
		<div class="clearfix"></div>
	</div>
	<div class="x_content">
		<div class="table-responsive">
			<table class="table table-striped jambo_table">
				<thead>
					<tr class="headings">
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">기자재코드</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">분류코드</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">제품명</font>
							</font>
						</th>
						<th class="column-title no-link last">
							<span class="nobr">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">수량</font>
								</font>
							</span>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list }">
						<tr>
							<td style="width:20%;">${list.E_CODE }</td>
							<td style="width:20%;">${list.E_KIND }</td>
							<td style="width:40%;">${list.E_NAME }</td>
							<td style="width:20%;">${list.E_CNT }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="x_panel">
	<div class="x_title">
		<h2>
			<font style="vertical-align:inherit;">
				<font style="vertical-align:inherit;">기자제 출고 목록</font>
			</font>
		</h2>
		<div class="clearfix"></div>
	</div>
	<div class="x_content">
		<div class="table-responsive">
			<table class="table table-striped jambo_table">
				<thead>
					<tr class="headings">
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">기자재코드</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">분류코드</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">제품명</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">사용수량</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">상태</font>
							</font>
						</th>
						<th class="column-title">
							<font style="vertical-align:inherit;">
								<font style="vertical-align:inherit;">사용장소</font>
							</font>
						</th>
						<th class="column-title no-link last">
							<span class="nobr">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">사용인</font>
								</font>
							</span>
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="using" items="${using }">
						<tr>
							<td style="width:10%;">${using.CODE }</td>
							<td style="width:10%;">${using.KIND }</td>
							<td style="width:25%;">${using.NAME }</td>
							<td style="width:10%;">${using.CNT }</td>
							<c:if test="${using.STATE == '대여중' }">
							<td style="width:15%;">
							${using.STATE }<button>반납</button>
							</td>
							</c:if>
							<c:if test="${using.STATE != '대여중' }">
							<td style="width:15%;">${using.STATE }</td>
							</c:if>
							<td style="width:15%;">${using.PLACE }</td>
							<td style="width:15%;">${using.ID }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../include/setting.jsp"%>
	<style>
		input[type="number"]::-webkit-outer-spin-button,
		input[type="number"]::-webkit-inner-spin-button {
		    -webkit-appearance: none;
		    margin: 0;
		}
	</style>
	<script>
	$(document).ready(function() {
		$('#tr_cnt').val($('#score_tbody tr').length);
	});
	</script>
	<div class="card" style="padding: 20px; padding-bottom: 0px">
		<div>
			<button class="coures_plan_title_button3" onclick="deleteDiv(this)">
				<i class="fas fa-times"></i>
			</button>
		</div>
		<div class="card-body">
			<form action="${professor}score_registerPro?${_csrf.parameterName}=${_csrf.token}" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<input type="hidden" name="co_code" value="${co_code}">
			<input type="hidden" name="tr_cnt" id="tr_cnt" value="0">
			<input type="hidden" id="at"  class="form-control" value="${vo.getAttend()}">
			<input type="hidden" id="mid"  class="form-control" value="${vo.getMidterm()}">
			<input type="hidden" id="fi"  class="form-control" value="${vo.getFinals()}">
			<input type="hidden" id="asr"  class="form-control" value="${vo.getAssign_report()}">
			<input type="hidden" id="ast"  class="form-control" value="${vo.getAssign_team()}">
				<table class="table table-striped jambo_table bulk_action">
					<thead>
						<tr>
							<fmt:parseNumber var="at" value="${vo.getAttend() * 10}" integerOnly="true"/>
							<fmt:parseNumber var="mid" value="${vo.getMidterm() * 10}" integerOnly="true"/>
							<fmt:parseNumber var="fi" value="${vo.getFinals() * 10}" integerOnly="true"/>
							<fmt:parseNumber var="asr" value="${vo.getAssign_report() * 10}" integerOnly="true"/>
							<fmt:parseNumber var="ast" value="${vo.getAssign_team() * 10}" integerOnly="true"/>
							<th style="width:">이름</th> 
							<th style="width:">태도(${at}%)</th>
							<th style="width:">중간(${mid}%)</th>
							<th style="width:">기말(${fi}%)</th>
							<th style="width:">개인과제(${asr}%)</th>
							<th style="width:">팀과제(${ast}%)</th>
							<th style="width:">총점</th>
							<th style="width:">학점</th>
						</tr>
					</thead>
					<tbody id="score_tbody">
					
					<c:forEach var="dto" items="${dtos}" varStatus="status">
						<tr>
							<td>
								<input type="text" name="name${status.count}"  class="form-control" value="${dto.getName()}" readonly>
								<input type="hidden" name="id${status.count}"  class="form-control" value="${dto.getId()}" readonly>
								
							</td>
							<td><input type="number" name="attend${status.count}" class="form-control score" min="0" max="100" step="0.1" onchange="grade(this)" value="0"></td>
							<td><input type="number" name="midterm${status.count}" class="form-control score" min="0" max="100" step="0.1" onchange="grade(this)" value="0"></td>
							<td><input type="number" name="finals${status.count}" class="form-control score" min="0" max="100" step="0.1" onchange="grade(this)" value="0"></td>
							<td><input type="number" name="assign_report${status.count}" class="form-control score" min="0" max="100" step="0.1" onchange="grade(this)" value="0"></td>
							<td><input type="number" name="assign_team${status.count}" class="form-control score"  min="0" max="100" step="0.1" onchange="grade(this)" value="0"></td>
							<td><input type="number" name="grade${status.count}" class="form-control score" readonly value="0"></td>
							<td><input type="text" name="grades_code${status.count}" class="form-control score" readonly value="F"></td>
						</tr>
					</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="8" align="center">
								<button type="submit" class="btn btn-primary" style="background-color:007bff;">등록</button>
							</td>
						</tr>
					</tfoot>
				</table>
			</form>
		</div>
	</div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<style>
.btn {
	width: 100px;
	background-color: #68A4C4;
	border: none;
	color: #fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	cursor: pointer;
}
</style>
<form action ="coursewm2" method = "post" name = "w_m_form">
<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
<div class="dashboard_graph">
	<div class="row x_title"><h3>강의수정</h3></div>
	<table class="table">
		<tbody>
			<tr>
				<td>과목코드</td>
				<td><input class="form-control" type="text" name="co_code" value="" readonly></td>
				<td>과목명</td>
				<td><input class="form-control" type="text" name="co_name" value=""></td>
				<td>학과코드</td>
				<td><input class="form-control" type="text" name="m_code" value=""></td>
				<td>이수구분</td>
				<td>
					<select class="form-control" name="p_code">
						<option>전필</option>
						<option>전선</option>
						<option>교필</option>
						<option>교선</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>년도</td>
				<td><input class="form-control" type="text" name="co_year" value=""></td>
				<td>학기</td>
				<td>
					<select class="form-control" name="co_semester">
						<option>1</option>
						<option>2</option>
					</select>
				</td>
				<td>요일</td>
				<td>
					<select class="form-control" name="co_day">
						<option>월</option>
						<option>화</option>
						<option>수</option>
						<option>목</option>
						<option>금</option>
					</select>
				</td>
				<td>시작시간</td>
				<td>
					<select class="form-control" name="le_code">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input class="form-control" type="text" name="grade_1" value=""></td>
				<td>제한인원</td>
				<td><input class="form-control" type="text" name="limit_num" value=""></td>
				<td>담당교수</td>
				<td><input class="form-control" type="text" name="name_1" value=""></td>
				<td colspan="3">
					<input type="submit" class="btn" style="float:right; padding: 6px 6px;" value="등록 / 수정">
				</td>
			</tr>
	</table>
</div>
</form>
</body>
</html>
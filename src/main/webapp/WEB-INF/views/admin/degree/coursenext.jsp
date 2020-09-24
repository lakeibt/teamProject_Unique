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
<body>
<form action ="${admin}degree/coursewm" method = "post" name = "w_m_form">
<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
<div class="dashboard_graph">
	<div class="row x_title"><h3>강의등록</h3></div>
	<table class="table">
		<tbody>
			<tr>
				<td width="7%">과목코드</td>
				<td width="15%"><input class="form-control" type="text" name="co_code" value="" readonly></td>
				<td width="7%">과목명</td>
				<td width="15%"><input class="form-control" type="text" name="co_name" value="" maxlength="20"></td>
				<td width="7%">학과코드</td>
				<td width="15%">
					<select name="m_code" class="form-control" id="select1" onChange="chnQnaType(this.value)" >
						<option selected disabled value="0">전공을 선택하세요</option>
					    <option value="CO">컴퓨터공학과[CO]</option>
						<option value="BE">뷰티미용과[BE]</option>
						<option value="CN">건축학과[CN]</option>
						<option value="EN">영어영문학과[EN]</option>
						<option value="FD">패션디자인학과[FD]</option>
						<option value="KO">국어국문학과[KO]</option>
						<option value="JA">일어일문학과[JA]</option>
						<option value="FR">불어불문학과[FR]</option>
					</select>  
				</td>
				<td width="7%">학년</td>
				<td width="15%">
					<select class="form-control" name="school_year">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>이수구분</td>
				<td>
					<select class="form-control" name="p_code">
						<option value="전필">전필</option>
						<option value="전선">전선</option>
						<option value="교필">교필</option>
						<option value="교선">교선</option>
					</select>
				</td>
				<td>년도</td>
				<td><input class="form-control" type="text" name="co_year" value="" maxlength="4"></td>
				<td>학기</td>
				<td>
					<select class="form-control" name="co_semester">
						<option value="1">1</option>
						<option value="2">2</option>
					</select>
				</td>
				<td>요일</td>
				<td>
					<select class="form-control" name="co_day">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
					</select>
				</td>
				
			</tr>
			<tr>
				<td>시작시간</td>
				<td>
					<select class="form-control" name="le_code">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>
				</td>
				<td>학점</td>
				<td><input class="form-control" type="text" name="grade" value="" maxlength="1"></td>
				<td>제한인원</td>
				<td><input class="form-control" type="text" name="limit_num" value="" maxlength="3"></td>
				<td>담당교수</td>
				<td>
					<select id="schQnaType" class="form-control" name="p_name">
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="8">
					<input type="submit" class="btn" style="float:right; padding: 6px 6px;" value="강의 등록">
				</td>
			</tr>
		</tbody>
	</table>
</div>
</form>
</body>
</html>
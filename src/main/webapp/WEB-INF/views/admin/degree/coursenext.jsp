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
<div class="x_panel">
	<div class="x_content">
		<div class="table-responsive" style = "overflow:hidden;">
			<form style="opacity:1; margin:0px;" action="${admin}degree/coursewm" method="post" name="w_m_form">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
				<table class="table table-striped jambo_table" style = "margin:0px;">
					<thead>
						<tr class="headings">	
							<th class="column-title" colspan="8">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">강의등록</font>
								</font>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>과목코드</td>
							<td><input class="form-control" type="text" name="co_code" value="" readonly></td>
							<td>과목명</td>
							<td><input class="form-control" type="text" name="co_name" value="" maxlength="20"></td>
							<td>학과코드</td>
							<td>
								<select name="m_code" class="form-control" id="select1" onChange="chnQnaType(this.value)" >
									<option selected disabled value="0">전공을 선택하세요</option>
									<c:forEach var = "major" items = "${professorListByMajor}" >
										<option value="${major.m_code}">${major.m_name}[${major.m_code}]</option>
									</c:forEach>
								</select>  
							</td>
							<td>학년</td>
							<td>
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
									<option value="1">1교시[09:00]</option>
									<option value="2">2교시[10:00]</option>
									<option value="3">3교시[11:00]</option>
									<option value="4">4교시[12:00]</option>
									<option value="5">5교시[13:00]</option>
									<option value="6">6교시[14:00]</option>
									<option value="7">7교시[15:00]</option>
									<option value="8">8교시[16:00]</option>
									<option value="9">9교시[17:00]</option>
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
			</form>
		</div>
	</div>
</div>
</body>
</html>
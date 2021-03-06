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
			<form style="opacity:1" action="${admin}degree/coursewm2" method="post" name="w_m_form">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
				<table class="table table-striped jambo_table">
					<thead>
						<tr class="headings">	
							<th class="column-title" colspan="8">
								<font style="vertical-align:inherit;">
									<font style="vertical-align:inherit;">강의수정</font>
								</font>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="7%">과목코드</td>
							<td width="15%"><input class="form-control" type="text" name="co_code" value="${vo.co_code}" readonly></td>
							<td width="7%">과목명</td>
							<td width="15%"><input class="form-control" type="text" name="co_name" value="${vo.co_name}" maxlength="20"></td>
							<td width="7%">학과코드</td>
							<td width="15%">
								<select name="m_code" class="form-control" id="select1" onChange="chnQnaType(this.value)" >
									<option selected disabled value="0">전공을 선택하세요</option>
									<c:forEach var = "major" items = "${professorListByMajor}" >
								    	<option value="${major.m_code}" <c:if test="${vo.m_code eq major.m_code}">selected</c:if>>${major.m_name}[${major.m_code}]</option>
									</c:forEach>	
								</select>  
							</td>
							<td width="7%">학년</td>
							<td width="15%">
								<select class="form-control" name="school_year">
									<option value="1"<c:if test="${vo.school_year eq 1}">selected</c:if>>1</option>
									<option value="2"<c:if test="${vo.school_year eq 2}">selected</c:if>>2</option>
									<option value="3"<c:if test="${vo.school_year eq 3}">selected</c:if>>3</option>
									<option value="4"<c:if test="${vo.school_year eq 4}">selected</c:if>>4</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>이수구분</td>
							<td>
								<select class="form-control" name="p_code">
									<option value="전필"<c:if test="${vo.p_code eq '전필'}">selected</c:if>>전필</option>
									<option value="전선"<c:if test="${vo.p_code eq '전선'}">selected</c:if>>전선</option>
									<option value="교필"<c:if test="${vo.p_code eq '교필'}">selected</c:if>>교필</option>
									<option value="교선"<c:if test="${vo.p_code eq '교선'}">selected</c:if>>교선</option>
								</select>
							</td>
							<td>년도</td>
							<td><input class="form-control" type="text" name="co_year" value="${vo.co_year}" maxlength="4"></td>
							<td>학기</td>
							<td>
								<select class="form-control" name="co_semester">
									<option value="1"<c:if test="${vo.co_semester eq 1}">selected</c:if>>1</option>
									<option value="2"<c:if test="${vo.co_semester eq 2}">selected</c:if>>2</option>
								</select>
							</td>
							<td>요일</td>
							<td>
								<select class="form-control" name="co_day">
									<option value="월"<c:if test="${vo.co_day eq '월'}">selected</c:if>>월</option>
									<option value="화"<c:if test="${vo.co_day eq '화'}">selected</c:if>>화</option>
									<option value="수"<c:if test="${vo.co_day eq '수'}">selected</c:if>>수</option>
									<option value="목"<c:if test="${vo.co_day eq '목'}">selected</c:if>>목</option>
									<option value="금"<c:if test="${vo.co_day eq '금'}">selected</c:if>>금</option>
								</select>
							</td>
							
						</tr>
						<tr>
							<td>시작시간</td>
							<td>
								<select class="form-control" name="le_code">
									<option value="1"<c:if test="${vo.le_code eq 1}">selected</c:if>>1</option>
									<option value="2"<c:if test="${vo.le_code eq 2}">selected</c:if>>2</option>
									<option value="3"<c:if test="${vo.le_code eq 3}">selected</c:if>>3</option>
									<option value="4"<c:if test="${vo.le_code eq 4}">selected</c:if>>4</option>
									<option value="5"<c:if test="${vo.le_code eq 5}">selected</c:if>>5</option>
									<option value="6"<c:if test="${vo.le_code eq 6}">selected</c:if>>6</option>
									<option value="7"<c:if test="${vo.le_code eq 7}">selected</c:if>>7</option>
									<option value="8"<c:if test="${vo.le_code eq 8}">selected</c:if>>8</option>
									<option value="9"<c:if test="${vo.le_code eq 9}">selected</c:if>>9</option>
								</select>
							</td>
							<td>학점</td>
							<td><input class="form-control" type="text" name="grade" value="${vo.grade}" maxlength="1"></td>
							<td>제한인원</td>
							<td><input class="form-control" type="text" name="limit_num" value="${vo.limit_num}" maxlength="3"></td>
							<td>담당교수</td>
							<td>
								<select id="schQnaType" class="form-control" name="p_name">
									<option value="${vo.p_name}" selected>${vo.p_name}</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="8">
								<input type="submit" class="btn" style="float:right; padding: 6px 6px;" value="강의 수정">
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
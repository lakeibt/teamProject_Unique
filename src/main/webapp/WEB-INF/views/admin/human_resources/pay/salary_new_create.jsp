<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/admin.js"></script>
</head>
<body onload="confirmIdFocus();" align="center">
	<form action="salary_enroll" method="post" name="salary_"
		onsubmit="confirmIdCheck();">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<div class="row">
		<div class="col-md-12">
			<div class="x_panel">
				<div class="x_title"><h4>급여 정보 입력</h4></div>
				<div class="x_content">
					<table class="table" align="center">
						<thead style="color:#73879C;">
						
							
							<tr>
								<th>급여구분</th>
								<td><select>
									  <option value="급여">급여</option>
									  <option value="상여">상여</option>
									</select></td>
							</tr>
							<tr>
								<th>지급구분</th>
								<td><select>
									  <option value="정규">정규</option>
									  <option value="비정규">비정규</option>
									</select></td>
							</tr>
							<tr>
								<th>대상기간</th>
								<td><select>
									  <option value="2015">2015</option>
									  <option value="2016">2016</option>
									  <option value="2017">2017</option>
									  <option value="2018">2018</option>
									  <option value="2019">2019</option>
									  <option value="2020" selected>2020</option>
									  <option value="2021">2021</option>
									  <option value="2022">2022</option>
									  <option value="2023">2023</option>
									</select>
									<select>
									  <option value="1">1월</option>
									  <option value="2">2월</option>
									  <option value="3">3월</option>
									  <option value="4">4월</option>
									  <option value="5">5월</option>
									  <option value="6">6월</option>
									  <option value="7">7월</option>
									  <option value="8">8월</option>
									  <option value="9">9월</option>
									  <option value="10">10월</option>
									  <option value="11">11월</option>
									  <option value="12">12월</option>
									</select>
									<input class="button" type="text" value="01" size="2">
									~
									<select>
									  <option value="2015">2015</option>
									  <option value="2016">2016</option>
									  <option value="2017">2017</option>
									  <option value="2018">2018</option>
									  <option value="2019">2019</option>
									  <option value="2020" selected>2020</option>
									  <option value="2021">2021</option>
									  <option value="2022">2022</option>
									  <option value="2023">2023</option>
									</select>
									<select>
									  <option value="1">1월</option>
									  <option value="2">2월</option>
									  <option value="3">3월</option>
									  <option value="4">4월</option>
									  <option value="5">5월</option>
									  <option value="6">6월</option>
									  <option value="7">7월</option>
									  <option value="8">8월</option>
									  <option value="9">9월</option>
									  <option value="10">10월</option>
									  <option value="11">11월</option>
									  <option value="12">12월</option>
									</select>
									<input class="button" type="text" value="30" size="2">
									</td>
							</tr>
							<tr>
								<th>지급일</th>
								<td><select>
									  <option value="2015">2015</option>
									  <option value="2016">2016</option>
									  <option value="2017">2017</option>
									  <option value="2018">2018</option>
									  <option value="2019">2019</option>
									  <option value="2020" selected>2020</option>
									  <option value="2021">2021</option>
									  <option value="2022">2022</option>
									  <option value="2023">2023</option>
									</select>
									<select>
									  <option value="1">1월</option>
									  <option value="2">2월</option>
									  <option value="3">3월</option>
									  <option value="4">4월</option>
									  <option value="5">5월</option>
									  <option value="6">6월</option>
									  <option value="7">7월</option>
									  <option value="8">8월</option>
									  <option value="9">9월</option>
									  <option value="10">10월</option>
									  <option value="11">11월</option>
									  <option value="12">12월</option>
									  
									</select>
									<input class="button" type="text" value="15" size="2">
									</td>
							</tr>
							<tr>
								<th>지급연월</th>
								<td><select>
									  <option value="2015">2015</option>
									  <option value="2016">2016</option>
									  <option value="2017">2017</option>
									  <option value="2018">2018</option>
									  <option value="2019">2019</option>
									  <option value="2020" selected>2020</option>
									  <option value="2021">2021</option>
									  <option value="2022">2022</option>
									  <option value="2023">2023</option>
									</select>
									<select>
									  <option value="1">1월</option>
									  <option value="2">2월</option>
									  <option value="3">3월</option>
									  <option value="4">4월</option>
									  <option value="5">5월</option>
									  <option value="6">6월</option>
									  <option value="7">7월</option>
									  <option value="8">8월</option>
									  <option value="9">9월</option>
									  <option value="10">10월</option>
									  <option value="11">11월</option>
									  <option value="12">12월</option>
									  
									</select></td>
							</tr>
							<tr>
								<th>급여대장명칭</th>
								<td><input class="form-control input-sm" type="text"></td>
							</tr>
							<tr>
		
								<th colspan="2"><input class="button" type="submit"
									value="등록"> <input class="button" type="reset" value="취소">
									
									</th>
							</tr>
						</thead>
					</table>
					
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>
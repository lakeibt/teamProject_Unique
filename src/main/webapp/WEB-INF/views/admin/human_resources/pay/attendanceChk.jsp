<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead style="color: #73879C;">
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>날짜</th>
				<th>출근시간</th>
				<th>퇴근시간</th>
				<th>total</th>
				<th>야간근무</th>
				<th>특근</th>
				<th>적요</th>
			</tr>
		</thead>

		<tbody style="color: grey;">
			<tr>
				<td>100001</td>
				<td>홍길동</td>
				<td>2020/08/01</td>
				<td>08:24</td>
				<td>19:47</td>
				<td>11.4</td>
				<td>1</td>
				<td></td>
				<td></td>

			</tr>
			<tr>
				<td>100002</td>
				<td>엄복동</td>
				<td>2020/08/01</td>
				<td>08:54</td>
				<td>18:31</td>
				<td>9.6</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	<a id="attendanceModify" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">수정</a>
	<a id="attendanceDelete" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">삭제</a><br>
</body>
</html>
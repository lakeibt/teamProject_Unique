<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="x_panel">
		<div class="x_title">
			<div class="col-sm-1">
				<select class="form-control" id="human_state_option_val"
					onchange="changeList()">
					<c:if test="${option == 'adm'}">
						<option value="stu">학생</option>
						<option value="pro">교수</option>
						<option value="adm" selected>직원</option>
					</c:if>
					<c:if test="${option == 'pro'}">
						<option value="stu">학생</option>
						<option value="pro" selected>교수</option>
						<option value="adm">직원</option>
					</c:if>
					<c:if test="${option == 'stu'}">
						<option value="stu" selected>학생</option>
						<option value="pro">교수</option>
						<option value="adm">직원</option>
					</c:if>
				</select>

			</div>

			<div class="clearfix" style="height: 40px;"></div>
		</div>

		<div class="x_content">
			<div class="table-responsive">
				<table class="table table-striped jambo_table bulk_action">
					<thead>
						<c:if test="${option == 'adm'}">
							<tr class="headings" align="center">
								<th class="column-title">사번</th>
								<th class="column-title">이름</th>
								<th class="column-title">전화번호</th>
								<th class="column-title">이메일</th>
								<th class="column-title">부서</th>
								<th class="column-title">직급</th>
								<th class="column-title no-link last"><span class="nobr">더보기</span>
								</th>
							</tr>
						</c:if>
						<c:if test="${option == 'pro'}">
							<tr class="headings" align="center">
								<th class="column-title">교번</th>
								<th class="column-title">이름</th>
								<th class="column-title">전화번호</th>
								<th class="column-title">이메일</th>
								<th class="column-title">학과</th>
								<th class="column-title">직책</th>
								<th class="column-title no-link last"><span class="nobr">더보기</span></th>
							</tr>
						</c:if>
						<c:if test="${option == 'stu'}">
							<tr class="headings" align="center">
								<th class="column-title">교번</th>
								<th class="column-title">이름</th>
								<th class="column-title">전화번호</th>
								<th class="column-title">이메일</th>
								<th class="column-title">학과</th>
								<th class="column-title">학년</th>
								<th class="column-title no-link last"><span class="nobr">더보기</span>
								</th>
							</tr>
						</c:if>
					</thead>

					<tbody>
						<c:forEach var="dto" items="${dtos}">
							<c:if test="${option == 'adm'}">
								<tr class="even pointer" id="${dto.getId()}" align="center">
									<td class=" ">${dto.getId()}</td>
									<td class=" ">${dto.getName()}</td>
									<td class=" ">${dto.getTel()}</td>
									<td class=" ">${dto.getEmail()}</td>
									<td class=" ">${dto.getDepart_name()}</td>
									<td class="a-right a-right ">${dto.getRank()}</td>
									<td class=" last"><a href="javascript:void(0)"
										onclick="detail_state_adm(this)">View</a></td>
								</tr>

							</c:if>
							<c:if test="${option == 'pro'}">
								<tr class="even pointer" id="${dto.getId()}" align="center">
									<td class=" ">${dto.getId()}</td>
									<td class=" ">${dto.getName()}</td>
									<td class=" ">${dto.getTel()}</td>
									<td class=" ">${dto.getEmail()}</td>
									<td class=" ">${dto.getM_name()}</td>
									<td class="a-right a-right ">${dto.getPosition()}</td>
									<td class=" last"><a href="javascript:void(0)"
										onclick="detail_state_pro(this)">View</a></td>
								</tr>
							</c:if>
							<c:if test="${option == 'stu'}">
								<tr class="even pointer" id="${dto.getId()}" align="center">
									<td class=" ">${dto.getId()}</td>
									<td class=" ">${dto.getName()}</td>
									<td class=" ">${dto.getTel()}</td>
									<td class=" ">${dto.getEmail()}</td>
									<td class=" ">${dto.getM_name()}</td>
									<td class="a-right a-right ">${dto.getGrade()}</td>
									<td class=" last"><a href="javascript:void(0)"
										onclick="detail_state_stu(this)">View</a></td>
								</tr>
							</c:if>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
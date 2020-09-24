<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<form class="php-email-form" style="background:rgba(0,0,0,0);">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 d-flex flex-column justify-content-center-center">
				<div class="icon-box">
					<table class="table" style="font-size:12px; text-align:center;">
						<thead>
							<tr>
								<th colspan="8">강의 계획서</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>교과목명</th>
								<td><input class="form-control" type="text" value="${info.C_NAME }" readOnly></td>
								<th>담당교수</th>
								<td><input class="form-control" type="text" value="${info.P_NAME }" readOnly></td>
								<th>교수연락처</th>
								<td><input class="form-control" type="text" value="${info.TEL }" readOnly></td>
								<!-- 메세지 이미지는 쪽지 보내기로 사용하기 위함 / 추후 이미지 수정 -->
								<th><a href="#"><img style="width:50px; height:40px;"src="https://image.winudf.com/v2/image/YXBwaW52ZW50b3IuYWlfbHloMjMxNTIzMTUuZDA4MDhfaWNvbl8xNTM0MzAwODY0XzA3NA/icon.png?w=170&fakeurl=1"></a></th>
							</tr>
							<tr>
								<td colspan="8" style="display:table-cell; vertical-align: middle;">
									<div class="form-control" style="width:100%; height:100%; text-align:left; font-size:13px;">
										<table class="table" style="border:1px solid lightgrey; text-align:center; font-size:13px;" rules="all">
											<thead>
												<tr>
													<th>강의 목표</th>
													<td>${list.SUBJECT }</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="5">학점 기준</th>
													<td>
														<table class="table" style="border:1px solid lightgrey; text-align:center; font-size:13px;" rules="all">
															<tr>
																<td>출석</td>
																<td>${info.ATTEND * 10 }%</td>
															</tr>
															<tr>
																<td>시험(중간)</td>
																<td>${info.MIDTERM * 10 }%</td>
															</tr>
															<tr>
																<td>시험(기말)</td>
																<td>${info.FINALS * 10 }%</td>
															</tr>
															<tr>
																<td>과제(개별 레포트/프레젠테이션)</td>
																<td>${info.REPORT * 10 }%</td>
															</tr>
															<tr>
																<td>과제(팀 프로젝트)</td>
																<td>${info.TEAM * 10 }%</td>
															</tr>
														</table>
													</td>
												</tr>
											</tbody>
											<tbody>
												<tr>
													<th>1주차</th>
													<td>${list.WEEK1 }</td>
												</tr>
												<tr>
													<th>2주차</th>
													<td>${list.WEEK2 }</td>
												</tr>
												<tr>
													<th>3주차</th>
													<td>${list.WEEK3 }</td>
												</tr>
												<tr>
													<th>4주차</th>
													<td>${list.WEEK4 }</td>
												</tr>
												<tr>
													<th>5주차</th>
													<td>${list.WEEK5 }</td>
												</tr>
												<tr>
													<th>6주차</th>
													<td>${list.WEEK6 }</td>
												</tr>
												<tr>
													<th>7주차</th>
													<td>${list.WEEK7 }</td>
												</tr>
												<tr>
													<th>8주차</th>
													<td>${list.WEEK8 }</td>
												</tr>
												<tr>
													<th>9주차</th>
													<td>${list.WEEK9 }</td>
												</tr>
												<tr>
													<th>10주차</th>
													<td>${list.WEEK10 }</td>
												</tr>
												<tr>
													<th>11주차</th>
													<td>${list.WEEK11 }</td>
												</tr>
												<tr>
													<th>12주차</th>
													<td>${list.WEEK12 }</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</form>
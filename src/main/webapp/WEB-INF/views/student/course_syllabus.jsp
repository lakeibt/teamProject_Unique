<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table">
						<thead class="text-primary">
							<tr>
								<th colspan="8">강의 계획서</th>
							</tr>
						</thead>
						<thead>
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
						</thead>
						<tbody>
							<tr>
								<td colspan="8">
									<table class="table">
										<thead class="text-primary">
											<tr>
												<td>강의 목표</td>
												<td>${list.SUBJECT }</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th rowspan="5">학점 기준</th>
												<th>
													<table class="table">
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
												</th>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<th>1주차</th>
												<th>${list.WEEK1 }</th>
											</tr>
											<tr>
												<th>2주차</th>
												<th>${list.WEEK2 }</th>
											</tr>
											<tr>
												<th>3주차</th>
												<th>${list.WEEK3 }</th>
											</tr>
											<tr>
												<th>4주차</th>
												<th>${list.WEEK4 }</th>
											</tr>
											<tr>
												<th>5주차</th>
												<th>${list.WEEK5 }</th>
											</tr>
											<tr>
												<th>6주차</th>
												<th>${list.WEEK6 }</th>
											</tr>
											<tr>
												<th>7주차</th>
												<th>${list.WEEK7 }</th>
											</tr>
											<tr>
												<th>8주차</th>
												<th>${list.WEEK8 }</th>
											</tr>
											<tr>
												<th>9주차</th>
												<th>${list.WEEK9 }</th>
											</tr>
											<tr>
												<th>10주차</th>
												<th>${list.WEEK10 }</th>
											</tr>
											<tr>
												<th>11주차</th>
												<th>${list.WEEK11 }</th>
											</tr>
											<tr>
												<th>12주차</th>
												<th>${list.WEEK12 }</th>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<div class="card" id="week1" style="padding: 10px; " >
<c:if test="${cnt == 1}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<input type="hidden" name="le_week" value="${le_week}">
	<input type="hidden" name="co_code" value="${co_code}">
	<input type="hidden" name="le_num" value="${vo.getLe_num()}">
	<table class="table table-striped jambo_table bulk_action" style="font-size: 15px; text-align: center;">
		<tr>
			<th colspan="2" style="height:50px;">
			</th>
		</tr>
		<tr>
			<td style="display: table-cell; vertical-align: middle;" align="center">
				<div class="col-md-8" >
					<video controls class="embed-responsive-item" style="width: 100%">
						<source src="${le_video}${vo.getLe_file()}" type="video/mp4">
					</video>
					<div align="left" style="margin-top: 30px;">
						<div class="col-md-12"  style="display:inline-block; padding:0">
							<div style="float:right; height:100%;">
								<a class="nav-link" href="javscript:void(0)" id="a" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="fas fa-qrcode" style="font-size:40px"></i>
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="a" style="width:300px; height: 300px;">
									<img src="${le_img}${vo.getLe_file_img()}" style="width:100%; height: 100%;">
								</div>
							</div>
							<h4 style="display: inline-block">
								${vo.getLe_title()}
							</h4>
							<br>
							<small>${vo.getLe_date()}</small>
						</div>
						<hr>
						<p>${vo.getLe_content()}</p>
						<hr>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<th colspan="2" style="height:50px;">
			</th>
		</tr>
	</table>
</c:if>
<c:if test="${cnt != 1}">
등록된 수업이 없습니다.
</c:if>
</div>

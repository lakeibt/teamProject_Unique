<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>인사기초코드등록</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
	
	<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
<!-- Template Main JS File -->
<script src="${resources}js/admin.js"></script>

<script>

$(function(){
	$('#codeRank').click(function(){
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/human_resources/code_setting/code_rankList',  // 응답페이지  ==> 컨트롤러/basic.
			type : 'GET',  //전송 방식("get", "post")
			dataType : 'text',   //요청한 데이터 형식("html", "xml", "json", "text")
			success : function(data){  //콜백함수 - 전송에 성공하여 정상적으로 처리 된 결과가 data에 전달 된다. 
				$('#codeRank_data').html(data);
			}, 
			error : function() {
				alert('오류');
			}
		});
	});
});
</script>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<%@ include file="/WEB-INF/views/include/admin_top_nav.jsp"%>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div>
					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title"><h4>인사기초코드등록</h4></div>
								<div class="x_content">
									<table class="table">
										<thead style="color:#73879C;">
											<tr>
												<th>출력 구분</th>
												<td><select class="form-control" style="float:left; width:200px;">
													  <option value="0">0. 직급</option>
													  <option value="1">1. 직무</option>
													  <option value="2">2. </option>
													  <option value="3">3. </option>
													</select>
												
												<a id="codeRank" class="btn btn-app" style="height:38px; padding:5px; margin-left:0px; margin-bottom:0px;">조회</a><br>
												</td>
												
											</tr>
										</thead>
									
									</table>
									<div id="codeRank_data">
										<!-- 결과 출력 위치 -->
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->


			<!-- footer content -->
			<%@ include file="/WEB-INF/views/include/admin_footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap_js.jsp"%>
</body>
</html>
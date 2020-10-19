<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp"%>
<div class="card" id="week1" style="padding: 10px; " >
<form action="${professor}lecture_modify?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
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
							</div>
							<h4 style="display: inline-block">
								<input type="text" class="form-control" name="le_title" value="${vo.getLe_title()}">
								<!-- 학생은 input 대신 <p>  -->
							</h4>
							<br>
							<small>${vo.getLe_date()}</small>
							
						</div>
						
						<hr>
						<textarea name="le_content" rows="10" style="width: 100%;">${vo.getLe_content()}</textarea>
						<!-- 학생은 input 대신 <p>  -->
						<hr>
					</div>
				</div>
			</td>
		</tr>
		<!-- 아래 삭제  -->
		<tr>
			<th>
				<table class="table" style="margin-bottom: 0;">
					<tr class="filebox">
						<td style="width:100px;">첨부 동영상</td>
						<td class="a">
							<input class="upload-name" name="le_file2" value="${vo.getLe_file()}" disabled="disabled">
							
							<label for="le_file" style="margin-bottom: 0px;">업로드</label>
							<input type="file" class="upload-hidden" id="le_file" name="le_file" value="${vo.getLe_file()}"  onchange="setFile_name(this);">
						</td>
					</tr>
				</table>
			</th>
	</table>
	<div class="col-md-12" align="center">
		<button class="btn btn-primary" type="submit">수정</button>
		<button class="btn btn-primary" type="submit" formaction="${professor}lecture_delete?${_csrf.parameterName}=${_csrf.token}">삭제</button>
	</div>
</form>
</div>
<script>
$(document).ready(function(){
	var fileTarget = $('.upload-hidden');
	fileTarget.on('change', function(){
		// 값이 변경되면
		if(window.FileReader){		// modern browser
			var filename = $(this)[0].files[0].name; 
		} else { 	// old IE var
			filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		}
		// 추출한 파일명 삽입
		$(this).siblings('.upload-name').val(filename);
	}); 
});

$(document).ready(function(){
	var fileTarget = $('.upload-hidden_img');
	fileTarget.on('change', function(){
		// 값이 변경되면
		if(window.FileReader){		// modern browser
			var filename = $(this)[0].files[0].name; 
		} else { 	// old IE var
			filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
		}
		// 추출한 파일명 삽입
		$(this).siblings('.upload-name_img').val(filename);
	}); 
});
</script>

<style>
.filebox input[type="file"] {
	position: absolute; 
	width: 1px; 
	height: 1px; 
	padding: 0; 
	margin: -1px; 
	overflow: hidden; 
	clip:rect(0,0,0,0); 
	border: 0; 
}
.filebox label { 
	display: inline-block; 
	padding: .5em .75em; 
	color: #999; 
	font-size: inherit; 
	line-height: normal; 
	vertical-align: middle; 
	background-color: #fdfdfd; 
	cursor: pointer; 
	border: 1px solid #ebebeb; 
	border-bottom-color: #e2e2e2; 
	border-radius: .25em; 
}
 /* named upload */
.filebox .upload-name, .filebox .upload-name_img{
	width:200px;
	display: inline-block; 
	padding: .5em .75em;
	 /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none;
	 /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none; 
}
</style>
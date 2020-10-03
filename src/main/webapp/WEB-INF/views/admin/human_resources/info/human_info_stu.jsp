<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

<script>
$(document).ready(function(){
	var fileTarget = $('.filebox .upload-hidden');
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



</script>
</head>
<body>


<div class="col-md-12 col-sm-12 ">
	<div class="x_panel">
		<div class="x_content">
			<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="${admin}human_resources/info/human_info_add?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="x_title">
				<h2>
					인적정보등록
				</h2>
				<ul class="nav navbar-right panel_toolbox">
				<li>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				</li>
				<li class="dropdown">
				<select class="form-control" id="human_info_form_select" name="option" onchange="changeForm()">
					<c:if test="${option  == 'stu'}">
						<option value="stu" selected>학생</option>
						<option value="pro">교수</option>
						<option value="adm">직원</option>
					</c:if>
					<c:if test="${option  == 'pro'}">
						<option value="stu">학생</option>
						<option value="pro" selected>교수</option>
						<option value="adm">직원</option>
					</c:if>
					<c:if test="${option  == 'adm'}">
						<option value="stu">학생</option>
						<option value="pro">교수</option>
						<option value="adm"  selected>직원</option>
					</c:if>
					<c:if test="${option  == null}">
						<option value="stu">학생</option>
						<option value="pro">교수</option>
						<option value="adm"  selected>직원</option>
					</c:if>
				</select>
				</ul>
				<div class="clearfix"></div>
			</div>
				<br>
				
				<div class="col-md-4  form-group">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">아이디(사번)
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" value="${nextId}" name="id" required="required" class="form-control " readonly>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">비밀번호
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="password" name="pwd" id="pwd" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">비밀번호확인
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="password" name="pwd_re"  id="pwd_re" required="required" class="form-control ">
						</div>
					</div>
					<br><br><br><br>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">입학년도
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="entrancedate" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">학년
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="grade" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">학과
						</label>
						<div class="col-md-7 col-sm-7" id="selectBox_depart">
							<select class="form-control" name="m_code">
								<option value=""> </option>
								<c:forEach var="dto" items="${majorList}">
									<option value="${dto.getM_code()}">${dto.getM_name()}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-4  form-group">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">이름
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="name" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">영문이름
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="eng_name" required="required"
								class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">이메일
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="email" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">휴대전화
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="tel" required="required" onfocus="this.placeholder = '000-0000-0000'" onblur="this.placeholder = ' '"
								class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">주민번호
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" id="jumin1" name="jumin1" required="required" class="form-control" style="width:47%; display:inline-block;">&nbsp;&nbsp;-&nbsp;
							<input type="text" id="jumin2" name="jumin2" required="required" class="form-control" style="width:47%; display:inline-block;">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">성별
						</label>
						<div class="col-md-7 col-sm-7 ">
						<div style="height:6.5px"></div>
						<label>남:</label>
						<input type="radio" class="flat" name="gender" id="gender" value="1" required />
						<br>
						<label>여:</label>
						<input type="radio" class="flat" name="gender" id="gender" value="2" />
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">내/외국인
						</label>
						<div class="col-md-7 col-sm-7 ">
							<div style="height:6.5px"></div>
							<label>내국인</label>
							<input type="radio" class="flat" name="frgn" id="frgn" value="0" required />
							<br>
							<label>외국인</label>
							<input type="radio" class="flat" name="frgn" id="frgn" value="1" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">국적
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="nation" required="required" class="form-control ">
						</div>
					</div>
					
				</div>
				<div class="col-md-4  form-group" align="center">
					<div style="height: 50px;">
					</div>
					<div id="image_container">
						<img src="${adm_photo}imgEx.png">
					</div>
					<div class="filebox">
						<input class="upload-name" name="photo2" value="파일선택" disabled="disabled">
						
						<label for="ex_filename" style="margin-bottom: 0px;">업로드</label>
						<input type="file" id="ex_filename" name="photo" class="upload-hidden" onchange="setThumbnail(event);">
					</div>
					<div id="human_info_btn_div">
						<button class="btn btn-primary" type="reset">Reset</button>
						<button class="btn btn-success" id="submitBtn" type="submit">Submit</button>
					</div>
				</div>
				<div class="col-md-4  form-group" align="center">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">주소</label>
						<div class="col-md-9 col-sm-9 ">
							<input type="text" id="address" name="address" required="required" class="form-control ">
						</div>
						<div class="col-md-3 col-sm-3 " align="right">
							<button type="button" class="btn btn-secondary" onclick="addressSearch();" style="margin-left: 0px;">주소찾기</button>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">상세주소</label>
						<div class="col-md-12 col-sm-12 ">
							<input id="de_address" name="de_address" type="text" class="form-control">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>
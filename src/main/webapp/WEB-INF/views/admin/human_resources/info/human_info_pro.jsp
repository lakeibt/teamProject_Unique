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

$(document).ready(function(){
	
	$('#car_num_div').hide();
	
	$("input:radio[name=car]").change(function(){
		
		if($("input[name=car]:checked").val() == "1"){
			
			$('#car_num_div').show();
 
        }else if($("input[name=car]:checked").val() == "0"){
        	
        	$('#car_num_div').hide();
           
        }
		
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
							<input type="password" name="pwd_re"  id="pwd_re" required="required"
								class="form-control ">
						</div>
					</div>
					<br><br>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">입사일 
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input class="form-control" type="date" name="enterday">
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
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">직책
						</label>
						<div class="col-md-7 col-sm-7 ">
							<select class="form-control" name="position">
								<option value=""> </option>
								<option value="교수">교수</option>
								<option value="부교수">부교수</option>
								<option value="강사">강사</option>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">계좌번호
						</label>
						<div class="col-md-4 col-sm-4">
							<input type="text" name="account_number" required="required"
								class="form-control ">
						</div>
						<div class="col-md-3 col-sm-3">
							<select class="form-control" name="bank">
								<option value=""></option>
		                        <option value="국민은행">국민은행</option>
		                        <option value="기업은행">기업은행</option>
		                        <option value="농협은행">농협은행</option>
		                        <option value="산업은행">산업은행</option>
		                        <option value="새마을금고">새마을금고</option>
		                        <option value="신한은행">신한은행</option>
		                        <option value="외환은행">외환은행</option>
		                        <option value="우리은행">우리은행</option>
		                        <option value="우체국">우체국</option>
		                        <option value="카카오뱅크">카카오뱅크</option>
		                        <option value="케이뱅크">케이뱅크</option>
		                        <option value="하나은행">하나은행</option>
		                        <option value="한국씨티은행">한국씨티은행</option>
		                        <option value="SC제일은행">SC제일은행</option>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">자차소유
						</label>
						<div class="col-md-7 col-sm-7 ">
							<div style="height:6.5px"></div>
							<label>보유:</label>
							<input type="radio" class="flat" name="car" id="car" value="1" required/>
							<br>
							<label>미보유:</label>
							<input type="radio" class="flat" name="car" id="car" value="0" />
						</div>
					</div>
					<div class="item form-group"  id="car_num_div">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">차번호
						</label>
						<div class="col-md-7 col-sm-7">
							<input type="text" name="carnum" required="required" onfocus="this.placeholder = '00가 0000'" onblur="this.placeholder = ' '" 
								class="form-control ">
						</div>
					</div>
				</div>
				<div class="col-md-4  form-group">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">이름
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="name" required="required"
								class="form-control ">
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
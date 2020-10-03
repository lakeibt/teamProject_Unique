<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var = "adm_photo" value = "${pageContext.request.contextPath}/resources/img/profile_photo/admin/"/>

<tr class="detail_tr">
	<td colspan="7">
		<div>
			<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="col-md-4  form-group">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">아이디(사번)
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" value="${vo.getId()}" name="id" required="required" class="form-control " readonly>
						</div>
					</div>
					
					<br><br><br><br>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align">입사일 
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input id="birthday" class="date-picker form-control" name="enterday" value="${vo.getEnterday()}"
								required="required"
								type="text"
								onfocus="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
								onmouseover="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
								onclick="if (!window.__cfRLUnblockHandlers) return false; this.type='date'"
								onblur="if (!window.__cfRLUnblockHandlers) return false; this.type='text'"
								onmouseout="if (!window.__cfRLUnblockHandlers) return false; timeFunctionLong(this)"
								data-cf-modified-ed641bf6e1354c9585fdbfb0-="">
								<script type="ed641bf6e1354c9585fdbfb0-text/javascript">
													function timeFunctionLong(input) {
														setTimeout(function() {
															input.type = 'text';
														}, 60000);
													}
								</script>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">부서코드
						</label>
						<div class="col-md-7 col-sm-7" id="selectBox_depart">
							<select class="form-control" name="depart">
								<option value="${vo.getDepart()}" selected>${vo.getDepart()}</option>
								<c:forEach var="dto" items="${departList}">
									<option value="${dto.getDepart()}">${dto.getDepart_name()}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">직급
						</label>
						<div class="col-md-7 col-sm-7 ">
							<select class="form-control" name="rank">
								<option value="${vo.getRank()}" selected>${vo.getRank()}</option>
								<c:forEach var="dto" items="${rankList}">
									<option value="${dto.getRank()}">${dto.getRank()}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">계좌번호
						</label>
						<div class="col-md-7 col-sm-7">
							<input type="text" name="account_number" required="required"
								class="form-control " value="${vo.getAccount_number()}">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">자차소유
						</label>
						<div class="col-md-7 col-sm-7 ">
							<div style="height:6.5px"></div>
							<c:if test="${vo.getCar() == 1}">
								<label>보유:</label>
								<input type="radio" class="flat" name="car" id="car" value="1" required checked/>
								<br>
								<label>미보유:</label>
								<input type="radio" class="flat" name="car" id="car" value="0" />
							</c:if>
							<c:if test="${vo.getCar() == 0}">
								<label>보유:</label>
								<input type="radio" class="flat" name="car" id="car" value="1" required/>
								<br>
								<label>미보유:</label>
								<input type="radio" class="flat" name="car" id="car" value="0"  checked/>
							</c:if>
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
								class="form-control " value="${vo.getName()}">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">영문이름
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="eng_name" required="required"
								class="form-control " value="${vo.getEng_name() }">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">이메일
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="email" required="required" class="form-control " value="${vo.getEmail() }">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">휴대전화
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" name="tel" required="required"
								class="form-control " value="${vo.getTel() }">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">주민번호
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" value="${vo.getJumin1()}" id="jumin1" name="jumin1" required="required" class="form-control" style="width:46%; display:inline-block;">&nbsp;&nbsp;-&nbsp;
							<input type="text" value="${vo.getJumin2()}" id="jumin2" name="jumin2" required="required" class="form-control" style="width:46%; display:inline-block;">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">성별
						</label>
						<div class="col-md-7 col-sm-7 ">
						<div style="height:6.5px"></div>
						<c:if test="${vo.getGender() == 1}">
							<label>남:</label>
							<input type="radio" class="flat" name="gender" id="gender" value="1" required checked/>
							<br>
							<label>여:</label>
							<input type="radio" class="flat" name="gender" id="gender" value="2" />
						</c:if>
						<c:if test="${vo.getCar() == 2}">
							<label>남:</label>
							<input type="radio" class="flat" name="gender" id="gender" value="1" required/>
							<br>
							<label>여:</label>
							<input type="radio" class="flat" name="gender" id="gender" value="2"  checked />
						</c:if>
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">내/외국인
						</label>
						<div class="col-md-7 col-sm-7 ">
							<div style="height:6.5px"></div>
							<c:if test="${vo.getFrgn() == 0}">
								<label>내국인</label>
								<input type="radio" class="flat" name="frgn" id="frgn" value="0" required checked />
								<br>
								<label>외국인</label>
								<input type="radio" class="flat" name="frgn" id="frgn" value="1" />
							</c:if>
							<c:if test="${vo.getFrgn() == 1}">
								<label>내국인</label>
								<input type="radio" class="flat" name="frgn" id="frgn" value="0" required />
								<br>
								<label>외국인</label>
								<input type="radio" class="flat" name="frgn" id="frgn" value="1" checked/>
							</c:if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-md-3 col-sm-3 label-align"
							for="first-name">국적
						</label>
						<div class="col-md-7 col-sm-7 ">
							<input type="text" value="${vo.getNation()}" name="nation" required="required" class="form-control ">
						</div>
					</div>
					
				</div>
				<div class="col-md-4  form-group" align="center">
					<div style="height: 50px;">
					</div>
					<div id="image_container">
						<img src="${adm_photo}${vo.getPhoto()}">
					</div>
					<div class="filebox">
						<input class="upload-name"  value="${vo.getPhoto()}" name="photo2" value="파일선택" disabled="disabled">
						
						<label for="ex_filename" style="margin-bottom: 0px;">업로드</label>
						<input type="file" id="ex_filename" name="photo" class="upload-hidden" onchange="setThumbnail(event);">
					</div>
					<div id="human_info_btn_div">
						<button class="btn btn-success" id="submitBtn" type="submit">수정하기</button>
					</div>
				</div>
				<div class="col-md-4  form-group" align="center">
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">주소</label>
						<div class="col-md-9 col-sm-9 ">
							<input type="text" value="${vo.getAddress()}" id="address" name="address" required="required" class="form-control ">
						</div>
					</div>
					<div class="item form-group">
						<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">상세주소</label>
						<div class="col-md-12 col-sm-12 ">
							<input id="de_address" value="${vo.getDe_address()}" name="de_address" type="text" class="form-control">
						</div>
					</div>
				</div>
			</form>
		</div>
	</td>
</tr>

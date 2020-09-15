<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>인사정보등록</title>
	<%@ include file="/WEB-INF/views/bootstrap/admin_bootstrap.jsp"%>
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
				<div class="row">
					<div class="col-md-12 col-sm-12 ">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									인적정보등록
								</h2>
								<ul class="nav navbar-right panel_toolbox">
								<li>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
								</li>
								<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">구분</a>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">직원</a>
									<a class="dropdown-item" href="#">학생</a>
									<a class="dropdown-item" href="#">교수</a>								
								</div>
								</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<form id="demo-form2" data-parsley-validate
									class="form-horizontal form-label-left">
									<br>
									<div class="col-md-3 col-sm-3  form-group">
										<div id="human_info_imgAdd">
											사진
										</div>
									</div>
									<div class="col-md-4 col-sm-12  form-group">
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">아이디(사번)
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">비밀번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">비밀번호확인
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<br><br><br><br>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">입사일 
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input id="birthday" class="date-picker form-control"
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
											<div class="col-md-7 col-sm-7 ">
												<select class="form-control">
													<option></option>
													<option>부서코드1</option>
													<option>부서코드2</option>
													<option>부서코드3</option>
													<option>부서코드4</option>
													<option>부서코드5</option>
												</select>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">직급
											</label>
											<div class="col-md-7 col-sm-7 ">
												<select class="form-control">
													<option></option>
													<option>직급1</option>
													<option>직급2</option>
													<option>직급3</option>
													<option>직급4</option>
													<option>직급5</option>
												</select>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">계좌번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">자차소유
											</label>
											<div class="col-md-7 col-sm-7 ">
											<div style="height:6.5px"></div>
											<label>보유:</label>
											<input type="radio" class="flat" name="car" id="car" value="" required />
											<br>
											<label>미보유:</label>
											<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-12  form-group">
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">이름
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">영문이름
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">이메일
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">휴대전화
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">주민번호
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">성별
											</label>
											<div class="col-md-7 col-sm-7 ">
											<div style="height:6.5px"></div>
											<label>남:</label>
											<input type="radio" class="flat" name="car" id="car" value="" required />
											<br>
											<label>여:</label>
											<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">내/외국인
											</label>
											<div class="col-md-7 col-sm-7 ">
												<div style="height:6.5px"></div>
												<label>내국인</label>
												<input type="radio" class="flat" name="car" id="car" value="" required />
												<br>
												<label>외국인</label>
												<input type="radio" class="flat" name="car" id="car" value="" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">국적
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" name="country" id="autocomplete-custom-append" class="form-control col-md-10" />
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align"
												for="first-name">주소
											</label>
											<div class="col-md-7 col-sm-7 ">
												<input type="text" id="first-name" required="required"
													class="form-control ">
											</div>
										</div>
									</div>
										<div class="col-md-12 col-sm-12  form-group">
											<button class="btn btn-primary" type="reset">Reset</button>
											<button type="submit" class="btn btn-success">Submit</button>
										</div>
								</form>
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

	<script src="${resources}vendors/jquery/dist/jquery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap/dist/js/bootstrap.bundle.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/fastclick/lib/fastclick.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/nprogress/nprogress.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/iCheck/icheck.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/moment/min/moment.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/bootstrap-daterangepicker/daterangepicker.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/jquery.hotkeys/jquery.hotkeys.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script src="${resources}vendors/google-code-prettify/src/prettify.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/jquery.tagsinput/src/jquery.tagsinput.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/switchery/dist/switchery.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/select2/dist/js/select2.full.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/parsleyjs/dist/parsley.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/autosize/dist/autosize.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script
		src="${resources}vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}vendors/starrr/dist/starrr.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>

	<script src="${resources}build/js/custom.min.js"
		type="ed641bf6e1354c9585fdbfb0-text/javascript"></script>
	<script
		src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
		data-cf-settings="ed641bf6e1354c9585fdbfb0-|49" defer=""></script>
	<script src="${resources}build/js/custom.min.js"></script>

</body>
</html>
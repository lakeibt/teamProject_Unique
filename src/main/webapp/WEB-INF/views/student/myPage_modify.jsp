<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>
    Material Dashboard Dark Edition by Creative Tim
  </title>
  <%@ include file = "../bootstrap/guest_bootstrap2.jsp" %>
</head>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function addressSearch() {
		new daum.Postcode(
			{
				oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					fullAddr = data.roadAddress;

				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					fullAddr = data.jibunAddress;
				}
				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if (data.userSelectedType === 'R') {
					//법정동명이 있을 경우 추가한다.
					if (data.bname !== '') {
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', '
					+ data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' (' + extraAddr
					+ ')' : '');
				}
						// 주소 정보를 해당 필드에 넣는다.
				document.getElementById('address').value = fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('de_address').focus();
				}
			}).open();
	}
</script>
<style>
.form-control { font-size:12px; }
.btn { 
	width:100px; background-color: #68A4C4; border: none; color:#fff; padding: 15px 0; text-align: center; text-decoration: none;
	display: inline-block; font-size: 15px; cursor: pointer; }
</style>

<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="${assets}img/sidebar-2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Creative Tim
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./dashboard.html">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./user.html">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./tables.html">
              <i class="material-icons">content_paste</i>
              <p>Table List</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./typography.html">
              <i class="material-icons">library_books</i>
              <p>Typography</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="./icons.html">
              <i class="material-icons">bubble_chart</i>
              <p>Icons</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./map.html">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.html">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-default btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="javascript:void(0)">Mike John responded to your email</a>
                  <a class="dropdown-item" href="javascript:void(0)">You have 5 new tasks</a>
                  <a class="dropdown-item" href="javascript:void(0)">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="javascript:void(0)">Another Notification</a>
                  <a class="dropdown-item" href="javascript:void(0)">Another One</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0)">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="container-fluid">
            <div class="card card-plain">
              <div class="row">
                <div class="col-md-12">
                
                	<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h2>내 정보 페이지</h2>
				</div>
			</div>

<div class="container">
				<div class="contact">
					<div class="row">
						<div class="col-lg-2 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<img src="${stu_photo}${vo.getPhoto()}" class="img-fluid" style="width:150px;"alt>
							</div>
						</div>
						<div class="col-lg-10 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<div class="icon-box">
								<form action="${guest}myPage_modifyPro" name="stuInfoForm" class="php-email-form" method="post">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									<table class="table" style="font-size:12px;">
										<thead>
											<tr>
												<th colspan="8">학생정보</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>이름</th>
												<td><input class="form-control" type="text" value="${vo.getName()}" readOnly></td>
												<th>학번</th>
												<td><input class="form-control" type="text" value="E20208090" readOnly></td>
												<th>학과</th>
												<td><input class="form-control" type="text" value="${vo.getM_code()}" readOnly></td>
												<th>전공</th>
												<td><input class="form-control" type="text" value="무슨무슨공학" readOnly></td>
											</tr>
											<tr>
												<th>영문이름</th>
												<td><input class="form-control" type="text" value="${vo.getEng_name()}" readOnly></td>
												<th>생년월일</th>
												<td><input class="form-control" type="text" value="${vo.getJumin1()}" readOnly></td>
												<th>학적상태</th>
												<td><input class="form-control" type="text" value="${vo.getR_code()}" readOnly></td>
												<th>입학년도</th>
												<td><input class="form-control" type="text" value="${vo.getEntrancedate()}" readOnly></td>
											</tr>
											<tr>
												<th>집 주소</th>
												<td colspan="6"><input class="form-control" id="address"type="text" name="address" value="${vo.getAddress()}"></td>
												<td><button class="php-email-form" type="button" style="margin:0px;" onclick="addressSearch();">주소찾기</button></td>
											</tr>
											<tr>
												<th>상세주소</th>
												<td colspan="7"><input class="form-control" id="de_address"type="text" name="de_address" value="${vo.getDe_address()}"></td>
											</tr>
											<tr>
												<th>휴대폰번호</th>
												<td colspan="3"><input class="form-control" type="text" value="${vo.getTel()}" name="student_tel"></td>
												<th>이메일</th>
												<td colspan="3"><input class="form-control" type="text" value="${vo.getEmail()}" name="student_email"></td>
															
											</tr>
										</tbody>
									</table>
									<script>
										function submit() {
											var form = document.stuInfoForm;
											form.submit();
										}
									</script>
									<div class="text-center">
									<button class="php-email-form" type="submit" onclick="submit();">
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">정보수정</font>
										</font>
									</button>
								</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-2 d-flex flex-column justify-content-center-center"><div class="icon-box"></div></div>
					<div class="col-lg-10 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<div class="icon-box">
							<form action="" class="php-email-form" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								<table class="table" style="font-size:12px;">
									<thead>
										<tr>
											<th colspan="8">상담 기초 조사지</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th colspan="2">취미/특기</th>
											<td colspan="2"><input class="form-control" type="text" value="자기"></td>
											<td colspan="2"><input class="form-control" type="text" value="먹기"></td>
											<td colspan="2"><input class="form-control" type="text" value="놀기"></td>
										</tr>
										<tr>
											<th colspan="2">졸업 후 계획</th>
											<td colspan="6"><input class="form-control" type="text" value="취업"></td>
										</tr>
										<tr>
											<th colspan="2">희망 직종(3가지)</th>
											<td colspan="2"><input class="form-control" type="text" value="작가"></td>
											<td colspan="2"><input class="form-control" type="text" value="개발자"></td>
											<td colspan="2"><input class="form-control" type="text" value="PD"></td>
										</tr>
										<tr>
											<th colspan="2">학업 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">진로 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">학교 적응 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">대인 관계 문제</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
										<tr>
											<th colspan="2">학생생활상담소에 요청하고 싶은 <br>프로그램이 있다면?</th>
											<td colspan="6"><input class="form-control" type="text" value=""></td>
										</tr>
									</tbody>
								</table>
								<div class="text-center">
									<button class="php-email-form" type="submit">
										<font style="vertical-align:inherit;">
											<font style="vertical-align:inherit;">상담신청</font>
										</font>
									</button>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
                
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right" id="date">
            , made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
      <script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple active" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${assets}img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${assets}img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${assets}img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="${assets}img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard-dark" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard-dark/docs/2.0/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard/tree/dark-edition" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
  <%@ include file = "../bootstrap/guest_bootstrap_js2.jsp" %>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress+" / "; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                
            }
        }).open();
    }
</script>
</body>

</html>
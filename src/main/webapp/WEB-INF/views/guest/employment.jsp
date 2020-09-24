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
<style>
.form-control {font-size:15px;}
</style>
<script>
jQuery(document).ready(function($) {
	$(".scroll").click(function(event){
		var offset = $("#coninfo_detail" + event).offset();
		var winH = $(window).height();
		event.preventDefault();
		$('html,body').animate({scrollTop : (offset.top - winH/2)}, 500);
	});
});
</script>
<script type="text/javascript">
$(function(){
    
    // 질문유형을 선택한다.
    chnQnaType('0' , '0');
});

function chnQnaType(type , select) {
    
    $('#schQnaType').empty();
    
    if(type == '1') { // 어문학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='2463' >국어국문학과</option>");
        $('#schQnaType').append("<option value='2509' >독일어과</option>");
        $('#schQnaType').append("<option value='2547' >러시아어과</option>");
        $('#schQnaType').append("<option value='2576' >스페인어학과</option>");
        $('#schQnaType').append("<option value='2672' >일본어과</option>");
        $('#schQnaType').append("<option value='3017' >영어영문과</option>");
        $('#schQnaType').append("<option value='3089' >프랑스어과</option>");
        $('#schQnaType').append("<option value='3101' >중국어학과</option>");
    } else if (type == '2') {  // 인문과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='2396' >관광학과</option>");
        $('#schQnaType').append("<option value='2487' >국제지역학과</option>");
        $('#schQnaType').append("<option value='2585' >문예창작학과</option>");
        $('#schQnaType').append("<option value='2601' >역사학과</option>");
        $('#schQnaType').append("<option value='2664' >아시아학과</option>");
        $('#schQnaType').append("<option value='2670' >유아교육학과</option>");
    } else if ( type == '3') {  // 사회과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='2425' >교육과</option>");
        $('#schQnaType').append("<option value='2533' >신문방송학과</option>");
        $('#schQnaType').append("<option value='2549' >사회복지학과</option>");
        $('#schQnaType').append("<option value='2553' >사회학과</option>");
        $('#schQnaType').append("<option value='2591' >문헌정보학과</option>");
        $('#schQnaType').append("<option value='2614' >정치외교학과</option>");
        $('#schQnaType').append("<option value='2646' >심리학과</option>");
        $('#schQnaType').append("<option value='2647' >아동가족학과</option>");
        $('#schQnaType').append("<option value='2706' >행정학과</option>");
        $('#schQnaType').append("<option value='2939' >국제학과</option>");
    } else if ( type == '4') {  // 자연과학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='2185' >보건학과</option>");
        $('#schQnaType').append("<option value='2214' >한약학과</option>");
        $('#schQnaType').append("<option value='2268' >언어병리학전공</option>");
        $('#schQnaType').append("<option value='2329' >보건관리학과</option>");
        $('#schQnaType').append("<option value='3591' >패션비즈니스학과</option>");
        $('#schQnaType').append("<option value='4380' >물리학과</option>");
        $('#schQnaType').append("<option value='4390' >식품영양학과</option>");
        $('#schQnaType').append("<option value='4411' >수학과</option>");
        $('#schQnaType').append("<option value='4416' >생명과학과</option>");
        $('#schQnaType').append("<option value='4467' >통계학과</option>");
        $('#schQnaType').append("<option value='4477' >화학과</option>");
        $('#schQnaType').append("<option value='4500' >지구물리학과</option>");
    } else if ( type == '5') {  // 공학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='1' >기계공학과</option>");
    	$('#schQnaType').append("<option value='6' >건축학과</option>");
    	$('#schQnaType').append("<option value='25' >게임학과</option>");
    	$('#schQnaType').append("<option value='46' >고분자공학과</option>");
    	$('#schQnaType').append("<option value='55' >도시공학과</option>");
    	$('#schQnaType').append("<option value='62' >건축공학과</option>");
    	$('#schQnaType').append("<option value='93' >산업공학과</option>");
    	$('#schQnaType').append("<option value='109' >생명공학과</option>");
    	$('#schQnaType').append("<option value='121' >재료공학과</option>");
    	$('#schQnaType').append("<option value='128' >전기공학과</option>");
    	$('#schQnaType').append("<option value='132' >신소재공학과</option>");
    	$('#schQnaType').append("<option value='144' >전자공학과</option>");
    	$('#schQnaType').append("<option value='155' >안전공학과</option>");
    } else if ( type == '6') {  // 상경
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='2415' >경영정보학과</option>");
    	$('#schQnaType').append("<option value='2417' >경영학과</option>");
    	$('#schQnaType').append("<option value='2441' >경제학과</option>");
    	$('#schQnaType').append("<option value='2582' >무역학과</option>");
    	$('#schQnaType').append("<option value='2953' >금융학과</option>");
    	$('#schQnaType').append("<option value='4301' >회계/세무학과</option>");
    } else if ( type == '7') {  // 예/체능학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
    	$('#schQnaType').append("<option value='1409' >국악과</option>");
    	$('#schQnaType').append("<option value='1424' >공예학과</option>");
    	$('#schQnaType').append("<option value='1439' >미술학과</option>");
    	$('#schQnaType').append("<option value='1449' >성악과</option>");
    	$('#schQnaType').append("<option value='1466' >무용학과</option>");
    	$('#schQnaType').append("<option value='1484' >작곡과</option>");
    	$('#schQnaType').append("<option value='1513' >음악학과</option>");
    	$('#schQnaType').append("<option value='1524' >체육학과</option>");
    	$('#schQnaType').append("<option value='1602' >사진학과</option>");
    	$('#schQnaType').append("<option value='1626' >연극영화과</option>");
    	$('#schQnaType').append("<option value='1640' >실용음악과</option>");
    } else if ( type == '8') {  // 의/약학
    	$('#schQnaType').append("<option selected disabled>상세전공을 선택하세요</option>");
        $('#schQnaType').append("<option value='2174' >간호학과</option>");
        $('#schQnaType').append("<option value='2198' >약학과</option>");
        $('#schQnaType').append("<option value='4751' >의생명과학과</option>");
    }
    
    document.getElementById("schQnaType").style.display = "";
    
    if ($.trim(select) != "") {
        $('#select1').val(type);
        $('#schQnaType').val(select);
    }
}
</script>
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
					<h2>취업지원 공고페이지</h2>
				</div>
			</div>

<div class="container">
				<div class="row">
					<div class="col-lg-12 d-flex flex-column justify-content-center-center">
						<div class="icon-box">
							<table class="table" style="font-size:13px;">
								<tr>
									<td colspan="6">
										<select id="schQnaType" class="form-control" name="schQnaType" style="width:30%; float:right;" onchange="content()" >
										</select>
										<select name="questType" class="form-control" id="select1" style="width:30%; float:right;" onChange="chnQnaType(this.value)" >
											<option selected disabled value="0">전공을 선택하세요</option>
										    <option value="1">어문학</option>
											<option value="2">인문과학</option>
											<option value="3">사회과학</option>
											<option value="4">자연과학</option>
											<option value="5">공학</option>
											<option value="6">상경</option>
											<option value="7">예/체능학</option>
											<option value="8">의/약학</option>
										</select>    
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="services">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 d-flex flex-column justify-content-center-center">
							<div class="icon-box">
								<table class="table" style="font-size:15px;">
									<tbody>
										<tr>
											<th style="width: 20%">회사명</th>
											<th style="width: 70%">내용</th>
											<th style="width: 10%">마감일</th>
										</tr>
									</tbody>
								</table>
								<div id="emplinfo">
						
								</div>
							</div>
						</div>
						<div id="coninfo_detail">
						
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
</body>
<script type="text/javascript">
  
function content  () {
   var yourSelect = document.getElementById("select1");
   var yourSelect2 = document.getElementById("schQnaType");
   
   var value = yourSelect.options[yourSelect.selectedIndex].value;
   var value2 = yourSelect2.options[yourSelect2.selectedIndex].value;
   var mbn ="";
   var mn ="";
   
   if(value == 1) {
	   mbn = "어문학";
   } else if(value == 2) {
	   mbn = "인문과학";
   } else if(value == 3) {
	   mbn = "사회과학";
   } else if(value == 4) {
	   mbn = "자연과학";
   } else if(value == 5) {
	   mbn = "공학";
   } else if(value == 6) {
	   mbn = "상경";
   } else if(value == 7) {
	   mbn = "예%2F체능학";
   } else if(value == 8) {
	   mbn = "의%2F약학";
   } 

   if(value2 == 2463) {
	   mn = "국어국문학과";
   } else if(value2 == 2509) {
	   mn = "독일어과";
   } else if(value2 == 2547) {
	   mn = "러시아어과";
   } else if(value2 == 2576) {
	   mn = "스페인어학과";
   } else if(value2 == 2672) {
	   mn = "일본어과";
   } else if(value2 == 3017) {
	   mn = "영어영문과";
   } else if(value2 == 3089) {
	   mn = "프랑스어과";
   } else if(value2 == 3101) {
	   mn = "중국어학과";
   } else if(value2 == 2396) {
	   mn = "관광학과";
   } else if(value2 == 2487) {
	   mn = "국제지역학과";
   } else if(value2 == 2585) {
	   mn = "문예창작학과";
   } else if(value2 == 2601) {
	   mn = "역사학과";
   } else if(value2 == 2664) {
	   mn = "아시아학과";
   } else if(value2 == 2670) {
	   mn = "유아교육학과";
   } else if(value2 == 2425) {
	   mn = "교육과";
   } else if(value2 == 2533) {
	   mn = "신문방송학과";
   } else if(value2 == 2549) {
	   mn = "사회복지학과";
   } else if(value2 == 2553) {
	   mn = "사회학과";
   } else if(value2 == 2591) {
	   mn = "문헌정보학과";
   } else if(value2 == 2614) {
	   mn = "정치외교학과";
   } else if(value2 == 2646) {
	   mn = "심리학과";
   } else if(value2 == 2647) {
	   mn = "아동가족학과";
   } else if(value2 == 2706) {
	   mn = "행정학과";
   } else if(value2 == 2939) {
	   mn = "국제학과";
   } else if(value2 == 2185) {
	   mn = "보건학과";
   } else if(value2 == 2214) {
	   mn = "한약학과";
   } else if(value2 == 2268) {
	   mn = "언어병리학전공";
   } else if(value2 == 2329) {
	   mn = "보건관리학과";
   } else if(value2 == 3591) {
	   mn = "패션비즈니스학과";
   } else if(value2 == 4380) {
	   mn = "물리학과";
   } else if(value2 == 4390) {
	   mn = "식품영양학과";
   } else if(value2 == 4411) {
	   mn = "수학과";
   } else if(value2 == 4416) {
	   mn = "생명과학과";
   } else if(value2 == 4467) {
	   mn = "통계학과";
   } else if(value2 == 4477) {
	   mn = "화학과";
   } else if(value2 == 4500) {
	   mn = "지구물리학과";
   } else if(value2 == 1) {
	   mn = "기계공학과";
   } else if(value2 == 6) {
	   mn = "건축학과";
   } else if(value2 == 25) {
	   mn = "게임학과";
   } else if(value2 == 46) {
	   mn = "고분자공학과";
   } else if(value2 == 55) {
	   mn = "도시공학과";
   } else if(value2 == 62) {
	   mn = "건축공학과";
   } else if(value2 == 93) {
	   mn = "산업공학과";
   } else if(value2 == 109) {
	   mn = "생명공학과";
   } else if(value2 == 121) {
	   mn = "재료공학과";
   } else if(value2 == 128) {
	   mn = "전기공학과";
   } else if(value2 == 132) {
	   mn = "신소재공학과";
   } else if(value2 == 144) {
	   mn = "전자공학과";
   } else if(value2 == 155) {
	   mn = "안전공학과";
   } else if(value2 == 2415) {
	   mn = "경영정보학과";
   } else if(value2 == 2417) {
	   mn = "경영학과";
   } else if(value2 == 2441) {
	   mn = "경제학과";
   } else if(value2 == 2582) {
	   mn = "무역학과";
   } else if(value2 == 2953) {
	   mn = "금융학과";
   } else if(value2 == 4301) {
	   mn = "회계/세무학과";
   } else if(value2 == 1409) {
	   mn = "국악과";
   } else if(value2 == 1424) {
	   mn = "공예학과";
   } else if(value2 == 1439) {
	   mn = "미술학과";
   } else if(value2 == 1449) {
	   mn = "성악과";
   } else if(value2 == 1466) {
	   mn = "무용학과";
   } else if(value2 == 1484) {
	   mn = "작곡과";
   } else if(value2 == 1513) {
	   mn = "음악학과";
   } else if(value2 == 1524) {
	   mn = "체육학과";
   } else if(value2 == 1602) {
	   mn = "사진학과";
   } else if(value2 == 1626) {
	   mn = "연극영화과";
   } else if(value2 == 1640) {
	   mn = "실용음악과";
   } else if(value2 == 2174) {
	   mn = "간호학과";
   } else if(value2 == 2198) {
	   mn = "약학과";
   } else if(value2 == 4751) {
	   mn = "의생명과학과";
   } 
   console.log(yourSelect);
   console.log(yourSelect2);
   
   
   console.log(value);
   console.log(value2);
   console.log(mbn);
   console.log(mn);
   var param = "Major_Big_Code="+ value +"&"+"Major_Big_Name="+ mbn +"&"+"Major_Code="+ value2 +"&"+"Major_Name="+mn;
   
   sendRequest(content_callback,"employmentnext", "get", param);
   console.log(param);
}
function content_callback() {
   var result = document.getElementById("emplinfo");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}
    
function content1(var1) {
   var1= var1.replace(/&/g,"%26").replace(/\+/g,"%2B");
   var param = "url=" + var1;
   sendRequest(content_callback1,"employmentnext2", "get", param);
}
function content_callback1() {
   var result = document.getElementById("coninfo_detail");
   if(httpRequest.readyState == 4) { 
      if(httpRequest.status == 200) { 
         
      var data = httpRequest.responseText;
      result.innerHTML = data;
      
      } else result.innerHTML = "Error!";
   } else result.innerHTML = "ErrorCode : " + httpRequest.readyState;
}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
  <title>
    [유일대]
  </title>
  <%@ include file = "../bootstrap/guest_bootstrap2.jsp" %>
  <script>
function addressSearch() {
	new daum.Postcode({
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
</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<body class="dark-edition">
  <div class="wrapper ">
	<%@ include file = "../include/professor_sidebar.jsp" %>


    <div class="main-panel">
      
      <%@ include file = "../include/professor_header.jsp" %>
      
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">${profile.get("NAME")}님의 정보</h4>
                </div>
                <div class="card-body">
                  <form action = "${professor}myPageModify">
                    <div class="row" style="margin:5px 0;">
                      <div class="col-md-4">
                        <div class="form-group">
                          <p>교번</p>                        	
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${profile.get('ID').substring(1)}">
                        </div>
                      </div>
                      
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>이름</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${profile.get('NAME')}">
                        </div>
                      </div>
                      
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>영문이름</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${profile.get('ENG_NAME')}">
                        </div>
                      </div>
                      
                    </div>
                    <div class="row" style="margin:5px 0;" style="height: 45px; margin-top: 0px;">
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>전화번호</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" name = "tel" value = "${profile.get('TEL').substring(0,3)}-${profile.get('TEL').substring(3,7)}-${profile.get('TEL').substring(7,11)}">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>전공</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${profile.get('M_NAME')}">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>직책</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${profile.get('POSITION')}">
                        </div>
                      </div>
                      </div>
                      <div class="row" style="margin:5px 0;" >
                       	<div class="col-md-6">
	                        <div class="form-group">
	                          <p>이메일</p>
	                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" name = "email" value = "${profile.get('EMAIL')}">
	                        </div>
	                      </div>
	                      <div class="col-md-6">
	                        <div class="form-group">
	                          <p>생년월일</p>
	                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" readonly value = "${Integer.toString(profile.get('JUMIN1')).substring(0,2)}/${Integer.toString(profile.get('JUMIN1')).substring(2,4)}/${Integer.toString(profile.get('JUMIN1')).substring(4,6)}">
	                        </div>
	                      </div>
                      </div>
                      <div class="row" style="margin:5px 0;">
                       <div class="col-md-12">
                        <div class="form-group">
                          <p>집주소</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" name = "address" value = "${profile.get('ADDRESS')}">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <button type="button" class="btn btn-primary pull-left" onclick="addressSearch();" style="width:70px; height:30px; padding:0px;">주소찾기</button>
                        </div>
                      </div>
                      </div>
                      <div class="row" style="margin:5px 0;">
                       <div class="col-md-12">
                        <div class="form-group">
                          <p>상세주소</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" name = "de_address" value = "${profile.get('DE_ADDRESS')}">
                        </div>
                      </div>
                      </div>
                   
                    <button type="submit" class="btn btn-primary pull-right">정보 수정</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <img class="img" src="${pro_photo}${profile.get('PHOTO')}" />
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="card-category">${profile.get('POSITION')} / ${profile.get('M_NAME')}</h6>
                  <h4 class="card-title" style = "color:black;">${profile.get('NAME')}</h4>
                  <a href="#" class="btn btn-primary btn-round">사진수정</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
 <%@ include file = "../bootstrap/guest_bootstrap_js2.jsp" %>
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress + " / "; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수
	
			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
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
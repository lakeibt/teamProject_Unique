<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
  <title>
    [유일대]
  </title>
  <%@ include file = "../bootstrap/guest_bootstrap2.jsp" %>
</head>

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
                    <div class="row" style="margin:20px 0;">
                      <div class="col-md-4">
                        <div class="form-group">
                          <p>교번</p>                        	
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('ID').substring(1)}">
                        </div>
                      </div>
                      
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>이름</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('NAME')}">
                        </div>
                      </div>
                      
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>영문이름</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('ENG_NAME')}">
                        </div>
                      </div>
                      
                    </div>
                    <div class="row" style="margin:20px 0;" style="height: 45px; margin-top: 0px;">
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>전화번호</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('TEL')}">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>전공</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('M_NAME')}">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <p>직책</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('POSITION')}">
                        </div>
                      </div>
                      </div>
                      <div class="row" style="margin:20px 0;" >
	                      <div class="col-md-6">
	                        <div class="form-group">
	                          <p>생년월일</p>
	                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('JUMIN1')}">
	                        </div>
	                      </div>
	                       <div class="col-md-6">
	                        <div class="form-group">
	                          <p>이메일</p>
	                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('EMAIL')}">
	                        </div>
	                      </div>
                      </div>
                      <div class="row" style="margin:20px 0;">
                       <div class="col-md-12">
                        <div class="form-group">
                          <p>집주소</p>
                          <input type="text" class="card" style="height: 45px; margin-top: 0px;" value = "${profile.get('ADDRESS')}">
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
                  <a href="#pablo" class="btn btn-primary btn-round">사진수정</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
 <%@ include file = "../bootstrap/guest_bootstrap_js2.jsp" %>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/setting.jsp" %>
<!DOCTYPE html>
<html>

<head>
  <title>
    [유일대]
  </title>
  <%@ include file = "../bootstrap/guest_bootstrap2.jsp" %>
  <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet"> <!--load all styles -->
</head>

<body class="dark-edition">
  <div class="wrapper ">
	<%@ include file = "../include/professor_sidebar.jsp" %>


    <div class="main-panel">
      
      <%@ include file = "../include/professor_header.jsp" %>
      
      <div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-2"></div>
            <div class="col-md-8">
              <div class="card">
                <div class="card-body">
                    <div class="row" style="margin:0px 10px;">
                      <div class="col-md-12">
                        <div class="form-group">
                         	<h3>강의1</h3>                        	
                        </div>
                      </div>
                    </div>
                    <div class="row" style="margin:0px 10px;">
                      <div class="col-md-12">
                        <div class="form-group">
                          <i class="material-icons">access_time</i><p style="display: inline-block;">월요일 1,2</p>
                          <i class="material-icons">person</i><p style="display: inline-block;">25/30</p>
                        </div>
                       </div>	                      
                    </div>
                   
                    <button type="button" onclick="${professor}course_register" class="btn btn-primary pull-right">수업 관리</button>
                    <div class="clearfix"></div>
                </div>
              </div>
              
              <div class="card">
                <div class="card-body">
                    <div class="row" style="margin:0px 10px;">
                      <div class="col-md-12">
                        <div class="form-group">
                         	<h3>강의2</h3>                        	
                        </div>
                      </div>
                    </div>
                    <div class="row" style="margin:0px 10px;">
                      <div class="col-md-12">
                        <div class="form-group">
                          <i class="material-icons">access_time</i><p style="display: inline-block;">화요일 1,2</p>
                          <i class="material-icons">person</i><p style="display: inline-block;">25/30</p>
                        </div>
                       </div>	                      
                    </div>
                   
                    <button type="button" onclick="${professor}course_register" class="btn btn-primary pull-right">수업 관리</button>
                    <div class="clearfix"></div>
                </div>
              </div>
              
            </div>
            <div class="col-md-2"></div>
          </div>
        </div>
      </div>
      
    
    </div>
  </div>
  
 <%@ include file = "../bootstrap/guest_bootstrap_js2.jsp" %>
</body>

</html>
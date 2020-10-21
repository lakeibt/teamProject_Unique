<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function proBoard(){
   var url ="http://192.168.219.120:3000/proboard/${sessionScope.memId}/${sessionScope.name}";
   var setting = 'height=800, width=1000';
   window.open(url ,'한마디게시판', setting);
}

</script>
</head>
<body>
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="${assets}img/sidebar-2.jpg">
      <div class="logo"><a href="${professor}main" class="simple-text logo-normal">
          Creative Tim
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="${professor}main">
              <i class="material-icons" style = "color:white;">dashboard</i>
              <p style = "color:white; font-size:18px;">Home</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}myPage">
              <i class="material-icons" style = "color:white;">person</i>
              <p style = "color:white; font-size:18px;">내정보</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}course">
              <i class="material-icons" style = "color:white;">library_books</i>
              <p style = "color:white; font-size:18px;">강의관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}score">
              <i class="material-icons" style = "color:white;">content_paste</i>
              <p style = "color:white; font-size:18px;">성적관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" onclick="proBoard();">
              <i class="material-icons" style = "color:white;">content_paste</i>
              <p style = "color:white; font-size:18px;">한마디게시판</p>
            </a>
          </li>
          
        </ul>
        <ul class="nav" style="margin-top: 650px;">
        <li class="nav-item ">
            <a class="nav-link" href="${guest}logout">
              <i class="material-icons">power_settings_new</i>
              <p>로그아웃</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
</body>
</html>
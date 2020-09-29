<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
              <i class="material-icons">dashboard</i>
              <p>Home</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}myPage">
              <i class="material-icons">person</i>
              <p>내정보</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}course">
              <i class="material-icons">library_books</i>
              <p>강의관리</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="${professor}score">
              <i class="material-icons">content_paste</i>
              <p>성적관리</p>
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
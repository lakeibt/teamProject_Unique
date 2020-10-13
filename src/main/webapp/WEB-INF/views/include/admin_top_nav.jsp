<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<div class="nav_menu">
	<div class="nav toggle">
		<a id="menu_toggle"><i class="fa fa-bars"></i></a>
	</div>
	<nav class="nav navbar-nav">
		<ul class=" navbar-right">
			<li class="nav-item dropdown open" style="padding-left: 15px;">
				<a href="javascript:;" class="user-profile dropdown-toggle"
				aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
				aria-expanded="false">
				<img src="${adm_photo}${sessionScope.photo}" alt="">${sessionScope.name}
				</a>
				<div class="dropdown-menu dropdown-usermenu pull-right"
					aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="${guest}logout"><i
						class="fa fa-sign-out pull-right"></i> Log Out</a>
				</div>
			</li>
		</ul>
	</nav>
</div>
</body>
</html>
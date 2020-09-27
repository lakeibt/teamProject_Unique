<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
	<div class="container-fluid">
		<div class="collapse navbar-collapse justify-content-end">
			<ul class="navbar-nav">
				<li class="nav-item dropdown">
					<a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" 
					   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					   	<i class="material-icons"><img src = "${img}paper.png" style = "width:20px;"></i>
						<span class="notification">5</span>
						<p class="d-lg-none d-md-block">Some Actions</p>
					</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="javascript:void(0)">Mike John responded to your email</a>
						<a class="dropdown-item" href="javascript:void(0)">You have 5 new tasks</a>
						<a class="dropdown-item" href="javascript:void(0)">You're now friend with Andrew</a>
						<a class="dropdown-item" href="javascript:void(0)">Another Notification</a>
						<a class="dropdown-item" href="javascript:void(0)">Another One</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- End Navbar -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance | <%=request.getAttribute("page-title") %></title>
<link rel="stylesheet" href="<%=getPath("/assets/css/style.css")%>" />
<link rel="stylesheet" href="<%=getPath("/assets/css/reset.css")%>" />
</head>
<body>
	<jsp:useBean id="loginInfo" class="com.jdc.balance.security.LoginUser"
		scope="session" />
	<jsp:useBean id="content" class="java.lang.String" scope="request" />
	<%
	if (loginInfo.isLogin()) {
	%>

	<!-- Employee Template -->
	<main class="employee">
		<header class="container">
			<h1 class="brand-logo">
				<img src="<%=getPath("/assets/images/img_logo.png")%>"
					alt="Balance Management">
			</h1>

			<nav>
				<a href="<%=getPath("/employee/home") %>" class='<%=getActiveClass(request, "home") %>'>
					<img src="<%=getSvg("home") %>" alt="Login" class="icon icn-svg" />
					Home
				</a>
				<a href="<%=getPath("/employee/transaction/search?type=Income") %>" class='<%=getActiveClass(request, "incomes") %>'>
					<img src="<%=getSvg("folder-plus") %>" alt="Login" class="icon icn-svg" />
					Incomes
				</a>
				<a href="<%=getPath("/employee/transaction/search?type=Expense") %>" class='<%=getActiveClass(request, "expenses") %>'>
					<img src="<%=getSvg("folder-minus") %>" alt="Login" class="icon icn-svg" />
					Expenses
				</a>
				<% if(loginInfo.isManager()) { %>
					<a href="<%=getPath("/manager/balance") %>" class='<%=getActiveClass(request, "reports") %>'>
						<img src="<%=getSvg("stats-dots") %>" alt="Login" class="icon icn-svg" />
						Balance Report
				</a> 
					<a href="<%=getPath("/manager/employee/search") %>" class='<%=getActiveClass(request, "employees") %>'>
						<img src="<%=getSvg("users") %>" alt="Login" class="icon icn-svg" />
						Employee
				</a> 
				<% }%>
				<a href="<%=getPath("/logout")%>">
					<img src="<%=getSvg("exit") %>" alt="Login" class="icon icn-svg" />
					Logout
				</a>
			</nav>
		</header>
		<div class="content-container">
			<aside>
				<!-- Profile Image -->
				<img class="profile-img" src="<%=getPath("/assets/images/" + loginInfo.getProfileImage()) %>" alt="Profile Image">
				<!-- User Information -->
				<div class="user-info">
					<div class="user-name">
						<jsp:getProperty property="name" name="loginInfo"/>
					</div>
					<div class="user-role">
						<jsp:getProperty property="role" name="loginInfo"/>
					</div>
					<div class="user-actions">
						<a onclick="openUploadFile(); return false;" class="icn-txt">
							<img src="<%=getSvg("upload") %>" alt="" class="icon icn-svg2" />	
							Upload Photo
						</a>
						<a href="<%=getPath("/employee/edit-profile") %>" class="icn-txt">
							<img src="<%=getSvg("pencil") %>" alt="" class="icon icn-svg2" />	
							Edit Profile
						</a>
						<a href="<%=getPath("/employee/change-pass") %>" class="icn-txt">
							<img src="<%=getSvg("key") %>" alt="" class="icon icn-svg2" />						
							Change Password
						</a>
					</div>	
				</div>	
				<form id="profileImageForm" action="<%=getPath("/employee/upload-image")%>" method="post" enctype="multipart/form-data">
					<input accept="image/jpg" id="profileImageInput" onchange="uploadImage()" type="file" name="profileImage" />
				</form>		
				<script src="<%=getPath("/assets/js/side-bar.js") %>"></script>
			</aside>
			
			<!-- Employee Home -->
			<section class="page-content">
				<div class="view-title">
					<%=request.getAttribute("view-title") %>
				</div>
				<jsp:include page="<%=content%>"></jsp:include>
			</section>
		</div>
	</main>
	<%
	} else {
	%>

	<!-- Anonymous Template -->
	<main class="anonymous">
		<!-- Anonymous Template -->
		<jsp:include page="<%=content%>"></jsp:include>
	</main>

	<%
	}
	%>
</body>
</html>
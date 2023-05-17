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
				<a href="<%=getPath("/employee/home") %>" class='<%=getActiveClass(request, "home") %>'>Home</a>
				<a href="<%=getPath("/employee/transaction/search?type=Income") %>" class='<%=getActiveClass(request, "incomes") %>'>Incomes</a>
				<a href="<%=getPath("/employee/transaction/search?type=Expense") %>" class='<%=getActiveClass(request, "expenses") %>'>Expenses</a>
				<% if(loginInfo.isManager()) { %>
					<a href="<%=getPath("/manager/balance") %>" class='<%=getActiveClass(request, "reports") %>'>Balance Report</a> 
					<a href="<%=getPath("/manager/employee/search") %>" class='<%=getActiveClass(request, "employees") %>'>Employee</a> 
				<% }%>
				<a href="<%=getPath("/logout")%>">Logout</a>
			</nav>
		</header>
		<div class="content-container">
			<aside>
				<!-- Profile Image -->
				<img class="profile-img" src="<%=getPath("/assets/images/img_profile_male.png") %>" alt="Profile Image">
				<!-- User Information -->
				<ul class="user-info">
					<li class="user-name">
						<jsp:getProperty property="name" name="loginInfo"/>
					</li>
					<li class="user-role">
						<jsp:getProperty property="role" name="loginInfo"/>
					</li>
					<li class="user-actions">
						<a href="#">Upload Photo</a>
						<a href="<%=getPath("/employee/edit-profile") %>">Edit Profile</a>
						<a href="<%=getPath("/employee/change-pass") %>">Change Password</a>
					</li>
				</ul>			
				<!-- User Menu -->
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
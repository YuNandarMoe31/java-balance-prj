<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance | Page</title>
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
				<a href="#">Balance Report</a> 
				<a href="#">Transactions</a>
				<a href="#">Employee</a> 
				<a href="<%=getPath("/logout")%>">Logout</a>
			</nav>
		</header>
		<div class="content-container">
			<aside>
				<p>Aside</p>
				<!-- Profile Image -->

				<!-- User Information -->

				<!-- User Menu -->
			</aside>
			<!-- Employee Home -->
			<jsp:include page="<%=content%>"></jsp:include>
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

	<!-- To Get Absolute Path -->
	<%!String getPath(String path) {
		return getServletContext().getContextPath().concat(path);
	}%>

</body>
</html>
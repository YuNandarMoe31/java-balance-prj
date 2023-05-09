<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance | Page</title>
<%
String styleCss = application.getContextPath().concat("/assets/css/style.css");
%>
<link rel="stylesheet" href="<%=styleCss %>" />
</head>
<body>
	<jsp:useBean id="loginInfo" class="com.jdc.balance.security.LoginUser"
		scope="session" />
	<jsp:useBean id="content" class="java.lang.String" scope="request" />
	<%
	if (loginInfo.isLogin()) {
	%>
	<!-- Employee Template -->
	<header>
		<h1 class="brand-logo">Balance</h1>

		<nav></nav>
	</header>

	<main class="employee">
		<aside>
			<!-- User Profile -->
		</aside>
		<jsp:include page="<%=content%>"></jsp:include>
	</main>
	<%
	} else {
	%>
	<main class="anonymous">
		<!-- Anonymous Template -->
		<jsp:include page="<%=content%>"></jsp:include>
	</main>

	<%
	}
	%>



</body>
</html>
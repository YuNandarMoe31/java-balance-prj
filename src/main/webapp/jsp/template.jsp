<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Template</title>
</head>
<body>
	<jsp:useBean id="loginInfo" type="com.jdc.balance.security.LoginUser"
		scope="session" />
	<jsp:useBean id="content" type="java.lang.String" scope="request" />
	<%
	if (loginInfo.isLogin()) {
	%>
	<!-- Employee Template -->
	<header>
		<h1 class="brand-logo">
			Balance
		</h1>
		
		<nav>
		
		</nav>
	</header>
	<aside>
		<!-- User Profile -->
	</aside>
	<main>
		<jsp:include page="<%=content%>"></jsp:include>
	</main>
	<%
	} else {
	%>
	<!-- Anonymous Template -->
	<jsp:include page="<%=content%>"></jsp:include>
	<%
	}
	%>



</body>
</html>
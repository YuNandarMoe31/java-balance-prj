<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<jsp:useBean id="loginInfo" scope="session" type="com.jdc.balance.security.LoginUser" />
	
	<!-- Error Message -->
	<jsp:include page="/jsp/includes/error-message.jsp" />	
	
	<form method="post" class="card-form">
		<label>Employee Code</label> 
		<input type="text" name="code" value="<%= loginInfo.profile().getCode() %>" readonly="readonly">
		
		<label>Employee Name</label> 
		<input type="text" name="name" value="<%= loginInfo.profile().getName() %>" placeholder="Enter Your Name">
		
		<label>Email</label> 
		<input type="email" name="email" value="<%= loginInfo.profile().getEmail() %>" placeholder="Enter Your Email">
		
		<label>Phone Number</label> 
		<input type="text" name="phone" value="<%= loginInfo.profile().getPhone() %>" placeholder="Enter Your Phone Number">

		<button type="submit" class="icn-txt">
			<img src="<%=getSvg("floppy-disk") %>" alt="Login" class="icon icn-svg" />
			Save
		</button>
	</form>
</div>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<!-- Error Message -->
	<jsp:include page="/jsp/includes/error-message.jsp" />
		
	<form method="post" class="card-form">
		<label>Original Password</label> 
		<input type="password" name="old-pass" placeholder="Enter Password" required>
	
		<label>New Password</label> 
		<input type="password" name="new-pass" placeholder="Enter New Password" required>
	
		<label>Confirm Password</label> 
		<input type="password" name="confirm-pass" placeholder="Enter New Password Again" required>
		
		<button type="submit" class="icn-txt">
			<img src="<%=getSvg("floppy-disk") %>" alt="Login" class="icon icn-svg" />		
			Save
		</button>
	</form>
</div>
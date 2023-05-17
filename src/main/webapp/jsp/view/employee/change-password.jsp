<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<form method="post" class="card-form">
		<label>Original Password</label> 
		<input type="password" name="old-pass" placeholder="Enter Password">
	
		<label>New Password</label> 
		<input type="password" name="new-pass" placeholder="Enter New Password">
	
		<label>Confirm Password</label> 
		<input type="password" name="confirm-pass" placeholder="Enter New Password Again">
		
		<button type="submit">Save</button>
	</form>
</div>
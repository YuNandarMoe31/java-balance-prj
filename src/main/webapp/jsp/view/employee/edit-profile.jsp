<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<form method="post" class="card-form">
		<label>Employee Code</label> 
		<input type="text" name="code" value="EMP001" readonly="readonly">
		
		<label>Employee Name</label> 
		<input type="text" name="name" placeholder="Enter Your Name">
		
		<label>Email</label> 
		<input type="email" name="email" placeholder="Enter Your Email">
		
		<label>Phone Number</label> 
		<input type="number" name="phone" placeholder="Enter Your Phone Number">

		<button type="submit">Save</button>
	</form>
</div>
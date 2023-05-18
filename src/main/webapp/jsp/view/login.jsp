<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<section class="card-bg"></section>
<section class="card">
	<div class="card-inner">
		<h3 class="card-title">		
			Member Login
		</h3>
		
		<%
			String message = (String)request.getAttribute("message");
			if(null != message && !message.isEmpty()) {
		%>
			<p class="message"><%=message %></p>
			
		
		<% } %>
		
		<form action="login" method="post" class="card-form">
			<!-- Employee Code -->
			<label>Login Id</label> 
			<input name="loginId" placeholder="Enter Employee Code" required>

			<!-- Password -->
			<label>Password</label> 
			<input name="password" type="password" placeholder="Enter Password" required>

			<!-- Login Button -->
			<button type="submit" class="icn-txt">
				<img src="<%=getSvg("enter") %>" alt="Login" class="icon icn-svg" />
				Login
			</button>
		</form>
	</div>
</section>
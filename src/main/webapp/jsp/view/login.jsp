<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="card-bg"></section>
<section class="card">
	<div class="card-inner">
		<h3 class="card-title">Member Login</h3>
		<form action="login" method="post" class="card-form">
			<!-- Employee Code -->
			<label>Login Id</label> 
			<input name="loginId" placeholder="Enter Employee Code" required>

			<!-- Password -->
			<label>Password</label> 
			<input name="password" type="password" placeholder="Enter Password" required>

			<!-- Login Button -->
			<button type="submit">Login</button>
		</form>
	</div>
</section>
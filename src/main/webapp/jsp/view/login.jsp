<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="card-bg"></section>
<section class="card">
	<div class="card-inner">
		<h3 class="card-title">Member Login</h3>
		<form action="login" method="post" class="card-form">
			<!-- Email Address -->
			<label>Email</label> 
			<input type="email" placeholder="Enter Email Address" required>

			<!-- Password -->
			<label>Password</label> 
			<input type="password" placeholder="Enter Password" required>

			<!-- Login Button -->
			<button type="submit">Login</button>
		</form>
	</div>
</section>
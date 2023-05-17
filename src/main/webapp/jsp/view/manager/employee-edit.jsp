<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<form method="post" class="card-form">
		<div class="employee-edit row">
			<div class="form-edit">
				<label>Employee Code</label> 
				<input type="text" name="code" value="EMP001" readonly="readonly">
			</div>
			
			<div class="form-group">
				<label>Role</label> 
				<select name="role">
					<option value="All">All</option>
					<option value="Employee">Employee</option>
					<option value="Manager">Manager</option>
				</select>
			</div>
		</div>
		
		<label>Employee Name</label> 
		<input type="text" name="name" placeholder="Enter Your Name">
		
		<label>Email</label> 
		<input type="email" name="email" placeholder="Enter Your Email">
		
		<label>Phone Number</label> 
		<input type="number" name="phone" placeholder="Enter Your Phone Number">
		
		<div class="row">
			<div class="form-group">
				<label>Entry Date</label> 
				<input type="date" name="registrationDate" placeholder="Entry Date">
			</div>
		
			<div class="form-group">
				<label>Retire Date</label> 
				<input type="date" name="retireDate" placeholder="Retire Date">
			</div>
		</div>
		
		<button type="submit">Save</button>
	</form>
</div>
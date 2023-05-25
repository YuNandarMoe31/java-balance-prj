<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="view-content">
	<form method="post" class="card-form">
		<jsp:useBean id="employee" scope="request" class="com.jdc.balance.model.domain.Employee" />
		<div class="employee-edit row">
			
			<div class="form-edit">
				<label>Employee Code</label> 
				<input type="text" name="code" readonly="readonly" placeholder="EMP***" value="<%= getProperty(employee.getCode()) %>">
			</div>
			
			<div class="form-group">
				<label>Role</label> 
				<select name="role" >
					<option value="Employee">Employee</option>
					<option value="Manager">Manager</option>
				</select>
			</div>
		</div>
		
		<label>Employee Name</label> 
		<input type="text" name="name" placeholder="Enter Your Name" value="<%= getProperty(employee.getName()) %>">
		
		<label>Email</label> 
		<input type="email" name="email" placeholder="Enter Your Email" value="<%= getProperty(employee.getEmail()) %>">
		
		<label>Phone Number</label> 
		<input type="text" name="phone" placeholder="Enter Your Phone Number" value="<%= getProperty(employee.getPhone()) %>">
		
		<div class="row">
			<div class="form-group">
				<label>Entry Date</label> 
				<input type="date" name="registrationDate" placeholder="Entry Date" value="<%= getDateString(employee.getRegistrationDate()) %>">
			</div>
		
			<div class="form-group">
				<label>Retire Date</label> 
				<input type="date" name="retireDate" placeholder="Retire Date" value="<%= getDateString(employee.getRetireDate()) %>">
			</div>
		</div>
		
		<button type="submit" class="icn-txt">
			<img src="<%=getSvg("floppy-disk") %>" alt="Login" class="icon icn-svg" />
			Save
		</button>
	</form>
</div>
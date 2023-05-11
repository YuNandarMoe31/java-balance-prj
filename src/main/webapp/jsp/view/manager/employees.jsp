<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="list-content">
	<form class="form-inline">
		<div class="form-group">
			<label>Role</label> 
			<select name="role">
				<option value="All">All</option>
				<option value="Employee">Employee</option>
				<option value="Manager">Manager</option>
			</select>
		</div>

		<div class="form-group">
			<label>Name</label> 
			<input type="text" name="name" placeholder="Search Name">
		</div>
		
		<button class="btn">Search</button>
        <a href="#" class="btn">Add New</a>
	</form>
	<table class="employee-list">
		<thead>
			<tr>
				<th>Code</th>
				<th>Name</th>
				<th>Role</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Registration</th>
				<th>Retire</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i=0; i<10; i++) { %> 
           <tr>
                <td>EMP001</td>
                <td>Mg Mg</td>
                <td>Manager</td>
                <td>mgmg@gmail.com </td>
                <td>091234564</td>
                <td>2018-01-01</td>
                <td></td>
           </tr>
           <% } %>
		</tbody>
	</table>

</div>
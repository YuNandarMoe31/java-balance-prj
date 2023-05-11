<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="view-content">
	<form action="" class="form-inline">
		<div class="form-group">
			<label>Role</label> <select name="role">
				<option value="All">All</option>
				<option value="Employee">Employee</option>
				<option value="Manager">Manager</option>
			</select>
		</div>

		<div class="form-group">
			<label>Name</label> <input type="text" name="name"
				placeholder="Search Name">
		</div>
		
		<button>Search</button>
        <a href="#">Add New</a>
	</form>
	<table>
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

		</tbody>
	</table>

</div>
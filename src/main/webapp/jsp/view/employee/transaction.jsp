<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="list-content">
	<form class="form-inline">
		<div class="form-group">
			<label>Employee</label> 
			<input type="text" name="name" placeholder="Employee Name">	
		</div>
		
		<div class="form-group">
			<label>Employee</label> 
			<select name="category">
				<option value="All">All</option>
			</select>	
		</div>
		
		<div class="form-group">
			<label>Date From</label> 
			<input type="date" name="from" placeholder="Search From">
		</div>
		
		<div class="form-group">
			<label>Date To</label> 
			<input type="date" name="to" placeholder="Search To">
		</div>
		
		<button class="btn">Search</button>
		<a href="#" class="btn">Add New</a>
	</form>
	
	<table class="employee-list">
		<thead>
			<tr>
				<th>Date</th>
				<th>Employee</th>
				<th>Category</th>
				<th>Items</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i=0; i<10; i++) { %> 
           <tr>
                <td>2023-05-11</td>
                <td>Mg Mg</td>
                <td>Java Basic</td>
                <td class="digit">5</td>
                <td class="digit">500,000</td>
           </tr>
           <% } %>
		</tbody>
	</table>
</div>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="list-content">
	<form class="form-inline">
		<div class="form-group">
			<label>Category</label> 
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
				<th>Category</th>
				<th>Employee</th>
				<th>Income</th>
				<th>Expense</th>
				<th>Balance</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i=0; i<10; i++) { %> 
           <tr>
                <td>2023-05-11</td>
                <td>Java Basic</td>
                <td>Mg Mg</td>
                <td class="digit">100,000</td>
                <td class="digit"></td>
                <td class="digit">2,000,000</td>
           </tr>
           <% } %>
		</tbody>
	</table>
</div>
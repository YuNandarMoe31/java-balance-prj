<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="list-content">
	<form class="form-inline">
		<div class="form-group">
			<label>Date From</label> 
			<input type="date" name="from" placeholder="Search From">
		</div>
		
		<div class="form-group">
			<label>Date To</label> 
			<input type="date" name="to" placeholder="Search To">
		</div>
		
		<div class="form-group">
			<label>Category</label> 
			<input type="text" name="category" placeholder="Search Category">
		</div>
		
		
		<button class="btn">Search</button>
		<a href="<%=getPath("/employee/transaction/edit") %>" class="btn">Add New</a>
	</form>
	
	<table class="employee-list">
		<thead>
			<tr>
				<th>Date</th>
				<th>Employee</th>
				<th>Category</th>
				<th>Approved</th>
				<th>Items</th>
				<th>Amount</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i=0; i<10; i++) { %> 
           <tr>
                <td>
                	<a href="<%=getPath("/employee/transaction/details") %>">2023-05-12</a>
                </td>
                <td>Mg Mg</td>
                <td>Java Basic</td>
                <td>Yes</td>
                <td class="digit">5</td>
                <td class="digit">500,000</td>
           </tr>
           <% } %>
		</tbody>
	</table>
	
	<!-- To Get Absolute Path -->
	<%!
		String getPath(String path) {
			return getServletContext().getContextPath().concat(path);
	}%>
</div>
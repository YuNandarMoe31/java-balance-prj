<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
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
		
		<button class="btn icn-txt">
			<img src="<%=getSvg("search") %>" alt="Login" class="icon icn-svg" />
			Search
		</button>
		<a href="#" class="btn icn-txt">
			<img src="<%=getSvg("plus") %>" alt="Login" class="icon icn-svg2" />
			Add New
		</a>
	</form>
	
	<table class="employee-list">
		<thead>
			<tr>
				<th>Date</th>
				<th>Category</th>
				<th>Employee</th>
				<th class="digit">Income</th>
				<th class="digit">Expense</th>
				<th class="digit">Balance</th>
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
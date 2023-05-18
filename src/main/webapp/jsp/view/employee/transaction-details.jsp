<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<!-- Header Inform -->
<div class="list-content">
	<div class="transaction-list">
		<div class="form-group">
			<label>Date</label> 
			<input type="text" disabled="disabled" value="202108-001">
		</div>
		<div class="form-group">
			<label>Category</label> 
			<input type="text" disabled="disabled" value="Stationary">
		</div>	
		<div class="form-group">
			<label>Items</label> 
			<input type="text" disabled="disabled" value="3" class="digit">
		</div>
		<div class="form-group">
			<label>Employee</label> 
			<input type="text" disabled="disabled" value="Thidar">
		</div>
		<div class="form-group">
			<label>Status</label> 
			<input type="text" disabled="disabled" value="Not Approve">
		</div>
		<div class="form-group">
			<label>Total</label> 
			<input type="text" disabled="disabled" value="35,000" class="digit">
		</div>
	</div>
	
	<!-- Actions -->
	<div class="actions digit">
		<a href="#" class="btn">Edit</a>
		<a href="#" class="btn">Approve</a>
	</div>
	<!-- Details Information -->
	<h3>Expense Details</h3>
	<table class="employee-list">
		<thead>
			<tr>
				<th>Item</th>
				<th>Unit Price</th>
				<th>Quantity</th>
				<th>Total</th>
				<th>Remark</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < 5; i++) {
			%>
			<tr>
				<td>Printing Paper</td>
				<td class="digit">2,800</td>
				<td class="digit">3</td>
				<td class="digit">8,400</td>
				<td>Some Remark Message</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>
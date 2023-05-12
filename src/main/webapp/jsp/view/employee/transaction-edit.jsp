<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header Inform -->
<div class="list-content transaction-page">
	<div class="transaction-list">
		<div class="form-group">
			<label>Date</label> 
			<input type="date">
		</div>
		<div class="form-group">
			<label>Category</label> 
			<input type="text" placeholder="Enter Category" required>
		</div>	
		<div class="form-group">
			<label>Items</label> 
			<input type="text" value="0" class="digit">
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
			<input type="text" disabled="disabled" value="0" class="digit">
		</div>
	</div>
	
	<!-- Actions -->
	<div class="actions digit">
		<a href="#" class="btn">Add Details</a>
		<a href="#" class="btn">Save</a>
	</div>
	<!-- Details Information -->
	<h3>Expense Details</h3>
	<table class="employee-list">
		<thead>
			<tr>
				<th>Item</th>
				<th>Remark</th>
				<th>Unit Price</th>
				<th>Quantity</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="form-group">
					<input type="text" placeholder="Enter Item Name">
				</td>
				<td class="form-group">
					<input type="text" placeholder="Enter Reason">
				</td>
				<td class="form-group">
					<input type="number" placeholder="1,000">
				</td>
				<td class="form-group">
					<input type="number" placeholder="3">
				</td>
				<td class="form-group">
					<input type="number" placeholder="35,000">
				</td>
			</tr>
		</tbody>
	</table>
</div>
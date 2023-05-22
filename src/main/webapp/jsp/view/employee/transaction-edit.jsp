<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<script src="<%=getPath("/assets/js/transaction-edit.js") %>"></script>

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
		<a href="#" onclick="addDetails(); return false;" class="btn">
			<img src="<%=getSvg("plus") %>" alt="Login" class="icon icn-svg2" />
			Add Details
		</a>
		<a href="#" class="btn">
			<img src="<%=getSvg("checkmark") %>" alt="Login" class="icon icn-svg2" />
			Approve
		</a>
	</div>
	<!-- Details Information -->
	<h3>Expense Details</h3>
	<table class="employee-list">
		<thead>
			<tr>
				<th>Item</th>
				<th>Remark</th>
				<th class="digit">Unit Price</th>
				<th class="digit">Quantity</th>
				<th class="digit">Total</th>
			</tr>
		</thead>
		<tbody id="detailsWrapper">
			<tr>
				<td class="form-group">
					<input type="text" placeholder="Enter Item Name">
				</td>
				<td class="form-group">
					<input type="text" placeholder="Enter Reason">
				</td>
				<td class="form-group">
					<input type="number" placeholder="">
				</td>
				<td class="form-group">
					<input type="number" placeholder="">
				</td>
				<td class="form-group">
					<input type="number" placeholder="">
				</td>
			</tr>
		</tbody>
	</table>
</div>
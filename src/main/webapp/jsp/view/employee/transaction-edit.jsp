<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<script src="<%=getPath("/assets/js/transaction-edit.js") %>"></script>
<jsp:useBean id="loginInfo" scope="session" type="com.jdc.balance.security.LoginUser" />
<!-- Header Inform -->
<div class="list-content transaction-page">
	<div class="transaction-list">
		<div class="form-group">
			<label>Date</label> 
			<input type="date" name="date">
		</div>
		<div class="form-group">
			<label>Employee</label> 
			<input type="text" disabled="disabled" value="<%= loginInfo.getName() %>">
		</div>
		<div class="form-group">
			<label>Category</label> 
			<input type="text" name="category" placeholder="Enter Category" required>
		</div>
		<div class="form-group">
			<label>Status</label> 
			<input type="text" disabled="disabled" value="Not Approve">
		</div>
		<div class="form-group">
			<label>Items</label> 
			<input type="text" name="allCount" disabled="disabled" value="0" class="digit">
		</div>
		<div class="form-group">
			<label>Total</label> 
			<input type="text" name="allTotal" disabled="disabled" value="0" class="digit">
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
					<input type="text" placeholder="Enter Remark">
				</td>
				<td class="form-group">
					<input type="number" name="price" placeholder="" value="0">
				</td>
				<td class="form-group">
					<input type="number" name="count" placeholder="" value="1">
				</td>
				<td class="form-group">
					<input type="number" name="total" placeholder="" value="0" readonly> 
				</td>
			</tr>
		</tbody>
	</table>
</div>
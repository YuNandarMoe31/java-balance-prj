<%@page import="com.jdc.balance.model.domain.TransactionClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<script src="<%=getPath("/assets/js/transaction-edit.js") %>"></script>

<jsp:useBean id="loginInfo" scope="session" type="com.jdc.balance.security.LoginUser" />
<jsp:useBean id="data" scope="request" type="com.jdc.balance.model.domain.Transaction" />

<!-- Header Inform -->
<div class="list-content transaction-page">
	<form action="<%= getPath("/employee/transaction/edit") %>" method="post">
		<input type="hidden" name="id" value="<%= data.getId() %>" />
		<input type="hidden" name="type" value="<%= data.getType().name() %>" />
		<input type="hidden" name="employeeCode" value="<%= data.getEmployee().getCode() %>" />
				
		<div class="transaction-list">
			<div class="form-group">
				<label>Date</label> 
				<input type="date" name="date" value="<%= getDateString(data.getDate()) %>" required>
			</div>
			<div class="form-group">
				<label>Employee</label> 
				<input type="text" disabled="disabled" value="<%= data.getEmployee().getName() %>">
			</div>
			<div class="form-group">
				<label>Category</label> 
				<input type="text" name="category" value="<%= getProperty(data.getCategory()) %>" placeholder="Enter Category" required>
			</div>
			<div class="form-group">
				<label>Status</label> 
				<input disabled="disabled" value="<%= data.isApproved() ? "Approved" : "Not Approved" %>">
			</div>
			<div class="form-group">
				<label>Items</label> 
				<input type="text" name="allCount" disabled="disabled" value="0" class="digit">
			</div>
			<div class="form-group">
				<label>Total</label> 
				<input name="allTotal" disabled="disabled" value="0" class="digit">
			</div>
		</div>
		
		<!-- Actions -->
		<div class="actions digit">
			<a href="#" onclick="addDetails(); return false;" class="btn">
				<img src="<%=getSvg("plus") %>" alt="Login" class="icon icn-svg2" />
				Add Details
			</a>
			<button type="submit" class="btn">
				<img src="<%=getSvg("checkmark") %>" alt="Login" class="icon icn-svg2" />
				Save
			</button>
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
				<% for(TransactionClass details : data.getDetails()) { %>
					<tr>
						<td class="form-group">
							<input type="text" name="item" value="<%= getProperty(details.getItem()) %>" placeholder="Enter Item Name">
						</td>
						<td class="form-group">
							<input type="text" name="remark" value="<%= getProperty(details.getRemark()) %>" placeholder="Enter Remark">
						</td>
						<td class="form-group">
							<input type="number" name="price" value="<%= details.getPrice() %>">
						</td>
						<td class="form-group">
							<input type="number" name="count" value="<%= details.getQuantity() %>">
						</td>
						<td class="form-group">
							<input type="number" name="total"  value="<%= details.getTotal() %>" readonly> 
						</td>
					</tr>
				<% } %>
			</tbody>
		</table>
	</form>
</div>
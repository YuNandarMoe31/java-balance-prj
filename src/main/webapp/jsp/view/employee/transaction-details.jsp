<%@page import="com.jdc.balance.model.domain.TransactionClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<jsp:useBean id="data" scope="request" type="com.jdc.balance.model.domain.Transaction" />
<jsp:useBean id="loginInfo" class="com.jdc.balance.security.LoginUser"
		scope="session" />
<!-- Header Inform -->
<div class="list-content">
	<div class="transaction-list">
		<div class="form-group">
			<label>Date</label> 
			<input type="text" disabled="disabled" value="<%=getDateString(data.getDate()) %>">
		</div>
		<div class="form-group">
			<label>Employee</label> 
			<input type="text" disabled="disabled" value="<%= data.getEmployee().getName() %>">
		</div>
		<div class="form-group">
			<label>Category</label> 
			<input type="text" disabled="disabled" value="<%= data.getCategory() %>">
		</div>	
		<div class="form-group">
			<label>Status</label> 
			<input type="text" disabled="disabled" value="<%= data.isApproved() ? "Approved" : "Not Approved" %>">
		</div>
		<div class="form-group">
			<label>Items</label> 
			<input type="text" disabled="disabled" value="<%= data.getItems() %>" class="digit">
		</div>		
		<div class="form-group">
			<label>Total</label> 
			<input type="text" disabled="disabled" value="<%= formatNumber(data.getTotal()) %> MMK" class="digit">
		</div>
	</div>
	
	<!-- Actions -->
	<div class="actions digit">
		<% if(loginInfo.isManager() || 
				(!loginInfo.isManager()) 
				&& !data.isApproved()
				&& data.ownTransaction(loginInfo.profile().getCode())) { %>
			<a href="#" class="btn">
				<img src="<%=getSvg("pencil") %>" alt="Login" class="icon icn-svg2" />		
				Edit
			</a>
		<% } %>
		
		<% if(loginInfo.isManager() && !data.isApproved()) { %>
			<a href="#" class="btn">
				<img src="<%=getSvg("checkmark") %>" alt="Login" class="icon icn-svg2" />
				Approve
			</a>
		<% } %>
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
		<tbody>
			<%
			for (int i = 0; i < data.getDetails().size(); i++) {
				TransactionClass details = data.getDetails().get(i);
			%>
			<tr>
				<td><%= details.getItem() %></td>
				<td><%= details.getRemark() %></td>
				<td class="digit"><%= formatNumber(details.getPrice()) %> MMK</td>
				<td class="digit"><%= formatNumber(details.getQuantity()) %></td>
				<td class="digit"><%= formatNumber(details.getTotal()) %> MMK</td>				
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>
<%@page import="com.jdc.balance.utils.StringUtils"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jdc.balance.model.domain.Transaction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page extends="com.jdc.balance.BaseView" %>
<div class="list-content">
	<form action="<%= getPath("/employee/transaction/search") %>" class="form-inline">
		<input type="hidden" name="type" value="<%= request.getAttribute("type") %>" />
		
		<div class="form-group">
			<label>Date From</label> 
			<input type="date" name="from" value="<%= request.getAttribute("from") %>" placeholder="Search From">
		</div>
		
		<div class="form-group">
			<label>Date To</label> 
			<input type="date" name="to" value="<%= request.getAttribute("to") %>" placeholder="Search To">
		</div>
		
		<div class="form-group">
			<label>Category</label> 
			<input type="text" name="category" value="<%= null == request.getAttribute("category") ? "" : request.getAttribute("category") %>" placeholder="Search Category">
		</div>
		
		
		<button class="btn icn-txt">
			<img src="<%=getSvg("search") %>" alt="Login" class="icon icn-svg" />
			Search
		</button>
		<a href="<%=getPath("/employee/transaction/edit?type=" + request.getParameter("type")) %>" class="btn icn-txt">
			<img src="<%=getSvg("plus") %>" alt="Login" class="icon icn-svg2" />
			Add New
		</a>
	</form>
	
	
	<table class="employee-list">
		<thead>
			<tr>
				<th>Date</th>
				<th>Employee</th>
				<th>Category</th>
				<th>Approved</th>
				<th class="digit">Items</th>
				<th class="digit">Amount</th>
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="list" scope="request" type="java.util.List<com.jdc.balance.model.domain.Transaction>" />
			<% for(Transaction data : list) { %> 
	           <tr>
	                <td>
	                	<a href="<%=getPath("/employee/transaction/details?id=" + data.getId()) %>">
	                		<%= getDateString(data.getDate()) %>
	                	</a>
	                </td>
	                <td><%= data.getEmployee().getName() %></td>
	                <td><%= data.getCategory() %></td>
	                <td><%= data.isApproved() ? "Yes" : "No" %></td>
	                <td class="digit"><%= data.getItems() %></td>
	                <td class="digit"><%= formatNumber(data.getTotal()) %> MMK</td>
	           </tr>
           <% } %> 
     
		</tbody>
	</table>

</div>
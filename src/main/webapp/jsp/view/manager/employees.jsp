<%@page import="com.jdc.balance.model.domain.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page extends="com.jdc.balance.BaseView" %>
<div class="list-content">
	<form class="form-inline">
		<div class="form-group">
			<label>Role</label> <select name="role">
				<option value="">All</option>
				<option <%=getSelectOption(request, "role", "Employee")%> value="Employee">Employee</option>
				<option <%=getSelectOption(request, "role", "Manager")%> value="Manager">Manager</option>
			</select>
		</div>

		<div class="form-group">
			<label>Name</label> 
			<input type="text" name="name" value="<%=request.getParameter("name") == null ? "" : request.getParameter("name") %>"
				placeholder="Search Name">
		</div>

		<button type="submit" class="btn icn-txt">
			<img src="<%=getSvg("search") %>" alt="Login" class="icon icn-svg" />
			Search
		</button>
		<a href="<%=getPath("/manager/employee/edit")%>" class="btn icn-txt">
			<img src="<%=getSvg("user-plus") %>" alt="Login" class="icon icn-svg" />
			Add New
		</a>
	</form>
	<table class="employee-list">
		<thead>
			<tr>
				<th>Code</th>
				<th>Name</th>
				<th>Role</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Registration</th>
				<th>Retire</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="list" scope="request" type="java.util.List<com.jdc.balance.model.domain.Employee>" />
			<% for (Employee emp : list) { %>
			<tr>
				<td><%=emp.getCode()%></td>
				<td><%=emp.getName()%></td>
				<td><%=emp.getRole()%></td>
				<td><%=emp.getEmail()%></td>
				<td><%=emp.getPhone()%></td>
				<td><%=getDateString(emp.getRegistrationDate())%></td>
				<td><%=getDateString(emp.getRetireDate())%></td>
				<td>
					<a href="<%=getPath("/manager/employee/edit?code=" + emp.getCode()) %>" >
						<img src="<%=getSvg("pencil") %>" alt="Login" class="icon icn-svg" />			
					</a>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
</div>
<%@page import="com.jdc.balance.model.domain.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

		<button type="submit" class="btn">Search</button>
		<a href="<%=getPath("/manager/employee/edit")%>" class="btn">Add
			New</a>
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
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="list" scope="request"
				type="java.util.List<com.jdc.balance.model.domain.Employee>"></jsp:useBean>
			<%
			for (Employee emp : list) {
			%>
			<tr>
				<td><%=emp.getCode()%></td>
				<td><%=emp.getName()%></td>
				<td><%=emp.getRole()%></td>
				<td><%=emp.getEmail()%></td>
				<td><%=emp.getPhone()%></td>
				<td><%=emp.getRegistrationDate()%></td>
				<td><%=emp.getRetireDate()%></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>

	<!-- To Get Absolute Path -->
	<%!String getPath(String path) {
		return getServletContext().getContextPath().concat(path);
	}%>
	
	<%!String getSelectOption(HttpServletRequest req, String name, String value) {
		String requestValue = req.getParameter(name);
		if(null != requestValue && requestValue.equals(value)) {
			return "selected='selected'";
		}
		return "";
	}
	%>
	
</div>
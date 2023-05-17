package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;
import com.jdc.balance.Destination;
import com.jdc.balance.model.domain.Employee.Role;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
	"/manager/employee/search", 
	"/manager/employee/edit", 
})
public class EmployeeController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch(path) {
		case "/manager/employee/search" -> search(req, resp); 
		case "/manager/employee/edit" -> edit(req, resp);
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Employee Search Action
		var role = req.getParameter("role");
		var name = req.getParameter("name");	
		
		var list = employeeService().search(role == null || role.isEmpty() ? null : Role.valueOf(role), name);
		req.setAttribute("list", list);
		
		navigate(new Destination.Builder()
			.req(req).resp(resp)
			.view("manager/employees")
			.pageTitle("Employee Management")
			.viewTitle("Employee")
			.activeMenu("employees").build());
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(isPostRequest(req)) {
			// TODO Employee Save Action
			redirect(resp, "/manager/employee/search");
		} else {
			var action = req.getParameter("id") == null ? "Add New Employee" : "Edit Employee";
			// TODO Employee Edit Action
			navigate(new Destination.Builder()
				.req(req).resp(resp)
				.view("manager/employee-edit")
				.pageTitle(action)
				.viewTitle(action)
				.activeMenu("employees").build());	
		}
	}
}
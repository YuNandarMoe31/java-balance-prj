package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;
import com.jdc.balance.Destination;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
	"/manager/employee/search", 
	"/manager/employee/edit", 
	"/manager/employee/save"
})
public class EmployeeController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch(path) {
		case "/manager/employee/search" -> search(req, resp); 
		case "/manager/employee/edit" -> edit(req, resp);
		case "/manager/employee/save" -> save(req, resp); 
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		navigate(new Destination.Builder()
			.req(req).resp(resp)
			.view("manager/employees")
			.pageTitle("Employee Management")
			.viewTitle("Employee")
			.activeMenu("employees").build());
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void save(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

}
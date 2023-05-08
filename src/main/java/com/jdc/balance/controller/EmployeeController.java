package com.jdc.balance.controller;

import com.jdc.balance.BaseController;

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
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) {
		switch(path) {
		case "/manager/employee/search" -> search(req, resp); 
		case "/manager/employee/edit" -> edit(req, resp);
		case "/manager/employee/save" -> save(req, resp); 
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void save(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

}
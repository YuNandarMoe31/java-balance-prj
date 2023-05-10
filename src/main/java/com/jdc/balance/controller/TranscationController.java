package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;
import com.jdc.balance.Destination;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
	"/employee/transaction/search",
	"/employee/transaction/details",
	"/employee/transaction/edit",
	"/employee/transaction/save",
	"/manager/transaction/approve"
})
public class TranscationController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch(path) {
		case "/employee/transaction/search" -> search(req, resp);
		case "/employee/transaction/details" -> showDetails(req, resp);
		case "/employee/transaction/edit" -> edit(req, resp);
		case "/employee/transaction/save" -> save(req, resp);
		case "/manager/transaction/approve" -> approve(req, resp);
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Destination.Builder builder = new Destination.Builder()
				.req(req)
				.resp(resp)
				.view("employee/transaction");			
			
		if("Income".equals(req.getParameter("type"))) {
			builder.pageTitle("Incomes").viewTitle("Daily Incomes").activeMenu("incomes");
		} else {
			builder.pageTitle("Expenses").viewTitle("Daily Expenses").activeMenu("expenses");
		}
		navigate(builder.build());
	}

	private void showDetails(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void save(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void approve(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}
}
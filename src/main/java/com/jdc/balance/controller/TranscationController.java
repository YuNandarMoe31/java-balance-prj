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
	"/manager/transaction/approve"
})
public class TranscationController extends BaseController {

	private static final long serialVersionUID = 1L;
	
	private static final String LIST_VIEW = "employee/transaction";
	private static final String DETAILS_VIEW = "employee/transaction-details";
	private static final String EDIT_VIEW = "employee/transaction-edit";
	
	private static final String SEARCH_ACTION = "/employee/transaction/search";
	private static final String DETAILS_ACTION = "/employee/transaction/details";
	private static final String EDIT_ACTION = "/employee/transaction/edit";
	private static final String APPROVE_ACTION = "/employee/transaction/approve";

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch(path) {
		case SEARCH_ACTION -> search(req, resp);
		case DETAILS_ACTION -> showDetails(req, resp);
		case EDIT_ACTION -> edit(req, resp);
		case APPROVE_ACTION -> approve(req, resp);
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Transaction Search Action
		navigate(destinationBuilder(LIST_VIEW, "Income".equals(req.getParameter("type")))
				.req(req).resp(resp)
				.build());
	}

	private void showDetails(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Transaction Details Action
		navigate(destinationBuilder(DETAILS_VIEW, "Income".equals(req.getParameter("type")))
				.req(req).resp(resp)
				.build());
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(isPostRequest(req)) {
			// TODO Transaction Save Action
			
			redirect(resp, "employee/transaction/details?id=");
		} else {
			// TODO Transaction Edit Action
			navigate(destinationBuilder(EDIT_VIEW, "Income".equals(req.getParameter("type")))
					.req(req).resp(resp)
					.build());
		}
	}

	private void approve(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// TODO Transaction Approve Action
		redirect(resp, "employee/transaction/search");
	}
	
	private Destination.Builder destinationBuilder(String view, boolean income) {
		Destination.Builder builder = new Destination.Builder()
				.view(view);			
			
		if(income) {
			builder.pageTitle("Incomes").viewTitle("Daily Incomes").activeMenu("incomes");
		} else {
			builder.pageTitle("Expenses").viewTitle("Daily Expenses").activeMenu("expenses");
		}
		return builder;
	}
}
package com.jdc.balance.controller;

import com.jdc.balance.BaseController;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
	"/manager/balance"
})
public class BalanceController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) {		
		search(req, resp);
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

}
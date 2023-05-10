package com.jdc.balance.controller;

import com.jdc.balance.BaseController;

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
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) {
		switch(path) {
		case "/employee/transaction/search" -> search(req, resp);
		case "/employee/transaction/details" -> showDetails(req, resp);
		case "/employee/transaction/edit" -> edit(req, resp);
		case "/employee/transaction/save" -> save(req, resp);
		case "/manager/transaction/approve" -> approve(req, resp);
		}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
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

	@Override
	protected String getPageTitle() {
		return "Transaction";
	}

	@Override
	protected String getViewTitle() {
		return "Daily Transaction";
	}

	@Override
	protected String getActiveMenu() {
		return "transactions";
	}

}
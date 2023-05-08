package com.jdc.balance.controller;

import com.jdc.balance.BaseController;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ 
	"/employee/home", 
	"/employee/change-pass", 
	"/employee/save-profile" 
})
public class UserController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) {
		switch (path) {
		case "/employee/home" -> loadHome(req, resp);
		case "/employee/change-pass" -> changePassword(req, resp);
		case "/employee/save-profile" -> saveProfile(req, resp);
		}
	}

	private void loadHome(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void changePassword(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

	private void saveProfile(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

}
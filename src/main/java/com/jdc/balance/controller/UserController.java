package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;

import jakarta.servlet.ServletException;
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
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch (path) {
		case "/employee/home" -> loadHome(req, resp);
		case "/employee/change-pass" -> changePassword(req, resp);
		case "/employee/save-profile" -> saveProfile(req, resp);
		}
	}

	private void loadHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Load Home
		navigate(req, resp, "employee/home");
	}

	private void changePassword(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Change Password
	}

	private void saveProfile(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Save Profile
	}

}
package com.jdc.balance.controller;

import java.io.IOException;

import com.jdc.balance.BaseController;
import com.jdc.balance.Destination;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({ 
	"/employee/home", 
	"/employee/change-pass", 
	"/employee/edit-profile",
	"/employee/save-profile"
})
public class UserController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch (path) {
		case "/employee/home" -> loadHome(req, resp);
		case "/employee/change-pass" -> changePassword(req, resp);
		case "/employee/edit-profile" -> editProfile(req, resp);
		case "/employee/save-profile" -> saveProfile(req, resp);
		}
	}

	private void loadHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Load Home
		navigate(new Destination.Builder()
			.req(req).resp(resp)
			.view("employee/home")
			.pageTitle("Home")
			.viewTitle("Dashboard")
			.activeMenu("home").build());
	}

	private void changePassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		navigate(new Destination.Builder()
			.req(req).resp(resp)
			.view("employee/change-password")
			.pageTitle("Password")
			.viewTitle("Change Password")
			.activeMenu("home").build());
	}
	
	private void editProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		navigate(new Destination.Builder()
			.req(req).resp(resp)
			.view("employee/edit-profile")
			.pageTitle("Profile")
			.viewTitle("Edit Profile")
			.activeMenu("home").build());
	}
	
	private void saveProfile(HttpServletRequest req, HttpServletResponse resp) {
		// TODO implement here
	}

}
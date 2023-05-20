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
	"/employee/edit-profile"
})
public class UserController extends BaseController {

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException {
		switch (path) {
		case "/employee/home" -> loadHome(req, resp);
		case "/employee/change-pass" -> changePassword(req, resp);
		case "/employee/edit-profile" -> editProfile(req, resp);
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
		var editPage = new Destination.Builder()
				.req(req).resp(resp)
				.view("employee/change-password")
				.pageTitle("Password")
				.viewTitle("Change Password")
				.activeMenu("home").build();
		
		if(isPostRequest(req))	{
			// Save Password
			super.handleBusinessError(() -> {
				var code = getLoginInfo(req).profile().getCode();
				
				super.userService().changePass(code, req.getParameter("old-pass"), req.getParameter("new-pass"), req.getParameter("confirm-pass"));
				
				var user = super.employeeService().findByCode(code);
				
				super.getLoginInfo(req).login(user);
				
				redirect(resp, "/employee/home");
			}, editPage);			
		} else {			
			navigate(editPage);
		}
	}
	
	private void editProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		var editView = new Destination.Builder()
				.req(req).resp(resp)
				.view("employee/edit-profile")
				.pageTitle("Profile")
				.viewTitle("Edit Profile")
				.activeMenu("home").build();
		
		if(isPostRequest(req)) {
			//  Save Profile
			this.handleBusinessError(() -> {
				var code = req.getParameter("code");
				
				var user = employeeService().findByCode(code);
				user.setName(req.getParameter("name"));
				user.setEmail(req.getParameter("email"));
				user.setPhone(req.getParameter("phone"));
				
				user = super.employeeService().save(user);
				
				this.getLoginInfo(req).login(user);
				
				redirect(resp, "/employee/home");
			}, editView);
		} else {
			navigate(editView);
		}
	}
}
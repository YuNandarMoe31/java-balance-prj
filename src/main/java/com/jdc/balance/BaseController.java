package com.jdc.balance;

import java.io.IOException;

import com.jdc.balance.security.LoginUser;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public abstract class BaseController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected abstract void process(HttpServletRequest req, HttpServletResponse resp, String path) throws ServletException, IOException;

	protected void navigate(HttpServletRequest req, HttpServletResponse resp, String view) throws ServletException, IOException {		
		var content = String.format("/jsp/view/%s.jsp", view);
		req.setAttribute("content", content);
		getServletContext().getRequestDispatcher("/jsp/template.jsp").forward(req, resp);
	}

	protected void redirect(HttpServletResponse resp, String path) throws IOException {
		resp.sendRedirect(getServletContext().getContextPath().concat(path));
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp, req.getServletPath());
	}
	
	protected LoginUser getLoginInfo(HttpServletRequest req) {
		LoginUser loginInfo = (LoginUser) req.getSession(true).getAttribute("loginInfo");
		
		if(null == loginInfo) {
			loginInfo = new LoginUser();
			req.getSession().setAttribute("loginInfo", loginInfo);
		}
		return loginInfo;
	}
}
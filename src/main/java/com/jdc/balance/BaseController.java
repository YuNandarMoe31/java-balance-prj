package com.jdc.balance;

import java.io.IOException;

import com.jdc.balance.security.LoginUser;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public abstract class BaseController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected abstract void process(HttpServletRequest req, HttpServletResponse resp, String path)
			throws ServletException, IOException;

	protected void navigate(Destination destination) throws ServletException, IOException {
		var content = String.format("/jsp/view/%s.jsp", destination.getView());
		destination.getReq().setAttribute("content", content);

		destination.getReq().setAttribute("page-title", destination.getPageTitile());
		destination.getReq().setAttribute("view-title", destination.getViewTitle());
		destination.getReq().setAttribute("active-menu",destination.getActiveMenu());

		getServletContext().getRequestDispatcher("/jsp/template.jsp").forward(destination.getReq(), destination.getResp());
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

		if (null == loginInfo) {
			loginInfo = new LoginUser();
			req.getSession().setAttribute("loginInfo", loginInfo);
		}
		return loginInfo;
	}

	protected void logout(HttpServletRequest req) {
		getLoginInfo(req).setLogin(false);
	}
	
	protected boolean isPostRequest(HttpServletRequest req) {
		return "POST".equals(req.getMethod());
	}
}
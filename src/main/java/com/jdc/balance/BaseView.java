package com.jdc.balance;

import org.apache.jasper.runtime.HttpJspBase;

import jakarta.servlet.http.HttpServletRequest;

public abstract class BaseView extends HttpJspBase {

	private static final long serialVersionUID = 1L;

	protected String getPath(String path) {
		return getServletContext().getContextPath().concat(path);
	}

	protected String getActiveClass(HttpServletRequest req, String menu) {
		return req.getAttribute("active-menu").equals(menu) ? "active" : "";
	}
	
	protected String getSelectOption(HttpServletRequest req, String name, String value) {
		String requestValue = req.getParameter(name);
		if(null != requestValue && requestValue.equals(value)) {
			return "selected='selected'";
		}
		return "";
	}
}

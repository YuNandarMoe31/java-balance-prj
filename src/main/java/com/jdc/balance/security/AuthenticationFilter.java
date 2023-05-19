package com.jdc.balance.security;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

@WebFilter({
	"/employee/*",
	"/manager/*"
})
public class AuthenticationFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		var httpReq = (HttpServletRequest)request;
		var session = httpReq.getSession(true);
		
		var loginInfo = (LoginUser)session.getAttribute("loginInfo");
		
		if(null == loginInfo || !loginInfo.isLogin()) {
			request.setAttribute("content", "/jsp/view/login.jsp");
			request.setAttribute("message", "You need to login again");
			request.getServletContext().getRequestDispatcher("/jsp/template.jsp").forward(request, response);
		} else {
			chain.doFilter(request, response);
		}
	
	}

}

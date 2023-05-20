package com.jdc.balance.security.filter;

import java.io.IOException;

import com.jdc.balance.security.LoginUser;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

@WebFilter(filterName = "authFilter")
public class AuthenticationFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		var session = ((HttpServletRequest) request).getSession();
		var loginInfo = (LoginUser)session.getAttribute("loginInfo");

		
		System.out.println("Authentication Filter");
		
		if(null == loginInfo || !loginInfo.isLogin()) {
			request.setAttribute("content", "/jsp/view/login.jsp");
			request.setAttribute("message", "You need to login again");
			request.getServletContext().getRequestDispatcher("/jsp/template.jsp").forward(request, response);
		} else {
			chain.doFilter(request, response);
		}
	
	}

}

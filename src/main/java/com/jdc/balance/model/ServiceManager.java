package com.jdc.balance.model;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ServiceManager implements ServletContextListener {
	
	public static final String EMPLOYEE_KEY = "com.jdc.employee";
	public static final String TRANSACTION_KEY = "com.jdc.transaction";
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// Create Services
		
		// Add to Application Scope
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// Save to File
		
	}
}

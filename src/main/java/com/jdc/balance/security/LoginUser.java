package com.jdc.balance.security;

import java.io.Serializable;

import com.jdc.balance.model.domain.Employee;
import com.jdc.balance.model.domain.Employee.Role;

public class LoginUser implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Employee employee;

	public boolean isLogin() {
		return null != employee;
	}
	
	public boolean isManager() {
		return null != employee && employee.getRole() == Role.Manager;
	}

	public void logout() {
		employee = null;
	}

	public void login(Employee employee) {
		this.employee = employee;
	}
}

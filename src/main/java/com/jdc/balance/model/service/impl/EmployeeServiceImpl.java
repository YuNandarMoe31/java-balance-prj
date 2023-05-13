package com.jdc.balance.model.service.impl;

import java.util.List;

import com.jdc.balance.model.domain.Employee;
import com.jdc.balance.model.domain.Employee.Role;
import com.jdc.balance.model.repo.EmployeeRepo;
import com.jdc.balance.model.service.EmployeeService;
import com.jdc.balance.model.service.UserService;

public class EmployeeServiceImpl implements EmployeeService, UserService {

	public EmployeeServiceImpl() {
	}
	
	private EmployeeRepo repo;

	@Override
	public void changePass(String code, String oldPass, String newPass) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String login(String code, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee findByCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Employee> search(Role role, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee save(Employee emp) {
		// TODO Auto-generated method stub
		return null;
	}

}
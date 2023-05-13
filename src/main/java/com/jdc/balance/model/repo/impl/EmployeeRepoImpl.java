package com.jdc.balance.model.repo.impl;

import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

import com.jdc.balance.model.domain.Employee;
import com.jdc.balance.model.repo.EmployeeRepo;

public class EmployeeRepoImpl implements EmployeeRepo {

	private Set<Employee> domain;

	private EmployeeCodeGenerator codeGenerator;

	@Override
	public List<Employee> search(Predicate<Employee> filter) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee create(Employee data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee update(Employee data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee findById(String code) {
		// TODO Auto-generated method stub
		return null;
	}

}
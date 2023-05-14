package com.jdc.balance.model.repo.impl;

import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

import com.jdc.balance.model.domain.Employee;
import com.jdc.balance.model.repo.EmployeeRepo;

public class EmployeeRepoImpl implements EmployeeRepo {

	private Map<String, Employee> domain;
	private EmployeeCodeGenerator codeGenerator;

	@Override
	public List<Employee> search(Predicate<Employee> filter) {	
		return domain.values().stream().filter(filter).toList();
	}

	@Override
	public Employee create(Employee data) {
		var code = codeGenerator.next();
		data.setCode(code);
		domain.put(code, data);
		return data;
	}

	@Override
	public Employee update(Employee data) {
		domain.put(data.getCode(), data);
		return data;
	}

	@Override
	public Employee findByCode(String code) {
		return domain.get(code);
	}
}
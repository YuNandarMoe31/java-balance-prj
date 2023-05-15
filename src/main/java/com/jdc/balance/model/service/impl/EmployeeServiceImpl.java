package com.jdc.balance.model.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.List;
import java.util.function.Predicate;

import com.jdc.balance.model.ServiceManager.LifeCycle;
import com.jdc.balance.model.domain.Employee;
import com.jdc.balance.model.domain.Employee.Role;
import com.jdc.balance.model.repo.EmployeeRepo;
import com.jdc.balance.model.repo.impl.EmployeeRepoImpl;
import com.jdc.balance.model.service.BalanceBusinessException;
import com.jdc.balance.model.service.EmployeeService;
import com.jdc.balance.model.service.UserService;

public class EmployeeServiceImpl implements EmployeeService, UserService, LifeCycle {

	private EmployeeRepo repo;
	private String storage;
	private static final String FILE_NAME = "employee.dat";

	public EmployeeServiceImpl(String storage) {
		this.storage = storage;
		repo = new EmployeeRepoImpl();
	}

	@Override
	public void changePass(String code, String oldPass, String newPass) {
		var employee = repo.findByCode(code);
		if (!oldPass.equals(employee.getPassword())) {
			throw new BalanceBusinessException("Please check your old password");
		}
		employee.setPassword(newPass);
		repo.update(employee);
	}

	@Override
	public Employee login(String code, String pass) {
		var employee = repo.findByCode(code);
		if (null == employee) {
			throw new BalanceBusinessException("Please check your login id");
		}
		if (!pass.equals(employee.getPassword())) {
			throw new BalanceBusinessException("Please check your password");
		}
		// TODO Check Registration & Retire Date
		return employee;
	}

	@Override
	public Employee findByCode(String code) {
		return repo.findByCode(code);
	}

	@Override
	public Employee save(Employee emp) {
		// Validation
		// Name
		if (null == emp.getName() || emp.getName().isEmpty()) {
			throw new BalanceBusinessException("Please enter employee name");
		}

		// Role
		if (null == emp.getRole()) {
			throw new BalanceBusinessException("Please set employee role");
		}

		// Email
		if (null == emp.getEmail() || emp.getEmail().isEmpty()) {
			throw new BalanceBusinessException("Please enter employee email");
		}

		// Registration Date
		if (null == emp.getRegistrationDate()) {
			throw new BalanceBusinessException("Please enter registration date");
		}

		if (null == emp.getCode()) {
			emp.setPassword(emp.getEmail());
			return repo.create(emp);
		}
		return repo.update(emp);
	}

	@Override
	public List<Employee> search(Role role, String name) {
		Predicate<Employee> filter = data -> true;
		if (null != role) {
			filter = filter.and(emp -> emp.getRole() == role);
		}
		if (null != name && name.isEmpty()) {
			filter = filter.and(emp -> emp.getName().toLowerCase().startsWith(name.toLowerCase()));
		}
		return repo.search(filter);
	}

	@Override
	public void load() {
		try(var input = new ObjectInputStream(new FileInputStream(new File(storage, FILE_NAME)))) {
			var object = input.readObject();
			
			if(null != object) {
				repo = (EmployeeRepo) object;
			}
		} catch (Exception e) {			
			e.printStackTrace();
		} 
	}

	@Override
	public void save() {
		try(var output = new ObjectOutputStream(new FileOutputStream(new File(storage, FILE_NAME)))) {
			output.writeObject(repo);
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
}
package com.jdc.balance.model.service;

import com.jdc.balance.model.domain.Employee;

public interface UserService {

	public void changePass(String code, String oldPass, String newPass, String confPass);

	public Employee login(String code, String pass);

}
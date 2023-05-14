package com.jdc.balance.model.repo.impl;

public class EmployeeCodeGenerator {

	private int id;
	
	public synchronized String next() {
		return String.format("EMP%03d", ++id);
	}

}
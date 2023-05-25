package com.jdc.balance.model.domain;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

public class Transaction implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;

	private String category;

	private boolean approved;

	private Employee employee;

	private List<TransactionClass> details;

	private LocalDate date;

	private Type type;

	public enum Type {
		Income, Expense
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public boolean isApproved() {
		return approved;
	}

	public void setApproved(boolean approved) {
		this.approved = approved;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public List<TransactionClass> getDetails() {
		return details;
	}

	public void setDetails(List<TransactionClass> details) {
		this.details = details;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}
	
}
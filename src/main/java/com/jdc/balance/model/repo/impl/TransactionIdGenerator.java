package com.jdc.balance.model.repo.impl;

public class TransactionIdGenerator {
	
	private int id;
	
	public synchronized int next() {	
		return ++id;
	}

}
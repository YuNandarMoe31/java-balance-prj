package com.jdc.balance.model.service.impl;

import java.util.Date;

import com.jdc.balance.model.domain.Transaction;
import com.jdc.balance.model.domain.Transaction.Type;
import com.jdc.balance.model.repo.TransactionRepo;
import com.jdc.balance.model.service.TransactionService;

public class TransactionServiceImpl implements TransactionService{

	public TransactionServiceImpl() {
	}
	
	private TransactionRepo repo;

	@Override
	public Transaction search(Type type, Date from, Date to, String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction save(Transaction date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void approve(int id) {
		// TODO Auto-generated method stub
		
	}


}